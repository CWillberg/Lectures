using DataFrames
using CSV
using Random

# Number of entries
num_entries = 200

# Set a random seed for reproducibility




# Write DataFrame to CSV file
for i in 1:20
    Random.seed!(123*i)
    # Function parameters
    m = 0.5  # Slope of the linear function
    b = 2.0  # Intercept of the linear function

    # Generate random noise
    noise = 4 .* randn(num_entries).* abs.(randn(num_entries))

    # Generate linear function with noise
    linear_function_with_noise = m * collect(1:num_entries) .+ b .+ noise

    # Create a DataFrame
    df = DataFrame(Time = 1:num_entries, Noise = noise, Linear_Function = linear_function_with_noise)
    # Generate a unique filename for each iteration
    filename = "./examples/multiple_files/var_$i.csv"
    
    # Write DataFrame to CSV file
    CSV.write(filename, df)
    
    println("CSV file '$filename' has been created successfully.")
end