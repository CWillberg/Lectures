# Strahlung Diagramm – Durchstrahlbare Wanddicke bei Stahl
# Benötigte Pakete: Plots (]add Plots)
# Ausführen: julia strahlung_diagramm.jl

using Plots
using Plots.PlotMeasures

# ── Hilfsfunktion: lineare Interpolation ──────────────────────────────────────
function lin_interp(xs, ys, x)
    for i in 1:(length(xs) - 1)
        if xs[i] <= x <= xs[i+1]
            t = (x - xs[i]) / (xs[i+1] - xs[i])
            return ys[i] + t * (ys[i+1] - ys[i])
        end
    end
    return NaN
end

# ── Stützstellen (Quantenenergie in MeV) ──────────────────────────────────────
energy = [0.1, 0.15, 0.2, 0.3, 0.4, 0.5, 0.6, 0.8, 1.0, 1.5, 2.0, 3.0, 4.0, 6.0, 8.0, 10.0]

# Hundertstelwertsdicke  – Intensität fällt auf  1 %
curve1 = [5, 12, 25, 60, 95, 115, 130, 150, 160, 185, 210, 210, 205, 195, 185, 175]

# Zehntelwertsdicke      – Intensität fällt auf 10 %
curve2 = [2, 5, 10, 22, 38, 50, 60, 75, 85, 100, 110, 110, 105, 100, 98, 95]

# Halbwertsdicke         – Intensität fällt auf 50 %
curve3 = [0.5, 1.5, 3, 7, 12, 17, 20, 25, 28, 32, 35, 36, 35, 33, 31, 30]

# ── Blaue Füllfläche (Stahlbereich) ───────────────────────────────────────────
e_fill     = range(0.5, 10.0; length=300)
upper_fill = [lin_interp(energy, curve1, e) for e in e_fill]

lower_e = [2.0, 3.0, 4.0, 6.0, 8.0, 10.0]
lower_v = [0.0, 5.0, 20.0, 40.0, 60.0, 70.0]
lower_fill = [e < 2.0 ? 0.0 : lin_interp(lower_e, lower_v, e) for e in e_fill]

# ── Plot ──────────────────────────────────────────────────────────────────────
p = plot(
    xscale           = :log10,
    xlims            = (0.1, 10.0),
    ylims            = (0, 170),
    xlabel           = "Quantenenergie →   [MeV]",
    ylabel           = "Durchstrahlbare Wanddicke [mm]",
    xticks           = ([0.1, 0.2, 0.5, 1, 2, 5, 10],
                        ["0,1", "0,2", "0,5", "1", "2", "5", "10"]),
    legend           = :topright,
    grid             = false,
    size             = (820, 660),
    margin           = 15mm,
    background_color = :white,
    labelfontsize    = 11,
    tickfontsize     = 10,
)

# Blaue Fläche
plot!(p, collect(e_fill), upper_fill;
    fillrange  = lower_fill,
    fillcolor  = :skyblue,
    fillalpha  = 0.55,
    linewidth  = 0,
    label      = "Durchstrahlbarer Wandstärkenbereich bei Stahl",
)

# Kurve 1 – Hundertstelwertsdicke
plot!(p, energy, curve1;
    linewidth = 2.5, linestyle = :solid,  color = :black,
    label = "① Hundertstelwertsdicke (Intensität → 1 %)",
)

# Kurve 2 – Zehntelwertsdicke
plot!(p, energy, curve2;
    linewidth = 2.0, linestyle = :dashdot, color = :black,
    label = "② Zehntelwertsdicke (Intensität → 10 %)",
)

# Kurve 3 – Halbwertsdicke
plot!(p, energy, curve3;
    linewidth = 1.5, linestyle = :dash,    color = :black,
    label = "③ Halbwertsdicke (Intensität → 50 %)",
)

# Vertikale gestrichelte Linien für Strahler-Isotope
for (name, xpos) in [("Ir", 0.35), ("Cs", 0.46), ("Co", 0.60)]
    vline!(p, [xpos]; color = :gray, linestyle = :dash, linewidth = 1.0, label = "")
    annotate!(p, xpos, 222, text(name, 9, :center, :black))
end

# Beschriftungen der Kurven
annotate!(p, 6.5, 188, text("①", 13, :center, :black))
annotate!(p, 6.5,  99, text("②", 13, :center, :black))
annotate!(p, 6.5,  34, text("③", 13, :center, :black))

# Beschriftungen der Gerätebereiche (oben)
annotate!(p, 0.175, 226, text("Röntgen-\nröhren",       8, :center, :black))
annotate!(p, 0.62,  226, text("Gamma-\ngeräte",         8, :center, :black))
annotate!(p, 4.0,   226, text("Teilchen-\nbeschleuniger", 8, :center, :black))

# ── Speichern ─────────────────────────────────────────────────────────────────
savefig(p, "strahlung_diagramm.png")
println("Diagramm gespeichert: strahlung_diagramm.png")