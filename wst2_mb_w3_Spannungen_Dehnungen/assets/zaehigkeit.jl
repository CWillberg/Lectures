using Plots

# Kurve: linear bis σ_max, dann leicht abfallend weiterlaufen und abbrechen
function kurve(ε_vec, E, σ_max, ε_extra)
    ε_y  = σ_max / E
    ε_end = ε_y + ε_extra
    # nach Maximum: kleiner quadratischer Abfall (sanft)
    # σ(ε) = σ_max - k*(ε - ε_y)^2  mit k so dass Kurve bei ε_end endet (nicht bei 0)
    k = σ_max * 0.15 / ε_extra^2   # fällt ca. 15% von σ_max ab
    return [e <= ε_y   ? E * e :
            e <= ε_end ? σ_max - k*(e - ε_y)^2 :
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