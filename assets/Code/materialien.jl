using Plots

# Daten abgelesen aus: Weltverbrauch wichtiger Werkstoffe (log. Skala, Mio. t)
# Quelle: Europa Lehrmittel

stahl = [
    (1900, 40),
    (1930, 100), (1940, 130), (1950, 200),
    (1960, 330), (1970, 500), (1980, 650),
    (1990, 730), (2000, 900), (2010, 1200),
]

kunststoffe = [
    (1930, 0.10), (1935, 0.15), (1940, 0.50),
    (1950, 2.5),  (1955, 5.0),  (1960, 8.0),
    (1965, 14),   (1970, 30),   (1975, 50),
    (1980, 65),   (1985, 85),   (1990, 110),
    (2000, 200),  (2010, 500),
]

aluminium = [
    (1930, 0.30), (1940, 0.70), (1950, 1.5),
    (1960, 4.5),  (1970, 10),   (1980, 16),
    (1990, 20),   (2000, 30),   (2010, 50),
]

kupfer = [
    (1930, 1.3),  (1940, 2.0),  (1950, 2.8),
    (1960, 5.0),  (1970, 7.0),  (1980, 8.5),
    (1985, 10),   (1990, 11),   (2000, 15),
    (2010, 20),
]

zink = [
    (1930, 1.0),  (1940, 1.5),  (1950, 2.0),
    (1960, 4.0),  (1970, 5.5),  (1975, 6.0),
    (1980, 6.5),  (1990, 7.5),  (2000, 8.5),
    (2010, 9.5),
]

xv(d) = Float64.(first.(d))
yv(d) = Float64.(last.(d))

p = plot(
    xv(stahl), yv(stahl),
    label = "Stahl und Gusseisenwerkstoffe",
    color = :black, lw = 2.5,
    yscale = :log10,
    xlims  = (1930, 2020),
    ylims  = (0.1, 3000),
    xlabel = "Jahr →",
    ylabel = "Verbrauch [Mio. t] →",
    title  = "Weltverbrauch wichtiger Werkstoffe",
    legend = :topleft,
    grid   = true,
    minorgrid = true,
    size   = (800, 650),
    tickfontsize   = 10,
    legendfontsize = 9,
    yticks = ([0.1, 1.0, 10.0, 100.0, 1000.0],
              ["0,1", "1,0", "10", "100", "1000"]),
    xticks = 1930:10:2020,
    framestyle = :box,
)

plot!(p, xv(kunststoffe), yv(kunststoffe),
    label = "Kunststoffe¹⁾",
    color = :dodgerblue, lw = 2.5)

plot!(p, xv(aluminium), yv(aluminium),
    label = "Aluminium",
    color = :black, lw = 1.8, ls = :dash)

plot!(p, xv(kupfer), yv(kupfer),
    label = "Kupfer",
    color = :black, lw = 1.5, ls = :dashdot)

plot!(p, xv(zink), yv(zink),
    label = "Zink",
    color = :black, lw = 1.2, ls = :dot)

annotate!(p, 1931, 0.13,
    text("¹⁾ Thermoplaste, Duroplaste, Elastomere, Farben,\n   Dispersionen, Lacke und Klebstoffe",
         :left, 7, :black))

display(p)
savefig(p, "material_verbrauch.png")