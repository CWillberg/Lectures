"""
Welle mit zwei Durchmessern – Statik und Biegelinie
====================================================
Aufgabe 1: gleichmäßige Linienlast q auf Mittelbereich [a, a+b]
Aufgabe 2: Einzellast F in der Mitte x = a + b/2

System: Festlager A bei x=0, Loslager B bei x=L=2a+b
Welle symmetrisch: Außenbereiche Länge a mit d1, Mittelbereich Länge b mit d2
"""

using Plots

# ── Parameter (anpassen nach Aufgabe) ──────────────────────────────────────
const a  = 0.15       # [m] Länge Außenbereich (je Seite)
const b  = 0.20       # [m] Länge Mittelbereich
const d1 = 0.030      # [m] Durchmesser Außenbereich
const d2 = 0.045      # [m] Durchmesser Mittelbereich
const q  = 8_000.0    # [N/m] Linienlast (Aufgabe 1)
const F  = 5_000.0    # [N]   Einzellast (Aufgabe 2)
const E  = 210e9      # [Pa]  Elastizitätsmodul (Stahl)

# ── Abgeleitete Größen ──────────────────────────────────────────────────────
const L  = 2a + b
const xF = a + b/2    # Position Einzellast

const I1 = π * d1^4 / 64
const I2 = π * d2^4 / 64
const W1 = π * d1^3 / 32
const W2 = π * d2^3 / 32

println("=" ^ 55)
println("Systemparameter")
println("=" ^ 55)
println("  L  = $(round(L*1000, digits=1)) mm")
println("  a  = $(round(a*1000, digits=1)) mm")
println("  b  = $(round(b*1000, digits=1)) mm")
println("  d1 = $(round(d1*1000, digits=1)) mm,  I1 = $(round(I1*1e9, digits=3)) mm⁴")
println("  d2 = $(round(d2*1000, digits=1)) mm,  I2 = $(round(I2*1e9, digits=3)) mm⁴")

# ── Hilfsfunktionen ─────────────────────────────────────────────────────────

"""Biegesteifigkeit an Position x"""
function EI(x)
    if a ≤ x ≤ a + b
        return E * I2
    else
        return E * I1
    end
end

"""Widerstandsmoment an Position x"""
function W(x)
    if a ≤ x ≤ a + b
        return W2
    else
        return W1
    end
end

# ── AUFGABE 1: Linienlast q ─────────────────────────────────────────────────
println("\n" * "=" ^ 55)
println("Aufgabe 1 – Linienlast q = $q N/m")
println("=" ^ 55)

Av1 = q * b / 2
Bv1 = q * b / 2
println("  Av = Bv = $(round(Av1, digits=2)) N  (Symmetrie)")

"""Querkraft Q₁(x) – Aufgabe 1"""
function Q1(x)
    if x < a
        return Av1
    elseif x ≤ a + b
        return Av1 - q * (x - a)
    else
        return -Bv1
    end
end

"""Biegemoment M₁(x) – Aufgabe 1"""
function M1(x)
    if x ≤ a
        return Av1 * x
    elseif x ≤ a + b
        return Av1 * x - 0.5 * q * (x - a)^2
    else
        return Bv1 * (L - x)
    end
end

Mmax1 = M1(xF)
println("  Mmax (x = $(round(xF*1000,digits=1)) mm) = $(round(Mmax1, digits=2)) Nm")
println("  σmax außen (x=a): $(round(M1(a)/W1/1e6, digits=2)) MPa")
println("  σmax Mitte :      $(round(Mmax1/W2/1e6, digits=2)) MPa")

# ── Biegelinie Aufgabe 1 via numerische Integration (Euler-Bernoulli) ────────
# w'' = -M(x) / (EI(x))
# Integrationskonstante C₁ aus w(0)=0 und w(L)=0 (Simpson-Regel)

function compute_biegeline(Mfunc, n=1000)
    xs   = LinRange(0, L, n)
    dx   = xs[2] - xs[1]
    κ    = [-Mfunc(x) / EI(x) for x in xs]      # Krümmung κ = w''

    # Einfachintegration → Neigung θ = w' (mit unbekannter Konstante C1)
    θ    = cumsum(κ) .* dx                        # θ[i] ≈ ∫₀ˣⁱ κ dx
    # Randkorrektur: w(L)=0  → C1 so, dass ∫₀ᴸ(C1 + θ)dx = 0 nicht nötig,
    # sondern: w(L) = 0  → C1 = -∫₀ᴸθ dx / L (linearer Anteil)
    # Zweite Integration → Durchbiegung
    w_raw = cumsum(θ) .* dx                       # noch ohne C1-Anteil
    # Randbedingungen: w(1)=0 per Konstruktion, C1 aus w(end)≈0
    C1   = -w_raw[end] / L
    θ   .+= C1
    w    = cumsum(θ) .* dx
    w  .-= w[1]                                   # w(0) = 0
    return collect(xs), w
end

xs1, w1 = compute_biegeline(M1)
wmax1   = maximum(abs.(w1))
println("  wmax ≈ $(round(wmax1*1000, digits=4)) mm")

# ── AUFGABE 2: Einzellast F ─────────────────────────────────────────────────
println("\n" * "=" ^ 55)
println("Aufgabe 2 – Einzellast F = $F N")
println("=" ^ 55)

Av2 = F / 2
Bv2 = F / 2
println("  Av = Bv = $(round(Av2, digits=2)) N")

"""Querkraft Q₂(x) – Aufgabe 2"""
function Q2(x)
    if x < xF
        return Av2
    else
        return -Bv2
    end
end

"""Biegemoment M₂(x) – Aufgabe 2"""
function M2(x)
    if x ≤ xF
        return Av2 * x
    else
        return Bv2 * (L - x)
    end
end

Mmax2 = M2(xF)
println("  Mmax (x = $(round(xF*1000,digits=1)) mm) = $(round(Mmax2, digits=2)) Nm")
println("  σmax außen (x=a): $(round(M2(a)/W1/1e6, digits=2)) MPa")
println("  σmax Mitte :      $(round(Mmax2/W2/1e6, digits=2)) MPa")

xs2, w2 = compute_biegeline(M2)
wmax2   = maximum(abs.(w2))
println("  wmax ≈ $(round(wmax2*1000, digits=4)) mm")

# ── Biegespannung ────────────────────────────────────────────────────────────
xs_plot = LinRange(0, L, 500)
σ1 = [M1(x) / W(x) / 1e6 for x in xs_plot]   # [MPa]
σ2 = [M2(x) / W(x) / 1e6 for x in xs_plot]

# ── Plots ────────────────────────────────────────────────────────────────────
theme(:default)
xs_mm = xs_plot .* 1000   # x-Achse in mm

# Aufgabe 1
p1a = plot(xs_mm, [Q1(x) for x in xs_plot],
    label="Q₁(x)", color=:steelblue, lw=2,
    xlabel="x [mm]", ylabel="Q [N]",
    title="Aufgabe 1 – Querkraft", legend=:topright, grid=true)
hline!(p1a, [0], color=:black, lw=0.7, label="")
vline!(p1a, [a*1000, (a+b)*1000], color=:gray, ls=:dash, lw=0.8, label="Querschnittsänderung")

p1b = plot(xs_mm, [M1(x) for x in xs_plot],
    label="M₁(x)", color=:crimson, lw=2,
    xlabel="x [mm]", ylabel="M [Nm]",
    title="Aufgabe 1 – Biegemoment", legend=:topright, grid=true,
    fill=0, fillalpha=0.12, fillcolor=:crimson)
vline!(p1b, [a*1000, (a+b)*1000], color=:gray, ls=:dash, lw=0.8, label="")

p1c = plot(xs_mm, σ1,
    label="σ₁(x)", color=:darkorange, lw=2,
    xlabel="x [mm]", ylabel="σ [MPa]",
    title="Aufgabe 1 – Biegespannung", legend=:topright, grid=true)
vline!(p1c, [a*1000, (a+b)*1000], color=:gray, ls=:dash, lw=0.8, label="")

p1d = plot(xs1 .* 1000, w1 .* 1000,
    label="w₁(x)", color=:darkgreen, lw=2,
    xlabel="x [mm]", ylabel="w [mm]",
    title="Aufgabe 1 – Biegelinie", legend=:bottomright, grid=true,
    fill=0, fillalpha=0.1, fillcolor=:darkgreen)
hline!(p1d, [0], color=:black, lw=0.7, label="")
vline!(p1d, [a*1000, (a+b)*1000], color=:gray, ls=:dash, lw=0.8, label="")

fig1 = plot(p1a, p1b, p1c, p1d, layout=(2,2), size=(900, 620),
    plot_title="Aufgabe 1 – Linienlast q = $q N/m",
    left_margin=5Plots.mm, bottom_margin=5Plots.mm)
savefig(fig1, "aufgabe1.png")
println("\nDiagramm gespeichert: aufgabe1.png")

# Aufgabe 2
p2a = plot(xs_mm, [Q2(x) for x in xs_plot],
    label="Q₂(x)", color=:steelblue, lw=2,
    xlabel="x [mm]", ylabel="Q [N]",
    title="Aufgabe 2 – Querkraft", legend=:topright, grid=true)
hline!(p2a, [0], color=:black, lw=0.7, label="")
vline!(p2a, [a*1000, xF*1000, (a+b)*1000], color=:gray, ls=:dash, lw=0.8,
    label="Übergänge / Last")

p2b = plot(xs_mm, [M2(x) for x in xs_plot],
    label="M₂(x)", color=:crimson, lw=2,
    xlabel="x [mm]", ylabel="M [Nm]",
    title="Aufgabe 2 – Biegemoment", legend=:topright, grid=true,
    fill=0, fillalpha=0.12, fillcolor=:crimson)
vline!(p2b, [a*1000, xF*1000, (a+b)*1000], color=:gray, ls=:dash, lw=0.8, label="")

p2c = plot(xs_mm, σ2,
    label="σ₂(x)", color=:darkorange, lw=2,
    xlabel="x [mm]", ylabel="σ [MPa]",
    title="Aufgabe 2 – Biegespannung", legend=:topright, grid=true)
vline!(p2c, [a*1000, xF*1000, (a+b)*1000], color=:gray, ls=:dash, lw=0.8, label="")

p2d = plot(xs2 .* 1000, w2 .* 1000,
    label="w₂(x)", color=:darkgreen, lw=2,
    xlabel="x [mm]", ylabel="w [mm]",
    title="Aufgabe 2 – Biegelinie", legend=:bottomright, grid=true,
    fill=0, fillalpha=0.1, fillcolor=:darkgreen)
hline!(p2d, [0], color=:black, lw=0.7, label="")
vline!(p2d, [a*1000, xF*1000, (a+b)*1000], color=:gray, ls=:dash, lw=0.8, label="")

fig2 = plot(p2a, p2b, p2c, p2d, layout=(2,2), size=(900, 620),
    plot_title="Aufgabe 2 – Einzellast F = $F N",
    left_margin=5Plots.mm, bottom_margin=5Plots.mm)
savefig(fig2, "aufgabe2.png")
println("Diagramm gespeichert: aufgabe2.png")
println("\nFertig.")