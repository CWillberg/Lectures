import numpy as np
import matplotlib.pyplot as plt

# Parameter
l0 = 1.0  # Anfangslänge
Delta_l1 = 0.4  # Änderung der Länge 1

# Bereich für l
l_values = np.linspace(l0, l0 + Delta_l1 + 1, 500)

# Berechnung der Dehnungen
epsilon_C = (l_values - l0) / l0
epsilon_prime = np.log(l_values / l0)

# Fehlerberechnung
error = np.abs(epsilon_C - epsilon_prime)*100

# Plot
fig, ax1 = plt.subplots(figsize=(8, 5))
ax2 = ax1.twinx()

ax1.axhline(0, color='black', linewidth=0.5, linestyle='--')
ax1.plot(l_values, epsilon_C, linestyle="--", label="Cauchy Dehnung")
ax1.plot(l_values, epsilon_prime, color='r', label="logarithmische Dehnung")
ax2.plot(l_values, error, color='g', linestyle='dotted', label="Fehler")

# Labels und Legenden
ax1.set_xlabel("$l$ [m]")
ax1.set_ylabel("Dehnung [-]")
ax2.set_ylabel("Abweichung [%]")
ax1.set_title("Vergleich der Dehnungen in Abhängigkeit von deformierter Länge")
ax1.legend(loc='upper left')
ax2.legend(loc='upper right')
ax1.grid()

plt.show()
