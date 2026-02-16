---
marp: true
header: 'Faserverbunde - Seminar Materialtheorie '
theme: h2
paginate: true
math: katex
---
<!-- _class: lead -->
# Seminar Materialtheorie 
## Grundlagen der Kontinuumsmechanik
Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

---
# Agenda

1. Hookesches Gesetz 1D
2. Hookesches Gesetz 3D
3. Hookesches Gesetz 2D
   - Ebener Spannungszustand (ESZ)
   - Ebener Dehnungszustand (EDZ)
4. Rechenaufgaben

---
<!-- _class: lead -->
# 1. Hookesches Gesetz 1D

---
# Hookesches Gesetz 1D - Grundlagen

**Experimentelle Beobachtung:**
Bei elastischen Materialien ist die Dehnung $\varepsilon$ proportional zur Spannung $\sigma$

**Mathematische Formulierung:**
$$\sigma = E \cdot \varepsilon$$

mit:
- $\sigma$ = Normalspannung [N/mm² = MPa]
- $E$ = Elastizitätsmodul [MPa]
- $\varepsilon$ = Dehnung [-]

---
## Herleitung 1D

**Ausgangspunkt:** Stab unter Zugbelastung

$$\varepsilon = \frac{\Delta L}{L_0} = \frac{u'(x)}{L_0}$$

**Spannung:**
$$\sigma = \frac{F}{A}$$

**Linearer elastischer Zusammenhang:**
$$\sigma = E \cdot \varepsilon$$

**Inverse Form:**
$$\varepsilon = \frac{1}{E} \cdot \sigma = S \cdot \sigma$$

mit $S = \frac{1}{E}$ als Nachgiebigkeit (Compliance)

---
## Querkontraktion (Poisson-Effekt)

Bei einachsiger Belastung tritt Querkontraktion auf:

$$\varepsilon_q = -\nu \cdot \varepsilon_l$$

mit:
- $\nu$ = Poissonzahl (Querkontraktionszahl) [-]
- $\varepsilon_q$ = Querdehnung
- $\varepsilon_l$ = Längsdehnung

**Typische Werte:**
- Stahl: $\nu \approx 0.3$
- Gummi: $\nu \approx 0.5$ (inkompressibel)
- Kork: $\nu \approx 0$ (keine Querkontraktion)

---
<!-- _class: lead -->
# 2. Hookesches Gesetz 3D

---
## Spannungs- und Dehnungstensor

**Spannungstensor (symmetrisch):**
$$\boldsymbol{\sigma} = \begin{pmatrix} 
\sigma_{11} & \sigma_{12} & \sigma_{13} \\
\sigma_{12} & \sigma_{22} & \sigma_{23} \\
\sigma_{13} & \sigma_{23} & \sigma_{33}
\end{pmatrix}$$

**Dehnungstensor (symmetrisch):**
$$\boldsymbol{\varepsilon} = \begin{pmatrix} 
\varepsilon_{11} & \varepsilon_{12} & \varepsilon_{13} \\
\varepsilon_{12} & \varepsilon_{22} & \varepsilon_{23} \\
\varepsilon_{13} & \varepsilon_{23} & \varepsilon_{33}
\end{pmatrix}$$

---
## Hookesches Gesetz 3D - Tensorform

**Allgemeine Form:**
$$\boldsymbol{\sigma} = \mathbb{C} : \boldsymbol{\varepsilon}$$

mit $\mathbb{C}$ als Elastizitätstensor 4. Stufe

**Indexnotation:**
$$\sigma_{ij} = C_{ijkl} \cdot \varepsilon_{kl}$$

Für isotrope Materialien: nur 2 unabhängige Konstanten!
- Elastizitätsmodul $E$
- Poissonzahl $\nu$

---

**Alternative Parametrisierung:**
- Lamé-Konstanten: $\lambda$, $\mu$
- Kompressionsmodul $K$, Schubmodul $G$

---
# Hookesches Gesetz 3D - Isotroper Fall

**Normalspannungen:**
$$\varepsilon_{11} = \frac{1}{E}\left[\sigma_{11} - \nu(\sigma_{22} + \sigma_{33})\right]$$
$$\varepsilon_{22} = \frac{1}{E}\left[\sigma_{22} - \nu(\sigma_{11} + \sigma_{33})\right]$$
$$\varepsilon_{33} = \frac{1}{E}\left[\sigma_{33} - \nu(\sigma_{11} + \sigma_{22})\right]$$

---

**Schubspannungen:**
$$\varepsilon_{12} = \frac{1+\nu}{E}\sigma_{12} = \frac{1}{2G}\sigma_{12}$$
$$\varepsilon_{13} = \frac{1+\nu}{E}\sigma_{13} = \frac{1}{2G}\sigma_{13}$$
$$\varepsilon_{23} = \frac{1+\nu}{E}\sigma_{23} = \frac{1}{2G}\sigma_{23}$$

mit Schubmodul: $G = \frac{E}{2(1+\nu)}$

---

# Voigt-Notation (Ingenieurnotation)

Kompakte Darstellung durch Ausnutzung der Symmetrie:

$$\begin{Bmatrix} \sigma_{11} \\ \sigma_{22} \\ \sigma_{33} \\ \sigma_{23} \\ \sigma_{13} \\ \sigma_{12} \end{Bmatrix} = 
\begin{bmatrix}
C_{11} & C_{12} & C_{12} & 0 & 0 & 0 \\
C_{12} & C_{11} & C_{12} & 0 & 0 & 0 \\
C_{12} & C_{12} & C_{11} & 0 & 0 & 0 \\
0 & 0 & 0 & C_{44} & 0 & 0 \\
0 & 0 & 0 & 0 & C_{44} & 0 \\
0 & 0 & 0 & 0 & 0 & C_{44}
\end{bmatrix}
\begin{Bmatrix} \varepsilon_{11} \\ \varepsilon_{22} \\ \varepsilon_{33} \\ 2\varepsilon_{23} \\ 2\varepsilon_{13} \\ 2\varepsilon_{12} \end{Bmatrix}$$

mit: $C_{11} = \frac{E(1-\nu)}{(1+\nu)(1-2\nu)}$, $C_{12} = \frac{E\nu}{(1+\nu)(1-2\nu)}$, $C_{44} = G = \frac{E}{2(1+\nu)}$

---

<!-- _class: lead -->
# 3. Hookesches Gesetz 2D

---
# 2D-Vereinfachungen

**Zwei wichtige Sonderfälle:**

1. **Ebener Spannungszustand (ESZ)**
   - Plane Stress State (PSS)
   - Dünne Scheiben, Platten
   - $\sigma_{33} = \sigma_{13} = \sigma_{23} = 0$

2. **Ebener Dehnungszustand (EDZ)**
   - Plane Strain State (PES)
   - Lange Strukturen (Staudämme, Tunnel)
   - $\varepsilon_{33} = \varepsilon_{13} = \varepsilon_{23} = 0$

---
# Ebener Spannungszustand (ESZ)

**Annahmen:**
- $\sigma_{33} = \sigma_{13} = \sigma_{23} = 0$
- $\varepsilon_{33} \neq 0$ (freie Querkontraktion!)

**Herleitung:**
Aus dem 3D-Gesetz für $\sigma_{33} = 0$:
$$\varepsilon_{33} = \frac{1}{E}\left[0 - \nu(\sigma_{11} + \sigma_{22})\right] = -\frac{\nu}{E}(\sigma_{11} + \sigma_{22})$$

---

**Verbleibende Gleichungen:**
$$\varepsilon_{11} = \frac{1}{E}[\sigma_{11} - \nu\sigma_{22}]$$
$$\varepsilon_{22} = \frac{1}{E}[\sigma_{22} - \nu\sigma_{11}]$$
$$\varepsilon_{12} = \frac{1+\nu}{E}\sigma_{12}$$

---
# Elastizitätsmatrix

**Inverse Form (Spannungen aus Dehnungen):**

$$\begin{Bmatrix} \sigma_{11} \\ \sigma_{22} \\ \sigma_{12} \end{Bmatrix} = 
\frac{E}{1-\nu^2}
\begin{bmatrix}
1 & \nu & 0 \\
\nu & 1 & 0 \\
0 & 0 & \frac{1-\nu}{2}
\end{bmatrix}
\begin{Bmatrix} \varepsilon_{11} \\ \varepsilon_{22} \\ 2\varepsilon_{12} \end{Bmatrix}$$

**Anwendung:** Bleche, Membranen, dünne Platten unter Scheibenbeanspruchung

---
# Ebener Dehnungszustand (EDZ)

**Annahmen:**
- $\varepsilon_{33} = \varepsilon_{13} = \varepsilon_{23} = 0$
- $\sigma_{33} \neq 0$ (Behinderung in z-Richtung!)

**Herleitung:**
Aus $\varepsilon_{33} = 0$:
$$0 = \frac{1}{E}[\sigma_{33} - \nu(\sigma_{11} + \sigma_{22})]$$
$$\Rightarrow \sigma_{33} = \nu(\sigma_{11} + \sigma_{22})$$

---

**Verbleibende Gleichungen:**
$$\varepsilon_{11} = \frac{1}{E}[\sigma_{11} - \nu\sigma_{22}] - \frac{\nu}{E}\sigma_{33}$$

Nach Einsetzen von $\sigma_{33}$:
$$\varepsilon_{11} = \frac{1+\nu}{E}[(1-\nu)\sigma_{11} - \nu\sigma_{22}]$$

---
# Ebener Dehnungszustand - Steifigkeitsmatrix

**Inverse Form:**

$$\begin{Bmatrix} \sigma_{11} \\ \sigma_{22} \\ \sigma_{12} \end{Bmatrix} = 
\frac{E}{(1+\nu)(1-2\nu)}
\begin{bmatrix}
1-\nu & \nu & 0 \\
\nu & 1-\nu & 0 \\
0 & 0 & \frac{1-2\nu}{2}
\end{bmatrix}
\begin{Bmatrix} \varepsilon_{11} \\ \varepsilon_{22} \\ 2\varepsilon_{12} \end{Bmatrix}$$

**Zusätzlich:**
$$\sigma_{33} = \nu(\sigma_{11} + \sigma_{22})$$

**Anwendung:** Staudämme, Tunnel, dicke Zylinder unter innerem Druck

---
# Vergleich ESZ vs. EDZ

| Eigenschaft | ESZ | EDZ |
|------------|-----|-----|
| Geometrie | dünn in z-Richtung | lang in z-Richtung |
| $\sigma_{33}$ | $= 0$ | $\neq 0$ |
| $\varepsilon_{33}$ | $\neq 0$ | $= 0$ |
| Vorfaktor | $\frac{E}{1-\nu^2}$ | $\frac{E}{(1+\nu)(1-2\nu)}$ |
| Schubmodul | $G = \frac{E}{2(1+\nu)}$ | $G = \frac{E}{2(1+\nu)}$ (gleich!) |
| Beispiele | Blech, Platte | Tunnel, Damm |

**Wichtig:** Bei $\nu = 0$ sind ESZ und EDZ identisch!

---
<!-- _class: lead -->
# Rechenaufgaben

---
# Aufgabe 1: 1D-Stab

**Gegeben:**
- Stahl: $E = 210\,000$ MPa, $\nu = 0.3$
- Stablänge: $L_0 = 1000$ mm
- Querschnitt: $A = 100$ mm²
- Zugkraft: $F = 20$ kN

**Gesucht:**
a) Spannung $\sigma$
b) Dehnung $\varepsilon$
c) Verlängerung $\Delta L$
d) Querdehnung $\varepsilon_q$

---
## Lösung Aufgabe 1

a) **Spannung:**
$$\sigma = \frac{F}{A} = \frac{20\,000\text{ N}}{100\text{ mm}^2} = 200\text{ MPa}$$

b) **Dehnung:**
$$\varepsilon = \frac{\sigma}{E} = \frac{200}{210\,000} = 9.524 \times 10^{-4} = 0.0009524$$

c) **Verlängerung:**
$$\Delta L = \varepsilon \cdot L_0 = 0.0009524 \times 1000 = 0.952\text{ mm}$$

d) **Querdehnung:**
$$\varepsilon_q = -\nu \cdot \varepsilon = -0.3 \times 0.0009524 = -2.857 \times 10^{-4}$$

---
## Aufgabe 2: 3D-Spannungszustand

**Gegeben:**
- Aluminium: $E = 70\,000$ MPa, $\nu = 0.33$
- Spannungszustand:
$$\boldsymbol{\sigma} = \begin{pmatrix} 100 & 20 & 0 \\ 20 & 50 & 0 \\ 0 & 0 & -30 \end{pmatrix}\text{ MPa}$$

**Gesucht:**
a) Dehnungstensor $\boldsymbol{\varepsilon}$
b) Schubmodul $G$

---
## Lösung Aufgabe 2

a) **Normaldehnungen:**
$$\varepsilon_{11} = \frac{1}{70\,000}[100 - 0.33(50 - 30)] = \frac{1}{70\,000}[100 - 6.6] = 1.334 \times 10^{-3}$$

$$\varepsilon_{22} = \frac{1}{70\,000}[50 - 0.33(100 - 30)] = \frac{1}{70\,000}[50 - 23.1] = 3.843 \times 10^{-4}$$

$$\varepsilon_{33} = \frac{1}{70\,000}[-30 - 0.33(100 + 50)] = \frac{1}{70\,000}[-30 - 49.5] = -1.136 \times 10^{-3}$$

**Schubdehnung:**
$$\varepsilon_{12} = \frac{1 + 0.33}{70\,000} \times 20 = 3.8 \times 10^{-4}$$

---
## Lösung Aufgabe 2 (Fortsetzung)

**Dehnungstensor:**
$$\boldsymbol{\varepsilon} = \begin{pmatrix} 
1.334 & 0.38 & 0 \\
0.38 & 0.384 & 0 \\
0 & 0 & -1.136
\end{pmatrix} \times 10^{-3}$$

b) **Schubmodul:**
$$G = \frac{E}{2(1+\nu)} = \frac{70\,000}{2(1 + 0.33)} = \frac{70\,000}{2.66} = 26\,316\text{ MPa}$$

---
## Aufgabe 3: ESZ vs. EDZ

**Gegeben:**
- Material: $E = 200\,000$ MPa, $\nu = 0.25$
- Dehnungen: $\varepsilon_{11} = 0.001$, $\varepsilon_{22} = -0.0005$, $\varepsilon_{12} = 0.0002$

**Gesucht:**
a) Spannungen für ESZ
b) Spannungen für EDZ (inkl. $\sigma_{33}$)
c) Querdehnung $\varepsilon_{33}$ für ESZ

---
## Lösung Aufgabe 3

a) **ESZ:**
$$\begin{Bmatrix} \sigma_{11} \\ \sigma_{22} \\ \sigma_{12} \end{Bmatrix} = 
\frac{200\,000}{1-0.25^2}
\begin{bmatrix}
1 & 0.25 & 0 \\
0.25 & 1 & 0 \\
0 & 0 & 0.375
\end{bmatrix}
\begin{Bmatrix} 0.001 \\ -0.0005 \\ 0.0004 \end{Bmatrix}$$

$$= 213\,333 \begin{bmatrix}
1 & 0.25 & 0 \\
0.25 & 1 & 0 \\
0 & 0 & 0.375
\end{bmatrix}
\begin{Bmatrix} 0.001 \\ -0.0005 \\ 0.0004 \end{Bmatrix}$$

$$\sigma_{11} = 213\,333(0.001 - 0.000125) = 186.67\text{ MPa}$$
$$\sigma_{22} = 213\,333(-0.0005 + 0.00025) = -53.33\text{ MPa}$$
$$\sigma_{12} = 213\,333 \times 0.375 \times 0.0004 = 32\text{ MPa}$$

---
## Lösung Aufgabe 3 (Fortsetzung)

b) **EDZ:**
$$\begin{Bmatrix} \sigma_{11} \\ \sigma_{22} \\ \sigma_{12} \end{Bmatrix} = 
\frac{200\,000}{(1+0.25)(1-2 \times 0.25)}
\begin{bmatrix}
0.75 & 0.25 & 0 \\
0.25 & 0.75 & 0 \\
0 & 0 & 0.25
\end{bmatrix}
\begin{Bmatrix} 0.001 \\ -0.0005 \\ 0.0004 \end{Bmatrix}$$

$$= 320\,000 \begin{bmatrix}
0.75 & 0.25 & 0 \\
0.25 & 0.75 & 0 \\
0 & 0 & 0.25
\end{bmatrix}
\begin{Bmatrix} 0.001 \\ -0.0005 \\ 0.0004 \end{Bmatrix}$$

$$\sigma_{11} = 320\,000(0.00075 - 0.000125) = 200\text{ MPa}$$
$$\sigma_{22} = 320\,000(-0.000375 + 0.00025) = -40\text{ MPa}$$
$$\sigma_{12} = 320\,000 \times 0.25 \times 0.0004 = 32\text{ MPa}$$

$$\sigma_{33} = 0.25(200 - 40) = 40\text{ MPa}$$

---
## Lösung Aufgabe 3 (Fortsetzung)

c) **Querdehnung bei ESZ:**
$$\varepsilon_{33} = -\frac{\nu}{E}(\sigma_{11} + \sigma_{22})$$
$$= -\frac{0.25}{200\,000}(186.67 - 53.33)$$
$$= -\frac{0.25}{200\,000} \times 133.34$$
$$= -1.667 \times 10^{-4}$$

**Interpretation:**
- Bei ESZ: freie Querkontraktionen → $\varepsilon_{33} \neq 0$
- Bei EDZ: behinderte Querdehnung → $\sigma_{33} \neq 0$

---
## Aufgabe 4: Praktisches Problem

**Gegeben:**
Eine rechteckige Aluminiumplatte (ESZ):
- Abmessungen: $200 \times 100 \times 2$ mm³
- Material: $E = 70\,000$ MPa, $\nu = 0.33$
- Belastung: Zugkraft in x-Richtung $F_x = 14$ kN

**Gesucht:**
a) Spannung $\sigma_{11}$
b) Dehnung $\varepsilon_{11}$
c) Längenänderung in x-Richtung
d) Breite nach Belastung
e) Dicke nach Belastung

---
## Lösung Aufgabe 4

a) **Spannung:**
$$\sigma_{11} = \frac{F_x}{A} = \frac{14\,000}{100 \times 2} = 70\text{ MPa}$$
$$\sigma_{22} = 0, \quad \sigma_{12} = 0 \quad \text{(einachsige Belastung)}$$

b) **Dehnung:**
$$\varepsilon_{11} = \frac{1}{E}[\sigma_{11} - \nu \sigma_{22}] = \frac{70}{70\,000} = 0.001 = 0.1\%$$

c) **Längenänderung:**
$$\Delta L_x = \varepsilon_{11} \times L_x = 0.001 \times 200 = 0.2\text{ mm}$$

---
# Lösung Aufgabe 4 (Fortsetzung)

d) **Querdehnung (y-Richtung):**
$$\varepsilon_{22} = \frac{1}{E}[\sigma_{22} - \nu \sigma_{11}] = \frac{1}{70\,000}[0 - 0.33 \times 70] = -3.3 \times 10^{-4}$$

$$\Delta L_y = \varepsilon_{22} \times L_y = -3.3 \times 10^{-4} \times 100 = -0.033\text{ mm}$$

**Neue Breite:** $100 - 0.033 = 99.967$ mm

e) **Querdehnung (z-Richtung):**
$$\varepsilon_{33} = -\frac{\nu}{E}(\sigma_{11} + \sigma_{22}) = -\frac{0.33}{70\,000} \times 70 = -3.3 \times 10^{-4}$$

$$\Delta t = \varepsilon_{33} \times t = -3.3 \times 10^{-4} \times 2 = -0.00066\text{ mm}$$

**Neue Dicke:** $2 - 0.00066 \approx 1.999$ mm

---
# Zusammenfassung

**1D:**
$$\sigma = E \cdot \varepsilon, \quad \varepsilon_q = -\nu \cdot \varepsilon_l$$

**3D (isotrop):**
$$\varepsilon_{ij} = \frac{1+\nu}{E}\sigma_{ij} - \frac{\nu}{E}\sigma_{kk}\delta_{ij}$$

**ESZ:** Dünne Strukturen
$$\sigma_{33} = 0, \quad \varepsilon_{33} = -\frac{\nu}{E}(\sigma_{11} + \sigma_{22})$$

**EDZ:** Lange Strukturen
$$\varepsilon_{33} = 0, \quad \sigma_{33} = \nu(\sigma_{11} + \sigma_{22})$$

---
# Vielen Dank für Ihre Aufmerksamkeit!

## Literaturempfehlungen
1. **Altenbach, H. et al.** - "Kontinuumsmechanik" (2015)
2. **Gross, D. et al.** - "Technische Mechanik 2: Elastostatik" (2019)
3. **Haupt, P.** - "Continuum Mechanics and Theory of Materials" (2002)

## Fragen?

---
# Zusatzinformationen: Materialparameter

| Material | E [GPa] | ν [-] | G [GPa] |
|----------|---------|-------|---------|
| Stahl | 210 | 0.30 | 81 |
| Aluminium | 70 | 0.33 | 26 |
| Titan | 110 | 0.34 | 41 |
| Kupfer | 120 | 0.34 | 45 |
| Beton | 30 | 0.20 | 12.5 |
| Glas | 70 | 0.23 | 28 |