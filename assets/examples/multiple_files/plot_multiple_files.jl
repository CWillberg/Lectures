import Pkg
Pkg.add("CSV")
Pkg.add("DataFrames")
Pkg.add("Plots")
using CSV
using Plots
using DataFrames

# Create an empty array to store DataFrames
dfs = []
# Load all CSV files
for i in 1:20
    filename = "./examples/multiple_files/var_$i.csv"

    df = CSV.read(filename, DataFrame)
    push!(dfs, df)
end

# Plotting

for i in 1:20
    plot!(dfs[i].Time, dfs[i].Linear_Function, label="File $i")
end
xlabel!("Time")
ylabel!("Linear Function")
title!("Linear Functions with Noise")
savefig("./examples/multiple_files/linear_noise.png")

display(plot)