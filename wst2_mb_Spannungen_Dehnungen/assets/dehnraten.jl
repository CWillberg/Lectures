using Plots

# Kurve: linear bis ε_y, dann tangential angeschlossene Parabel die leicht abfällt
# Tangentialbedingungen bei ε_y:
#   σ_p(ε_y) = E*ε_y = σ_max   (Stetigkeit)
#   σ_p'(ε_y) = E               (gleiche Steigung)
# Ansatz: σ_p(ε) = σ_max + E*(ε - ε_y) - a*(ε - ε_y)^2
#   => σ_p'(ε_y) = E ✓, σ_p(ε_y) = σ_max ✓
#   a > 0 sorgt für Abfall nach dem Maximum
# Maximum bei: d/dε = E - 2a*(ε-ε_y) = 0 => ε_peak = ε_y + E/(2a)
# Kurve endet bei ε_end = ε_y + ε_extra

function kurve(ε_vec, E, σ_max, ε_extra)
    ε_y   = σ_max / E
    ε_end = ε_y + ε_extra
    # wähle a so dass Maximum bei ε_y + ε_extra/2 liegt (Mitte des Nachbereichs)
    a = E / (2 * (ε_extra/2))   # => ε_peak = ε_y + ε_extra/2
    return [e <= ε_y   ? E * e :
            e <= ε_end ? σ_max + E*(e - ε_y) - a*(e - ε_y)^2 :
            NaN
            for e in ε_vec]
end

ε = range(0.0, 0.10, length=3000)
ε_vec = collect(ε)

σ1 = kurve(ε_vec, 100.0, 2.0, 0.012)
σ2 = kurve(ε_vec, 110.0, 3.0, 0.010)
σ3 = kurve(ε_vec, 120.0, 4.2, 0.008)

p = plot(
    size = (820, 540),
    xlabel = "Dehnung ε",
    ylabel = "Spannung σ (normiert)",
    title  = "Einfluss der Dehnrate auf das Spannungs-Dehnungs-Verhalten",
    legend = :topright,
    grid   = true,
    framestyle = :box,
    xlims  = (0.0, 0.065),
    ylims  = (0.0, 5.5)
)

plot!(p, ε_vec, σ1, lw=2.5, color=:blue,   label="ε̇₁ (langsam)")
plot!(p, ε_vec, σ2, lw=2.5, color=:orange, label="ε̇₂ (mittel)")
plot!(p, ε_vec, σ3, lw=2.5, color=:red,    label="ε̇₃ (schnell),  ε̇₃ > ε̇₂ > ε̇₁")

savefig(p, "dehnraten.png")
println("Plot gespeichert: dehnraten.png")

display(p)