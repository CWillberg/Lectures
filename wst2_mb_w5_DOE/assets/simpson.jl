using Plots

# ── Daten ──────────────────────────────────────────────────────────────────
# Ofen A: 60 niedriglegiert (490 MPa), 40 hochlegiert (660 MPa)
# Ofen B: 10 niedriglegiert (510 MPa), 90 hochlegiert (680 MPa)

rm_A_niedrig = 490.0;  n_A_niedrig = 60
rm_A_hoch    = 660.0;  n_A_hoch    = 40
rm_B_niedrig = 510.0;  n_B_niedrig = 10
rm_B_hoch    = 680.0;  n_B_hoch    = 90

gesamt_A = (rm_A_niedrig * n_A_niedrig + rm_A_hoch * n_A_hoch) / (n_A_niedrig + n_A_hoch)
gesamt_B = (rm_B_niedrig * n_B_niedrig + rm_B_hoch * n_B_hoch) / (n_B_niedrig + n_B_hoch)

# ── Farben ─────────────────────────────────────────────────────────────────
col_A = RGB(0.20, 0.47, 0.67)   # Stahlblau
col_B = RGB(0.75, 0.22, 0.17)   # Ziegelrot

# ── Layout: 1 Zeile, 2 Spalten ─────────────────────────────────────────────
p1 = plot(; title="Nach Legierung (stratifiziert)",
            titlefontsize=12, xlabel="Ofen", ylabel="Rm [MPa]",
            xticks=([1, 2], ["Ofen A", "Ofen B"]),
            xlims=(0.5, 2.5), ylims=(440, 730),
            legend=:right, grid=true, gridalpha=0.25,
            framestyle=:box, fontfamily="sans-serif",
            guidefontsize=11, tickfontsize=10, legendfontsize=10,
            background_color=:white)

# Niedriglegiert
plot!(p1, [1, 2], [rm_A_niedrig, rm_B_niedrig],
      label="niedriglegiert", color=col_A,
      marker=:circle, markersize=10, linewidth=2.5)

# Hochlegiert
plot!(p1, [1, 2], [rm_A_hoch, rm_B_hoch],
      label="hochlegiert", color=col_B,
      marker=:diamond, markersize=10, linewidth=2.5)

# Pfeile: Ofen B > Ofen A bei beiden Gruppen
annotate!(p1, 1.5, rm_B_niedrig + 16,
          text("B > A  (+20)", 9, :center, col_A))
annotate!(p1, 1.5, rm_B_hoch + 16,
          text("B > A  (+20)", 9, :center, col_B))

# Datenpunkte beschriften
for (x, y, lbl, c) in [
    (1, rm_A_niedrig, "490", col_A), (2, rm_B_niedrig, "510", col_A),
    (1, rm_A_hoch,    "660", col_B), (2, rm_B_hoch,    "680", col_B)]
    annotate!(p1, x, y - 18, text(lbl, 9, :center, c))
end

# ── Rechte Seite: Gesamtmittelwert ─────────────────────────────────────────
p2 = plot(; title="Gesamtmittelwert (naiv)",
            titlefontsize=12, xlabel="Ofen", ylabel="Rm [MPa]",
            xticks=([1, 2], ["Ofen A", "Ofen B"]),
            xlims=(0.5, 2.5), ylims=(440, 730),
            legend=false, grid=true, gridalpha=0.25,
            framestyle=:box, fontfamily="sans-serif",
            guidefontsize=11, tickfontsize=10,
            background_color=:white)

bar!(p2, [1, 2], [gesamt_A, gesamt_B],
     bar_width=0.5,
     color=[col_A, col_B],
     alpha=0.75,
     linecolor=:white)

# Gesamtwerte beschriften
annotate!(p2, 1, gesamt_A + 10, text("$(round(Int, gesamt_A)) MPa", 11, :center, col_A))
annotate!(p2, 2, gesamt_B + 10, text("$(round(Int, gesamt_B)) MPa", 11, :center, col_B))

# Paradox-Hinweis
annotate!(p2, 1.5, 470,
          text("A > B  (?!)", 11, :center, :darkred))

# ── Zusammenfügen ───────────────────────────────────────────────────────────
fig = plot(p1, p2,
           layout=(1, 2),
           size=(900, 480),
           dpi=150,
           plot_title="Simpson-Paradox – Stahlwerk-Beispiel",
           plot_titlefontsize=13)

savefig(fig, "simpson_paradox.png")
println("Gespeichert: simpson_paradox.png")