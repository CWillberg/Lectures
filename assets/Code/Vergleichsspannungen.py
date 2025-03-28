import numpy as np

def invert_compliance_matrix(E, nu):
    # Symbole für Elastizitätsmodul E und Poissonzahl nu
   
    # Nachgiebigkeitsmatrix für ein isotropes 2D-Material
    S = np.array([
        [1/E, -nu/E,  0],
        [-nu/E, 1/E,  0],
        [0,     0,   2*(1+nu)/E]
    ])
    
    # Invertieren der Nachgiebigkeitsmatrix zur Steifigkeitsmatrix
  
    
    return np.linalg.inv(S)

# Berechnung

def von_mises(sigma_x, sigma_y, tau_xy):
    # Von Mises
    sigma_vm = np.sqrt(sigma_x**2 + sigma_y**2 - sigma_x * sigma_y + 3 * tau_xy**2)
    return sigma_vm
def tresca(sigma_x, sigma_y, tau_xy):
    # Hauptspannungen
    sigma_avg = (sigma_x + sigma_y) / 2
    radius = np.sqrt(((sigma_x - sigma_y) / 2) ** 2 + tau_xy ** 2)
    sigma_1 = sigma_avg + radius
    sigma_2 = sigma_avg - radius

    # Tresca
    sigma_tresca = abs(sigma_1 - sigma_2)

    return  sigma_tresca


E = 210000
nu = 0.3
e1=0.1
g12=0.1
C_matrix = invert_compliance_matrix(E,nu)

v = np.array([e1, 0, g12])  # 2D-Vektor

sigma = np.dot(C_matrix, v)  # Matrix
print("Spannungen",sigma, "N/mm^2")
print("von Mises",von_mises(sigma[0],sigma[1],sigma[2]), "N/mm^2")
print("Tresca",tresca(sigma[0],sigma[1],sigma[2]), "N/mm^2")