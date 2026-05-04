using SymPy
using LinearAlgebra
@syms σxx σyy σxy

σ = [σxx σxy; σxy σyy]

lambda = eigen(σ)
# Eigenvalues: λ1, λ2; Pricipal stresses
display(lambda.values)
# Eigenvectors: v1, v2; Principal directions
display(lambda.vectors)