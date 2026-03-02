using Plots

default(fontfamily="DejaVu Sans", tickfontsize=9, guidefontsize=10,
        legendfontsize=9, titlefontsize=11)

# -------------------------------------------------------
# Parameter
# -------------------------------------------------------
E      = 200000.0   # MPa
σ_y    = 300.0      # MPa Streckgrenze
H      = 20000.0    # MPa plastischer Verfestigungsmodul (Typ 3)

# Belastungspunkte
ε_load = 0.006      # Umkehrpunkt (über Streckgrenze)

# -------------------------------------------------------
# Pfeil-Hilfsfunktion
# -------------------------------------------------------
function arrow!(p, x1, y1, x2, y2; color=:black, lw=1.5)
    plot!(p, [x1, x2], [y1, y2], lw=lw, color=color, label=false,
          arrow=(:closed, :head, 0.4, 0.3))
end

# -------------------------------------------------------
# Typ 1 – Ideal elastisch
# Be- und Entlastung laufen auf gleicher Linie
# -------------------------------------------------------
ε_max1 = ε_load
ε1_load   = [0.0, ε_max1]
σ1_load   = E .* ε1_load
ε1_unload = [ε_max1, 0.0]
σ1_unload = E .* ε1_unload

p1 = plot(title="Ideal elastisch", xlabel="ε", ylabel="σ [MPa]",
          legend=false, grid=true, framestyle=:box,
          xlims=(-0.0005, 0.008), ylims=(-50, 1400))

# Belastung
plot!(p1, ε1_load, σ1_load, lw=2.5, color=:steelblue)
# Entlastung (Pfeil zurück)
arrow!(p1, ε_max1, E*ε_max1, 0.0, 0.0, color=:steelblue, lw=2.5)
# Pfeilrichtungen
annotate!(p1, 0.0022, 600, text("Be-\nlastung", 8, :center, :steelblue))
annotate!(p1, 0.0040, 700, text("Ent-\nlastung", 8, :center, :steelblue))

# -------------------------------------------------------
# Typ 2 – Ideal elastoplastisch
# Belastung: linear bis σ_y, dann Plateau
# Entlastung: parallel zu E, bleibt plastische Dehnung
# -------------------------------------------------------
ε_y2   = σ_y / E
ε_max2 = ε_load
ε_pl2  = ε_max2 - σ_y / E   # plastische Dehnung

ε2_load   = [0.0, ε_y2, ε_max2]
σ2_load   = [0.0, σ_y,  σ_y  ]
ε2_unload = [ε_max2, ε_pl2]
σ2_unload = [σ_y,    0.0 ]

p2 = plot(title="Ideal elastoplastisch", xlabel="ε", ylabel="σ [MPa]",
          legend=false, grid=true, framestyle=:box,
          xlims=(-0.0005, 0.008), ylims=(-50, 500))

plot!(p2, ε2_load,   σ2_load,   lw=2.5, color=:darkorange)
arrow!(p2, ε_max2, σ_y, ε_pl2, 0.0, color=:darkorange, lw=2.5)

# Gestrichelte Hilfslinien
plot!(p2, [0.0, ε_y2], [σ_y, σ_y], lw=1, color=:gray, linestyle=:dash, label=false)
plot!(p2, [ε_y2, ε_y2], [0.0, σ_y], lw=1, color=:gray, linestyle=:dash, label=false)
plot!(p2, [ε_pl2, ε_pl2], [0.0, 0.0], lw=1, color=:gray, linestyle=:dash, label=false)

# Annotationen
annotate!(p2, -0.0002, σ_y+15, text("σ_y", 8, :right, :darkorange))
annotate!(p2, ε_pl2, -30, text("ε_pl", 8, :center, :gray))
annotate!(p2, ε_y2/2, σ_y/2-30, text("Belastung", 8, :center, :darkorange))
annotate!(p2, ε_max2-0.0003, σ_y/2+30, text("Entlastung\n(Steigung E)", 8, :right, :darkorange))

# -------------------------------------------------------
# Typ 3 – Elastisch mit linearer Verfestigung
# Belastung: linear bis σ_y, dann mit Steigung H
# Entlastung: parallel zu E, bleibt plastische Dehnung
# -------------------------------------------------------
ε_y3   = σ_y / E
ε_max3 = ε_load
σ_max3 = σ_y + H * (ε_max3 - ε_y3)
ε_pl3  = ε_max3 - σ_max3 / E

ε3_load   = [0.0,   ε_y3,   ε_max3]
σ3_load   = [0.0,   σ_y,    σ_max3]
ε3_unload = [ε_max3, ε_pl3]
σ3_unload = [σ_max3, 0.0  ]

p3 = plot(title="Elastisch-linear plastisch\n(mit Verfestigung)", xlabel="ε", ylabel="σ [MPa]",
          legend=false, grid=true, framestyle=:box,
          xlims=(-0.0005, 0.008), ylims=(-50, 700))

plot!(p3, ε3_load,   σ3_load,   lw=2.5, color=:seagreen)
arrow!(p3, ε_max3, σ_max3, ε_pl3, 0.0, color=:seagreen, lw=2.5)

# Gestrichelte Hilfslinien
plot!(p3, [0.0, ε_y3], [σ_y, σ_y],        lw=1, color=:gray, linestyle=:dash, label=false)
plot!(p3, [ε_y3, ε_y3], [0.0, σ_y],       lw=1, color=:gray, linestyle=:dash, label=false)
plot!(p3, [0.0, ε_max3], [σ_max3, σ_max3], lw=1, color=:gray, linestyle=:dash, label=false)
plot!(p3, [ε_pl3, ε_pl3], [0.0, 15.0],    lw=1, color=:gray, linestyle=:dash, label=false)

# Steigungsannotation H
mid_ε = (ε_y3 + ε_max3) / 2
mid_σ = (σ_y + σ_max3) / 2
annotate!(p3, mid_ε + 0.0003, mid_σ - 40, text("Steigung H", 8, :left, :seagreen))
annotate!(p3, -0.0002, σ_y+15,    text("σ_y",   8, :right, :gray))
annotate!(p3, -0.0002, σ_max3+15, text("σ_max",  8, :right, :seagreen))
annotate!(p3, ε_pl3, -30, text("ε_pl", 8, :center, :gray))
annotate!(p3, ε_max3+0.0001, σ_max3/2, text("Entlastung\n(Steigung E)", 8, :left, :seagreen))

# E-Steigung annotieren (Typ 3)
ε_ann = [0.0005, 0.0015]
σ_ann = E .* ε_ann
plot!(p3, ε_ann, σ_ann .* 0 .+ 50, lw=0, label=false)
annotate!(p3, 0.001, 130, text("Steigung E", 8, :left, :seagreen))

# -------------------------------------------------------
# Kombinierter Plot (1×3)
# -------------------------------------------------------
pall = plot(p1, p2, p3,
    layout=(1, 3),
    size=(1400, 500),
    margin=10Plots.mm)

savefig(pall, "materialmodelle.png")
savefig(p1,   "typ_ideal_elastisch.png")
savefig(p2,   "typ_ideal_elastoplastisch.png")
savefig(p3,   "typ_elastisch_verfestigung.png")

println("Fertig.")
display(pall)