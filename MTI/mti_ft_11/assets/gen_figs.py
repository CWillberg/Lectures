# Erzeugt die Diagramme fuer MTI 11 - Werkstoffpruefung
# Aufruf: python3 gen_figs.py (im Ordner assets)
import numpy as np, matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle, Circle, FancyArrowPatch, Arc

blue, acc, orange, green, red, grey = "#001158", "#8592bc", "#e67e22", "#27ae60", "#c0392b", "#7f8c8d"
plt.rcParams.update({"font.size": 14})


def save(fig, name):
    fig.tight_layout()
    fig.savefig(name, dpi=200)
    plt.close(fig)


# ---------------------------------------------------------------- 1) Zugversuch Kennwerte
def curve_yield():
    E = 210000.0
    e1 = np.linspace(0, 0.30 / 100 * 100, 2)  # placeholder
    eps = []
    sig = []
    # elastisch bis ReH
    ReH, ReL = 300.0, 270.0
    ee = np.linspace(0, ReH / E * 100, 30)
    eps += list(ee); sig += list(E * ee / 100)
    # Abfall auf ReL, Lueders-Plateau mit Zacken
    xp = np.linspace(ReH / E * 100, 2.0, 60)
    yp = ReL + 4 * np.sin(np.linspace(0, 14 * np.pi, 60)) * (xp < 1.9)
    yp[0] = ReH
    eps += list(xp); sig += list(yp)
    # Verfestigung bis Rm bei Ag, dann Einschnuerung bis A
    Rm, Ag, A = 420.0, 18.0, 26.0
    xh = np.linspace(2.0, Ag, 80)
    yh = ReL + (Rm - ReL) * (1 - ((Ag - xh) / (Ag - 2.0)) ** 2)
    eps += list(xh); sig += list(yh)
    xn = np.linspace(Ag, A, 40)
    yn = Rm - (Rm - 330) * ((xn - Ag) / (A - Ag)) ** 1.8
    eps += list(xn); sig += list(yn)
    return np.array(eps), np.array(sig), dict(ReH=ReH, ReL=ReL, Rm=Rm, Ag=Ag, A=A, E=E)


def curve_cont():
    E = 70000.0
    se, Rm, Ag, A = 180.0, 310.0, 9.0, 14.0
    ee = se / E * 100
    x1 = np.linspace(0, ee, 20)
    x2 = np.linspace(ee, Ag, 300)
    y2 = Rm - (Rm - se) * np.exp(-(x2 - ee) / 1.8)
    xn = np.linspace(Ag, A, 40)
    yn = y2[-1] - (y2[-1] - 240) * ((xn - Ag) / (A - Ag)) ** 1.8
    x = np.r_[x1, x2, xn]; y = np.r_[x1 / 100 * E, y2, yn]
    # Rp0,2: plastischer Anteil eps - sigma/E = 0,2 %
    k = np.argmin(np.abs(x2 - y2 / E * 100 - 0.2))
    return x, y, dict(Rp=y2[k], Rp_eps=x2[k], Rm=Rm, Ag=Ag, A=A, E=E)


fig, axs = plt.subplots(1, 2, figsize=(14, 5.6))
ax = axs[0]
x, y, p = curve_yield()
ax.plot(x, y, color=blue, lw=2.5)
ax.plot(x[-1], y[-1], "x", color=red, ms=12, mew=3)
ax.annotate(r"$R_{eH}$", (0.15, p["ReH"]), (2.5, p["ReH"] + 45), color=blue, arrowprops=dict(arrowstyle="->", color=blue))
ax.annotate(r"$R_{eL}$", (1.2, p["ReL"]), (3.0, p["ReL"] - 70), color=blue, arrowprops=dict(arrowstyle="->", color=blue))
ax.axhline(p["Rm"], color=acc, ls="--", lw=1); ax.text(0.3, p["Rm"] + 8, r"$R_m$", color=blue)
ax.axvline(p["Ag"], color=acc, ls="--", lw=1)
ax.annotate("", (0, 40), (p["Ag"], 40), arrowprops=dict(arrowstyle="<->", color=orange))
ax.text(p["Ag"] / 2, 48, r"$A_g$", color=orange, ha="center")
# A: bleibende Dehnung -> elastische Rueckfederung parallel zur Hookeschen Geraden
eel = y[-1] / p["E"] * 100
ax.plot([x[-1], x[-1] - eel], [y[-1], 0], color=red, ls=":", lw=1.8)
ax.annotate("", (0, 15), (x[-1] - eel, 15), arrowprops=dict(arrowstyle="<->", color=red))
ax.text((x[-1] - eel) / 2, 22, r"$A$", color=red, ha="center")
ax.annotate("Lüdersbereich", (1.0, 268), (3.5, 215), color=grey, fontsize=12, arrowprops=dict(arrowstyle="->", color=grey))
ax.text(10, 300, "Verfestigung", color=grey, fontsize=12, ha="center", rotation=12)
ax.text(22.5, 440, "Einschnürung", color=grey, fontsize=12, ha="center")
ax.set_title("a) ausgeprägte Streckgrenze (z. B. S235)", fontsize=14)
ax.set_xlim(0, 29); ax.set_ylim(0, 480)
ax.set_xlabel(r"Dehnung $\varepsilon$ [%]"); ax.set_ylabel(r"Spannung $\sigma = F/S_0$ [MPa]")
ax.grid(alpha=0.3)

ax = axs[1]
x, y, p = curve_cont()
ax.plot(x, y, color=blue, lw=2.5)
ax.plot(x[-1], y[-1], "x", color=red, ms=12, mew=3)
xo = np.linspace(0.2, 0.2 + 290 / p["E"] * 100, 2)
ax.plot(xo, (xo - 0.2) / 100 * p["E"], color=orange, lw=1.8, ls="--")
ax.annotate(r"$R_{p0,2}$", (p["Rp_eps"], p["Rp"]), (2.2, 175), color=blue, arrowprops=dict(arrowstyle="->", color=blue))
ax.annotate("0,2 %", (0.2, 0), (1.2, 50), color=orange, arrowprops=dict(arrowstyle="->", color=orange))
ax.axhline(p["Rm"], color=acc, ls="--", lw=1); ax.text(0.3, p["Rm"] + 8, r"$R_m$", color=blue)
ax.axvline(p["Ag"], color=acc, ls="--", lw=1)
ax.annotate("", (0, 100), (p["Ag"], 100), arrowprops=dict(arrowstyle="<->", color=orange))
ax.text(p["Ag"] / 2, 108, r"$A_g$", color=orange, ha="center")
eel = y[-1] / p["E"] * 100
ax.plot([x[-1], x[-1] - eel], [y[-1], 0], color=red, ls=":", lw=1.8)
ax.annotate("", (0, 25), (x[-1] - eel, 25), arrowprops=dict(arrowstyle="<->", color=red))
ax.text((x[-1] - eel) / 2, 32, r"$A$", color=red, ha="center")
ax.set_title("b) kontinuierlicher Übergang (z. B. Al-Legierung)", fontsize=14)
ax.set_xlim(0, 16); ax.set_ylim(0, 360)
ax.set_xlabel(r"Dehnung $\varepsilon$ [%]"); ax.set_ylabel(r"Spannung $\sigma = F/S_0$ [MPa]")
ax.grid(alpha=0.3)
save(fig, "zug_kennwerte.png")

# ---------------------------------------------------------------- 2) technisch vs. wahr
x, y, p = curve_cont()
e = x / 100
mask = x <= p["Ag"]
fig, ax = plt.subplots(figsize=(8, 5.4))
ax.plot(x, y, color=blue, lw=2.5, label=r"technisch: $\sigma = F/S_0$")
ew = np.log(1 + e[mask]) * 100
sw = y[mask] * (1 + e[mask])
ax.plot(ew, sw, color=orange, lw=2.5, label=r"wahr: $\sigma_w = F/S$")
# nach Ag qualitativ weiter steigend
xg = np.linspace(ew[-1], ew[-1] + 9, 30)
ax.plot(xg, sw[-1] + 9.0 * (xg - ew[-1]), color=orange, lw=2.5, ls="--")
ax.axvline(p["Ag"], color=acc, ls="--", lw=1); ax.text(p["Ag"] + 0.2, 30, r"$A_g$", color=blue)
ax.set_xlabel(r"Dehnung [%]"); ax.set_ylabel("Spannung [MPa]")
ax.set_xlim(0, 18); ax.set_ylim(0, 450); ax.grid(alpha=0.3); ax.legend(loc="lower right")
save(fig, "zug_wahr.png")

# ---------------------------------------------------------------- 3) Kerbschlagarbeit - Temperatur
T = np.linspace(-120, 80, 300)
fig, ax = plt.subplots(figsize=(9, 5.6))
low, up, Tt, w = 6, 190, -45, 14
KV = low + (up - low) / 2 * (1 + np.tanh((T - Tt) / w))
ax.plot(T, KV, color=blue, lw=2.8, label="krz, z. B. Baustahl S355J2")
ax.plot(T, 150 - 0.08 * (T + 120), color=green, lw=2.8, label="kfz, z. B. austenit. Stahl 1.4301")
ax.axhline(27, color=red, ls="--", lw=1.4)
ax.text(40, 31, "27 J", color=red)
ax.plot(-20, 27, "o", color=red, ms=9)
ax.annotate("Anforderung J2:\n27 J bei −20 °C", (-20, 27), (-5, 70), color=red, fontsize=12,
            arrowprops=dict(arrowstyle="->", color=red))
for xt, t in [(-100, "Tieflage\nSprödbruch"), (-45, "Steilabfall\nMischbruch"), (35, "Hochlage\nVerformungsbruch")]:
    ax.text(xt, 215, t, ha="center", color=grey, fontsize=12)
ax.axvspan(-75, -15, color=acc, alpha=0.15)
ax.set_xlabel("Prüftemperatur $T$ [°C]"); ax.set_ylabel("Kerbschlagarbeit $KV$ [J]")
ax.set_ylim(0, 250); ax.set_xlim(-120, 80); ax.grid(alpha=0.3); ax.legend(loc="center right", fontsize=12)
save(fig, "kerbschlag_T.png")

# ---------------------------------------------------------------- 4) Pendelschlagwerk Skizze
fig, ax = plt.subplots(figsize=(7, 6.2))
L = 1.0
piv = np.array([0, 1.0])
ax.plot(*piv, "o", color=blue, ms=12)
a0, a1 = np.deg2rad(140), np.deg2rad(-75)  # Winkel von der Senkrechten (unten) gemessen
for a, ls, lab in [(a0, "-", "Start"), (0.0, ":", None), (a1, "-", "Ende")]:
    tip = piv + L * np.array([np.sin(a), -np.cos(a)])
    ax.plot([piv[0], tip[0]], [piv[1], tip[1]], color=blue if ls == "-" else acc, lw=3, ls=ls)
    ax.add_patch(Circle(tip, 0.09, color=blue if ls == "-" else acc, alpha=1 if ls == "-" else 0.5))
h0 = L * (1 - np.cos(a0)); h1 = L * (1 - np.cos(a1))
yb = piv[1] - L
ax.plot([-1.3, 1.3], [yb, yb], color=grey, lw=1)
# Probe auf Widerlagern
ax.add_patch(Rectangle((-0.35, yb - 0.17), 0.08, 0.08, color=grey))
ax.add_patch(Rectangle((0.27, yb - 0.17), 0.08, 0.08, color=grey))
ax.add_patch(Rectangle((-0.35, yb - 0.09), 0.7, 0.06, color=orange))
for h, lab, x0 in [(h0, "$h_0$", 1.15), (h1, "$h_1$", -1.15)]:
    ax.annotate("", (x0, yb), (x0, yb + h), arrowprops=dict(arrowstyle="<->", color=red, lw=1.5))
    ax.plot([x0 - 0.05, x0 + 0.05], [yb + h, yb + h], color=red)
    ax.text(x0 + (0.08 if x0 < 0 else -0.22), yb + h / 2, lab, color=red, fontsize=16)
ax.add_patch(Arc(piv, 0.5, 0.5, theta1=270, theta2=270 + 140, color=blue))
ax.text(0.26, 0.97, r"$\alpha$", color=blue, fontsize=15)
ax.add_patch(Arc(piv, 0.7, 0.7, theta1=270 - 75, theta2=270, color=blue))
ax.text(-0.42, 0.62, r"$\beta$", color=blue, fontsize=15)
ax.text(0, yb - 0.32, "Probe 10 × 10 × 55 mm, V-Kerb 2 mm", ha="center", color=orange, fontsize=12)
ax.text(0.82, 1.55, "Start", color=blue); ax.text(-1.0, 0.55, "Ende", color=blue)
ax.set_aspect("equal"); ax.axis("off"); ax.set_xlim(-1.45, 1.45); ax.set_ylim(-0.45, 1.95)
save(fig, "pendelschlagwerk.png")

# ---------------------------------------------------------------- 5) Kriechkurve
t = np.linspace(0, 1, 400)
fig, ax = plt.subplots(figsize=(9, 5.4))
def creep(t, e0, a, b, c, tb):
    tt = t / tb
    return e0 + a * (1 - np.exp(-tt * 25)) + b * tt + c * (np.exp(14 * (tt - 1)) - np.exp(-14))
e1 = creep(t, 0.2, 0.4, 0.8, 1.5, 1.0)
ax.plot(t * 100, e1, color=blue, lw=2.8, label=r"$T_1,\ \sigma_1$")
ax.plot(100, e1[-1], "x", color=red, ms=12, mew=3)
t2 = np.linspace(0, 0.45, 300)
e2 = creep(t2, 0.3, 0.5, 0.8, 1.5, 0.45)
ax.plot(t2 * 100, e2, color=orange, lw=2.8, label=r"$T_2 > T_1$ oder $\sigma_2 > \sigma_1$")
ax.plot(45, e2[-1], "x", color=red, ms=12, mew=3)
for xv in [12, 82]:
    ax.axvline(xv, color=acc, ls="--", lw=1)
for xt, s in [(6, "I\nprimär"), (62, "II\nsekundär\n$\\dot\\varepsilon_{min}$ = konst."), (92, "III\ntertiär")]:
    ax.text(xt, 3.3 if xt != 62 else 0.62, s, ha="center", va="top", color=grey, fontsize=12)
ax.annotate(r"$\varepsilon_0$ (elastisch, beim Aufbringen)", (0, 0.2), (18, 0.05), fontsize=12, color=blue,
            arrowprops=dict(arrowstyle="->", color=blue))
ax.text(95, e1[-1] + 0.05, "Bruch", color=red, ha="right", fontsize=12)
ax.set_xlabel("Zeit $t$ [% der Bruchzeit]"); ax.set_ylabel(r"Kriechdehnung $\varepsilon$ [%]")
ax.set_ylim(0, 3.4); ax.set_xlim(0, 105); ax.grid(alpha=0.3); ax.legend(loc="upper left", fontsize=12, bbox_to_anchor=(0.12, 0.75))
save(fig, "kriechkurve.png")

# ---------------------------------------------------------------- 6) Wirbelstrom-Eindringtiefe
mu0 = 4e-7 * np.pi
f = np.logspace(1, 7, 200)
mats = [("Kupfer", 58e6, 1, orange), ("Aluminium", 35e6, 1, blue), ("austenit. Stahl", 1.4e6, 1, green),
        ("ferrit. Stahl ($\\mu_r$ ≈ 100)", 6e6, 100, red)]
fig, ax = plt.subplots(figsize=(9, 5.4))
for n, s, mr, c in mats:
    ax.loglog(f, 1e3 / np.sqrt(np.pi * f * mu0 * mr * s), color=c, lw=2.5, label=n)
ax.set_xlabel("Prüffrequenz $f$ [Hz]"); ax.set_ylabel(r"Standard-Eindringtiefe $\delta$ [mm]")
ax.grid(True, which="both", alpha=0.3); ax.legend(fontsize=12)
ax.set_ylim(5e-3, 200)
save(fig, "wirbelstrom_eindringtiefe.png")

# ---------------------------------------------------------------- 7) Magnetpulver - Streufluss
fig, ax = plt.subplots(figsize=(10, 4.4))
ax.add_patch(Rectangle((-5, -1.5), 10, 1.5, color="#d5d8dc"))
ax.add_patch(Rectangle((-0.08, -0.8), 0.16, 0.8, color="white"))  # Riss, oeffnet zur Oberflaeche
ys = np.linspace(-1.3, -0.15, 6)
for k, y0 in enumerate(ys):
    x = np.linspace(-4.8, 4.8, 400)
    bump = (0.35 + 0.12 * k) * np.exp(-(x / (0.35 + 0.12 * k)) ** 2) * (y0 > -0.85)
    ax.plot(x, y0 + bump, color=blue, lw=1.6)
    ax.annotate("", (4.8, y0), (4.5, y0), arrowprops=dict(arrowstyle="->", color=blue))
rng = np.random.default_rng(1)
px = rng.normal(0, 0.18, 70); py = 0.05 + np.abs(rng.normal(0, 0.12, 70))
ax.plot(px, py, ".", color="k", ms=5)
ax.text(0, 1.35, "Streufluss sammelt Magnetpulver → Anzeige", ha="center", color=blue)
ax.text(0.25, -1.05, "Riss", color=red)
ax.annotate("", (0.08, -0.6), (0.6, -0.95), arrowprops=dict(arrowstyle="->", color=red))
ax.text(-4.8, -1.85, r"Magnetfeld $H$ quer zum Riss  →", color=blue)
ax.text(2.2, -1.85, "ferromagnetisches Bauteil", color=grey)
ax.set_xlim(-5.2, 5.2); ax.set_ylim(-2.1, 2.1); ax.set_aspect("equal"); ax.axis("off")
save(fig, "magnetpulver_streufluss.png")

print("ok")
