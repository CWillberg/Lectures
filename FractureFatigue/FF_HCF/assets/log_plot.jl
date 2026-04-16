using Plots

# Parameters
H0 = 1e6          # total cycles
σ_max = 300.0     # MPa

σ_a = range(10, σ_max, length=500)

p_values = [1, 2, 3, 5, Inf]
labels   = ["p = 1", "p = 2", "p = 3", "p = 5", "p → ∞"]
colors   = [:steelblue, :darkorange, :green, :purple, :red]

plt = plot(
    xlabel = "Stress amplitude σ_a [MPa]",
    ylabel = "Cumulative frequency H(σ_a)",
    title  = "Load Spectrum — Cumulative Frequency Distribution",
    xscale = :log10,
    yscale = :log10,
    xlims  = (10, σ_max),
    ylims  = (1, H0),
    legend = :topright,
    grid   = true,
    minorgrid = true,
    framestyle = :box,
    size = (800, 500),
    dpi  = 150,
)

for (p, lab, col) in zip(p_values, labels, colors)
    if isinf(p)
        # Block programme: all cycles at σ_max → vertical line
        vline!(plt, [σ_max], label=lab, color=col, lw=2, linestyle=:dash)
    else
        H = H0 .* (σ_a ./ σ_max) .^ (-p)
        # only plot where H >= 1
        mask = H .<= H0
        plot!(plt, σ_a[mask], H[mask], label=lab, color=col, lw=2)
    end
end

# Reference lines
hline!(plt, [H0], color=:black, lw=1, linestyle=:dot, label="H₀ = 10⁶")

display(plt)
savefig(plt, "load_spectrum.png")
println("Saved to load_spectrum.png")