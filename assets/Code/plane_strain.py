import sympy as sp

def invert_compliance_matrix():
    # Symbole für Elastizitätsmodul E und Poissonzahl nu
    E, nu = sp.symbols('E nu')
    
    # Nachgiebigkeitsmatrix für ein isotropes 2D-Material
    S = sp.Matrix([
        [1/E, -nu/E,  0],
        [-nu/E, 1/E,  0],
        [0,     0,   2*(1+nu)/E]
    ])
    
    # Invertieren der Nachgiebigkeitsmatrix zur Steifigkeitsmatrix
    C = S.inv()
    
    return C

# Berechnung
C_matrix = invert_compliance_matrix()
sp.pprint(C_matrix)
