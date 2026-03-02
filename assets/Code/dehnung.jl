using Plots

# Streckungsverhältnis λ = l/l₀
λ = range(0.5, 3.0, length=500)

# Lineare (technische) Dehnung: ε = (l - l₀) / l₀ = λ - 1
ε_linear = λ .- 1

# Logarithmische (wahre) Dehnung: ε_log = ln(λ)
ε_log = log.(λ)

# Plot
p = plot(
    λ, ε_linear,
    label = "Lineare Dehnung  ε = λ - 1",
    lw = 2,
    color = :blue,
    xlabel = "Streckungsverhältnis λ = l/l₀",
    ylabel = "Dehnung",
    title = "Lineare vs. Logarithmische Dehnung",
    legend = :topleft,
    grid = true,
    framestyle = :box
)

plot!(
    p, λ, ε_log,
    label = "Logarithmische Dehnung  ε_log = ln(λ)",
    lw = 2,
    color = :red,
    linestyle = :dash
)

# Referenzlinie bei λ = 1 (undeformierter Zustand)
vline!(p, [1.0], label = "λ = 1 (undeformiert)", color = :gray, linestyle = :dot, lw = 1)
hline!(p, [0.0], label = nothing, color = :black, lw = 0.5)

# Annotationen
annotate!(p, 2.5, 0.7, text("ln(λ)", :red, 10))
annotate!(p, 2.5, 1.5, text("λ - 1", :blue, 10))

savefig(p, "dehnungen.png")
println("Plot gespeichert: dehnungen.png")

display(p)