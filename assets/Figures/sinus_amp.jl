using Plots

# Parameter für die Sinuskurven
x = 0:0.01:2π        # Werte von 0 bis 2π mit einer Schrittweite von 0.01
y1 = sin.(x)          # Erste Sinuskurve ohne Offset
y2 = sin.(x) .+ 1.0   # Zweite Sinuskurve mit einem Amplitudenoffset von 1

# Plotten der Kurven
plot(x, y1, label="R = 1", lw=2, color=:blue)
plot!(x, y2, label="R = 0", lw=2, color=:red)

# Achsenbeschriftungen und Titel
xlabel!("Zeit / Time")
ylabel!("Amplitude")


# Speichern des Plots als PNG
savefig("sinuskurven_mit_offset.png")
