import sympy as sp

# Symbole definieren
a, b, c, d, x, y = sp.symbols('a b c d x y')

# 2x2 Matrix definieren
A = sp.Matrix([[a, b],
               [c, d]])

# Vektor definieren
v = sp.Matrix([x, y])

# Matrix-Vektor-Multiplikation
Av = A * v
# Invertierung der Matrix
A_inv = A.inv()

# Matrix-Vektor-Multiplikation
Av = A * v

# Determinante der Matrix
det_A = A.det()

# Ergebnisse anzeigen
print("Matrix A:")
sp.pprint(A)

print("\nInverse von A:")
sp.pprint(A_inv)

print("\nMatrix-Vektor-Multiplikation A * v:")
sp.pprint(Av)

print("\nDeterminante von A:")
sp.pprint(det_A)