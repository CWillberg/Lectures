import Pkg
Pkg.add("CSV")
Pkg.add("DataFrames")
Pkg.add("Statistics")
Pkg.add("Plots")
using CSV
using Plots
using DataFrames
using Statistics


# Create an empty array to store DataFrames
dfs = []

# Load all CSV files
for i in 1:20
    filename = "./examples/multiple_files/var_$i.csv"
    df = CSV.read(filename, DataFrame)
    push!(dfs, df)
end

dfs[i].Linear_Function


# Calculate the average of the linear functions
avg_linear_function = mean.(reduce(hcat, dfs)[:, 3:end], dims=2)[:, 1]

# Calculate the error per point (every 10 points)
errors = []
for i in 1:10:length(avg_linear_function)-10
    avg_point = mean(avg_linear_function[i:i+9])
    error = std(avg_linear_function[i:i+9])
    push!(errors, error)
end

# Plotting
plot(1:10:length(avg_linear_function)-10, errors, xlabel="Time", ylabel="Error per Point", label="", title="Error per Point (Every 10 Points)")

savefig("./examples/multiple_files/simple_error_plot.png")