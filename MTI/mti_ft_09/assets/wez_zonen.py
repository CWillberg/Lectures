# Erzeugt wez_zonen.png fuer MTI 09: Spitzentemperatur ueber Abstand zur Schmelzlinie
import numpy as np, matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
blue = "#001158"
x = np.linspace(-1.0, 8, 400)
T = np.where(x < 0, 1600, 20 + 1490*np.exp(-x/2.6))   # schematischer Verlauf
zones = [(-1.0, 1500, 1600, "Schweißgut", "#f5b7b1"),
         (None, 1100, 1500, "Grobkorn", "#fad7a0"),
         (None, 900, 1100, "Feinkorn", "#abebc6"),
         (None, 723, 900, "teilaustenitisiert", "#aed6f1"),
         (None, 500, 723, "Anlasszone", "#d7bde2")]
fig, ax = plt.subplots(figsize=(7.5, 4.6))
for _, lo, hi, name, col in zones:
    ax.axhspan(lo, hi, color=col, alpha=0.6, lw=0)
    ax.text(7.9, (lo+hi)/2, name, ha="right", va="center", fontsize=12, color=blue)
ax.plot(x, T, color=blue, lw=2.5)
ax.axvline(0, color="gray", ls="--", lw=1); ax.text(0.08, 300, "Schmelzlinie", rotation=90, color="gray", fontsize=11)
for t, lab in [(723, "A$_1$ 723 °C"), (900, "≈ A$_3$")]:
    ax.text(-0.95, t+15, lab, fontsize=10, color=blue)
ax.set_xlim(-1, 8); ax.set_ylim(0, 1650)
ax.set_xlabel("Abstand von der Schmelzlinie (schematisch)", fontsize=12)
ax.set_ylabel("Spitzentemperatur [°C]", fontsize=12); ax.set_xticks([])
fig.tight_layout(); fig.savefig("wez_zonen.png", dpi=200)
