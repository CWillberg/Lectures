using CSV
using DataFrames
using Random

# Number of entries
num_entries = 200

# Set a random seed for reproducibility
Random.seed!(123)

# Generate random noise
noise = randn(num_entries)

# Generate pure sinusoidal signal
sinus = sin.(collect(range(0, stop=40*pi, length=num_entries)))

# Generate sinusoidal signal with added noise
sinus_with_noise = sinus + noise

# Create a DataFrame
df = DataFrame(Time = 1:num_entries, Noise = noise, Sinus = sinus, Sinus_with_Noise = sinus_with_noise)

# Write DataFrame to CSV file
CSV.write("./examples/function_examples.csv", df)

println("CSV file 'function_examples.csv' has been created successfully.")
