using Plots

# Daten: T × Abkühlmedium Wechselwirkungsdiagramm
T = [850, 950]

haerte_luft = [380, 395]   # Luft, T=850 und T=950
haerte_oel  = [410, 560]   # Öl,  T=850 und T=950

# Fehlerbalken (±1s, realistisch: Öl streut stärker)
err_luft = [12, 10]
err_oel  = [18, 22]

# Plot
p = plot(
    T, haerte_luft,
    ribbon     = err_luft,   # Fehlerband
    yerror     = err_luft,
    label      = "Luft",
    marker     = :circle,
    markersize = 8,
    linewidth  = 2.5,
    color      = :steelblue,
    fillalpha  = 0.15,
)

plot!(p,
    T, haerte_oel,
    ribbon     = err_oel,
    yerror     = err_oel,
    label      = "Öl",
    marker     = :circle,
    markersize = 8,
    linewidth  = 2.5,
    color      = :firebrick,
    fillalpha  = 0.15,
)

# Achsen & Beschriftung
plot!(p,
    xlabel      = "Austenitisiertemperatur T [°C]",
    ylabel      = "Härte [HV]",
    title       = "Wechselwirkung T × Abkühlmedium",
    xticks      = ([850, 950], ["850 °C", "950 °C"]),
    xlims       = (820, 980),
    ylims       = (300, 650),
    legend      = :topleft,
    grid        = true,
    gridalpha   = 0.3,
    framestyle  = :box,
    fontfamily  = "sans-serif",
    titlefontsize  = 14,
    guidefontsize  = 12,
    tickfontsize   = 11,
    legendfontsize = 11,
    size        = (700, 480),
    dpi         = 150,
    background_color = :white,
)

# Datenpunkte beschriften
annotate!(p, 855, haerte_luft[1] - 22, text("$(haerte_luft[1]) ± $(err_luft[1]) HV", 9, :steelblue, :left))
annotate!(p, 955, haerte_luft[2] + 14, text("$(haerte_luft[2]) ± $(err_luft[2]) HV", 9, :steelblue, :left))
annotate!(p, 855, haerte_oel[1]  + 22, text("$(haerte_oel[1]) ± $(err_oel[1]) HV",   9, :firebrick, :left))
annotate!(p, 955, haerte_oel[2]  + 26, text("$(haerte_oel[2]) ± $(err_oel[2]) HV",   9, :firebrick, :left))

savefig(p, "interaction_plot_T_medium.png")
println("Gespeichert: interaction_plot_T_medium.png")