import sympy as sp

# Symbole definieren
a, b, c, d, e, f, g, h, i = sp.symbols('a b c d e f g h i')
x, y, z = sp.symbols('x y z')

# 3x3 Matrix definieren
A = sp.Matrix([
    [a, b, c],
    [d, e, f],
    [g, h, i]
])

# 3x1 Vektor
v = sp.Matrix([x, y, z])

# Inverse berechnen
A_inv = A.inv()

# Matrix-Vektor-Multiplikation
Av = A * v

# Determinante berechnen
det_A = A.det()

# Ausgabe
print("Matrix A:")
sp.pprint(A)

print("\nInverse von A:")
sp.pprint(A_inv)

print("\nMatrix-Vektor-Multiplikation A * v:")
sp.pprint(Av)

print("\nDeterminante von A:")
sp.pprint(det_A)
