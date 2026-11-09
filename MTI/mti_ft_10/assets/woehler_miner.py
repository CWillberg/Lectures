# Erzeugt woehler_miner.png und woehler_basquin.png fuer MTI 08
import numpy as np, matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt, matplotlib.ticker
blue, acc, orange, green = "#001158", "#8592bc", "#e67e22", "#27ae60"
sD, ND, k = 240.0, 2e6, 6.0
plt.rcParams.update({"font.size": 13})

def base(ax):
    ax.set_xscale("log"); ax.set_yscale("log")
    ax.set_xlim(1e3, 1e9); ax.set_ylim(150, 700)
    ax.set_yticks([150, 200, 240, 300, 360, 500, 700]); ax.set_yticklabels(["150","200","240","300","360","500","700"])
    ax.yaxis.set_minor_formatter(matplotlib.ticker.NullFormatter())
    ax.set_xlabel("Schwingspielzahl $N$"); ax.set_ylabel(r"Spannungsamplitude $\sigma_a$ [MPa]")
    ax.grid(True, which="both", alpha=0.3)
    N1 = np.logspace(3.6, np.log10(ND)); ax.plot(N1, sD*(N1/ND)**(-1/k), color=blue, lw=2.5)
    ax.plot(ND, sD, "o", color=blue)

# 1) Basquin: Zeit-/Dauerfestigkeit
fig, ax = plt.subplots(figsize=(8, 5))
base(ax)
ax.plot([ND, 1e9], [sD, sD], color=blue, lw=2.5)
for x0, x1, t in [(1e3, 1e4, "K"), (1e4, ND, "Z"), (ND, 1e9, "D")]:
    ax.text(np.sqrt(x0*x1), 640, t, ha="center", color=acc, fontsize=15, weight="bold")
for x in [1e4, ND]: ax.axvline(x, color=acc, ls="--", lw=1)
ax.annotate(r"$N=N_D\left(\frac{\sigma_a}{\sigma_D}\right)^{-k}$", (1.5e5, 520), color=blue, fontsize=16)
ax.annotate(r"Knickpunkt $(N_D,\ \sigma_D)$", (ND, sD), (2.2e6, 300), color=blue, arrowprops=dict(arrowstyle="->", color=blue))
fig.tight_layout(); fig.savefig("woehler_basquin.png", dpi=200); plt.close(fig)

# 2) Miner-Varianten
fig, ax = plt.subplots(figsize=(8, 5))
base(ax)
N2 = np.logspace(np.log10(ND), 9)
ax.plot(N2, [sD]*len(N2), color=blue, lw=2.5, label="Miner original (keine Schädigung unter $\\sigma_D$)")
ax.plot(N2, sD*(N2/ND)**(-1/k), color=orange, lw=2, ls="--", label="Miner elementar (Gerade weiter, $k$)")
ax.plot(N2, sD*(N2/ND)**(-1/(2*k-1)), color=green, lw=2, ls="-.", label="Miner modifiziert nach Haibach ($2k-1$)")
for s in [360, 300, 200]:
    ax.axhline(s, color="gray", lw=0.8, ls=":")
ax.legend(loc="upper right", fontsize=11, framealpha=0.95)
fig.tight_layout(); fig.savefig("woehler_miner.png", dpi=200); plt.close(fig)
