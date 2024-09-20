import Pkg
Pkg.add("CSV")
Pkg.add("DataFrames")
Pkg.add("Plots")
using CSV
using DataFrames
using Plots

# Load CSV file into a DataFrame
df = CSV.read("./examples/function_examples.csv", DataFrame)

# Extract data from the DataFrame
time = df[!, :Time]
noise = df[!, :Noise]
sinus = df[!, :Sinus]
sinus_with_noise = df[!, :Sinus_with_Noise]

# Plot data
plot(time, [noise, sinus, sinus_with_noise], label=["Noise" "Sinus" "Sinus_with_Noise"], xlabel="Time", ylabel="Amplitude", title="Sinusoidal Signals", lw=2)
#display()
# Save the plot as a PNG file
display(plot)
savefig("./examples/sinusoidal_signals.png")

println("Plot saved as 'sinusoidal_signals.png'")