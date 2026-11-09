# Erzeugt verschleiss_verlauf.png fuer MTI 08
import numpy as np, matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
blue, acc = "#001158", "#8592bc"
t = np.linspace(0, 10, 400)
w = 1.2*(1-np.exp(-t/0.6)) + 0.12*t + np.where(t > 7.5, 0.35*(t-7.5)**2, 0)
fig, ax = plt.subplots(figsize=(6, 4.2))
ax.plot(t, w, color=blue, lw=2.5)
for x in (1.8, 7.5): ax.axvline(x, color=acc, ls="--", lw=1)
for x, s in [(0.9, "Einlauf"), (4.6, "stationär"), (8.75, "progressiv")]:
    ax.text(x, 4.3, s, ha="center", color=blue, fontsize=13)
ax.axhline(3.2, color="#e67e22", lw=1.5); ax.text(0.2, 3.3, "Verschleißgrenze", color="#e67e22", fontsize=12)
ax.set_xlim(0, 10); ax.set_ylim(0, 4.8); ax.set_xticks([]); ax.set_yticks([])
ax.set_xlabel("Zeit / Gleitweg", fontsize=13); ax.set_ylabel("Verschleißbetrag", fontsize=13)
for s in ("top", "right"): ax.spines[s].set_visible(False)
fig.tight_layout(); fig.savefig("verschleiss_verlauf.png", dpi=200)
