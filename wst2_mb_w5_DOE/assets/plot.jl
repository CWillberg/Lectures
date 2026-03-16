using Plots
using Statistics

# ── Daten ────────────────────────────────────────────────────────────────────
# Nr, T [°C], t [min], Medium, Härte HV
data = [
    (1,  800,  30, "Luft", 220),
    (2, 1000,  30, "Luft", 380),
    (3,  800,  90, "Luft", 235),
    (4, 1000,  90, "Luft", 395),
    (5,  800,  30, "Öl",   410),
    (6, 1000,  30, "Öl",   560),
    (7,  800,  90, "Öl",   490),
    (8, 1000,  90, "Öl",   620),
]

# ── Styling ──────────────────────────────────────────────────────────────────
# Farbe nach Abkühlmedium, Marker nach Haltezeit
color_map  = Dict("Luft" => :steelblue, "Öl" => :firebrick)
marker_map = Dict(30 => :circle, 90 => :square)
label_map  = Dict(
    ("Luft", 30) => "Luft, t=30 min",
    ("Luft", 90) => "Luft, t=90 min",
    ("Öl",   30) => "Öl,   t=30 min",
    ("Öl",   90) => "Öl,   t=90 min",
)

# x-Position: Versuchsnummer 1–8
x = [d[1] for d in data]
y = [d[5] for d in data]

# ── Statistik ─────────────────────────────────────────────────────────────────
all_hv  = [d[5] for d in data]
hv_luft = [d[5] for d in data if d[4] == "Luft"]
hv_öl   = [d[5] for d in data if d[4] == "Öl"]
hv_t30  = [d[5] for d in data if d[3] == 30]
hv_t90  = [d[5] for d in data if d[3] == 90]
hv_800  = [d[5] for d in data if d[2] == 800]
hv_1000 = [d[5] for d in data if d[2] == 1000]

μ   = mean(all_hv);  σ = std(all_hv)
e_M = mean(hv_öl)   - mean(hv_luft)
e_t = mean(hv_t90)  - mean(hv_t30)
e_T = mean(hv_1000) - mean(hv_800)

# ── Plot ──────────────────────────────────────────────────────────────────────
p = plot(
    title          = "DoE – Härte HV: alle 8 Versuchspunkte (2³-Plan)",
    titlefontsize  = 12,
    xlabel         = "Versuchs-Nr.",
    ylabel         = "Härte HV",
    xticks         = (1:8, string.(1:8)),
    xlims          = (0.4, 9.2),
    ylims          = (150, 700),
    legend         = :topleft,
    legendfontsize = 8,
    guidefontsize  = 11,
    tickfontsize   = 10,
    framestyle     = :box,
    grid           = true,
    gridalpha      = 0.25,
    size           = (780, 500),
    dpi            = 150,
    background_color = :white,
)

# Punkte – jede der 4 Gruppen (Medium × Zeit) als eigene Serie
seen = Set()
for (nr, T, t, med, hv) in data
    key = (med, t)
    lbl = key ∈ seen ? "" : label_map[key]
    push!(seen, key)
    scatter!(p, [nr], [hv],
        marker            = marker_map[t],
        markersize        = 11,
        color             = color_map[med],
        label             = lbl,
        markerstrokewidth = 1,
        markerstrokecolor = :white,
        alpha             = 0.92,
    )
    # Beschriftung: HV-Wert oben, Bedingung unten
    annotate!(p, nr, hv + 16,
        text("$(hv)", 8, color_map[med], :center))
    annotate!(p, nr, hv - 24,
        text("$(T)°C", 7, :gray40, :center))
end

# Gesamtmittelwert als gestrichelte Linie
hline!(p, [μ],
    color     = :gray50,
    linewidth = 1.5,
    linestyle = :dash,
    label     = "MW gesamt $(round(Int,μ)) HV",
)

# Statistik-Box
stats = "MW = $(round(Int,μ)) ± $(round(Int,σ)) HV\n" *
        "Effekt Medium (Öl−Luft): +$(round(Int,e_M)) HV\n" *
        "Effekt Zeit  (90−30 min): +$(round(Int,e_t)) HV\n" *
        "Effekt Temp (1000−800°C): +$(round(Int,e_T)) HV"
annotate!(p, 8.9, 195, text(stats, 7, :gray20, :right))

savefig(p, "doe_plot.png")
println("✓ Gespeichert: doe_plot.png")