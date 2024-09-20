import Pkg
Pkg.add("Plots")
using Plots

x = 1:200
y(x) = sin(0.001 .* x)
plot(x, y)

#plot(x, y, label=["Noise" "Sinus" "Sinus_with_Noise"], xlabel="Time", ylabel="Amplitude", title="Sinusoidal Signals", lw=2)
#display()
# Save the plot as a PNG file

#display(plot)
#savefig("./examples/sinusoidal_signals.png")