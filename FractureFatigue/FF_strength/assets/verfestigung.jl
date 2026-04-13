using Plots
using Measures

E       = 20_000.0
σ_split = 250.0
ε_split = σ_split / E

function kurve_typisch(ε)
    εRm    = 0.2
    Rm     = 380.0
    εBruch = 0.32
    if ε ≤ ε_split
        return E * ε
    elseif ε ≤ εBruch
        t = (ε - ε_split) / (εRm - ε_split)
        return σ_split + (Rm - σ_split) * (1 - (1 - t)^2)
    else
        return NaN
    end
end

function kurve_verfestigt(ε)
    εRm    = 0.15
    Rm     = 500.0
    εBruch = 0.24
    es = 1.2 * ε_split
    if ε ≤ es
        return E * ε
    elseif ε ≤ εBruch
        t = (ε - es) / (εRm - es)
        return 1.2*σ_split + (Rm - 1.2*σ_split) * (1 - (1 - t)^2)
    else
        return NaN
    end
end

ε_lin = range(0, ε_split, length=500)
ε1    = range(ε_split, 0.425, length=2000)
ε2    = range(ε_split, 0.245, length=2000)

σ_lin = E .* ε_lin
σ1    = kurve_typisch.(ε1)
σ2    = kurve_verfestigt.(ε2)

p = plot(
    ε_lin .* 100, σ_lin,
    label        = false,
    color        = :black,
    linewidth    = 3.0,
    xlabel       = "Dehnung ε",
    ylabel       = "Spannung σ",
    title        = "Einfluss der Verformungsverfestigung",
    legend       = :topright,
    xlims        = (0, 46),
    ylims        = (0, 620),
    grid         = false,
    framestyle   = :axes,
    size         = (800, 550),
    dpi          = 150,
    xticks       = false,
    yticks       = false,
    tickfontsize = 1,
    guidefontsize = 16,
    titlefontsize = 16,
    legendfontsize = 13,
    left_margin  = 10mm,
    bottom_margin = 8mm,
)

plot!(p,
    ε_lin .* 100, σ_lin,
    label     = false,
    color     = :darkorange,
    linewidth = 1.5,
    linestyle = :dash,
)

plot!(p,
    ε1 .* 100, σ1,
    label     = "Typische Kurve",
    color     = :black,
    linewidth = 2.5,
)

plot!(p,
    ε2 .* 100, σ2,
    label     = "Verformungsverfestigte Kurve",
    color     = :darkorange,
    linewidth = 2.5,
)

scatter!(p,
    [ε_split * 100], [σ_split],
    color       = :gray40,
    markersize  = 5,
    markershape = :circle,
    label       = false,
)

annotate!(p, 21, 395, text("Rₘ",  14, :black,      :left))
annotate!(p, 16, 515, text("Rₘ*", 14, :darkorange, :left))

savefig(p, "verformungsverfestigung.png")
display(p)
println("Gespeichert.")