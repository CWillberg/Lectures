import sympy as sp

# Symbole definieren
a, b, c, d, e, f, g, h, i = sp.symbols('a b c d e f g h i')

# 3x3 Matrix definieren
A = sp.Matrix([
    [a, b, c],
    [d, e, f],
    [g, h, i]
])

# Eigenwerte berechnen
eigenwerte = A.eigenvals()

# Optional: Eigenvektoren berechnen
eigenvektoren = A.eigenvects()

# Ausgabe
print("Matrix A:")
sp.pprint(A)

print("\nEigenwerte:")
sp.pprint(eigenwerte)

print("\nEigenvektoren (Eigenwert, algebraische Vielfachheit, Eigenraum):")
sp.pprint(eigenvektoren)



# Symmetrische 3x3 Matrix
A = sp.Matrix([
    [a, b],
    [b, d]    
])

# Eigenwerte und Eigenvektoren
eigenwerte = A.eigenvals()
eigenvektoren = A.eigenvects()

# Ausgabe
print("Symmetrische Matrix A:")
sp.pprint(A)

print("\nEigenwerte:")
sp.pprint(eigenwerte)

print("\nEigenvektoren (Eigenwert, Vielfachheit, Eigenraum):")
sp.pprint(eigenvektoren)