---
marp: true
theme: h2
header: 'Seminar – UD-Schicht Elastizitätsgesetz'
footer: ''
title: Faserverbundwerkstoffe – Seminar UD-Schicht Elastizitätsgesetz
author: Christian Willberg
paginate: true
math: katex
---

<style>
footer {
    font-size: 14px;
    color: #888;
    text-align: right;
}
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
.aufgabe {
    background: #fdf2e9;
    border: 2px solid #e67e22;
    border-radius: 8px;
    padding: 14px 20px;
    margin: 10px 0;
}
.aufgabe strong {
    color: #d35400;
}
.loesung {
    background: #eafaf1;
    border-left: 4px solid #27ae60;
    padding: 12px 18px;
    margin: 10px 0;
    border-radius: 0 6px 6px 0;
}
.eq {
    background: #f4ecf7;
    border: 1px solid #c39bd3;
    border-radius: 8px;
    padding: 10px 20px;
    text-align: center;
    margin: 12px 0;
}
.hinweis {
    background: #eaf2f8;
    border-left: 4px solid #2e86c1;
    padding: 10px 16px;
    margin: 8px 0;
    border-radius: 0 6px 6px 0;
    font-size: 20px;
}
.warnung {
    background: #fdf2f2;
    border-left: 4px solid #e74c3c;
    padding: 10px 16px;
    margin: 8px 0;
    border-radius: 0 6px 6px 0;
    font-size: 20px;
}
.zwei-spalten {
    display: flex;
    gap: 36px;
}
.zwei-spalten > div {
    flex: 1;
}
table {
    border-collapse: collapse;
    width: 100%;
    margin: 10px 0;
    font-size: 19px;
}
th {
    background: #1a5276;
    color: white;
    padding: 7px 12px;
    text-align: left;
}
td {
    padding: 6px 12px;
    border-bottom: 1px solid #d5dbdb;
}
tr:nth-child(even) td {
    background: #f2f3f4;
}
ul { padding-left: 20px; margin: 6px 0; }
li { margin-bottom: 4px; }
</style>

# Seminar Faserverbundwerkstoffe – UD-Schicht Elastizitätsgesetz

Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

Kontakt: christian.willberg@h2.de

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Faserverbundwerkstoffe/composites_06_seminar/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

# Übersicht der Gleichungen

| Nr. | Gleichung | Bedeutung |
|-----|-----------|-----------|
| (1) | $\nu_{\text{quer,längs}} = -\varepsilon_{\text{quer}} / \varepsilon_{\text{längs}}$ | Querkontraktionszahl |
| (2) | $\nu_{\perp\parallel}/E_{\parallel} = \nu_{\parallel\perp}/E_{\perp}$ | Symmetriebedingung |
| (3) | $G_{\perp\perp} = E_{\perp} / [2(1+\nu_{\perp\perp})]$ | Schubmodul (isotr. Ebene) |
| (4) | $\boldsymbol{\varepsilon} = \mathbf{S}\,\boldsymbol{\sigma}$ | Nachgiebigkeitsbeziehung (3D) |
| (5) | $\boldsymbol{\sigma} = \mathbf{C}\,\boldsymbol{\varepsilon}$ | Steifigkeitsbeziehung (3D) |
| (6) | $\boldsymbol{\sigma} = \mathbf{Q}\,\boldsymbol{\varepsilon}$ | Steifigkeitsbeziehung (ESZ) |
| (7) | $Q_{11} = E_{\parallel}/(1-\nu_{\perp\parallel}\nu_{\parallel\perp})$ | Q-Matrix Eintrag |
| (8) | $Q_{22} = E_{\perp}/(1-\nu_{\perp\parallel}\nu_{\parallel\perp})$ | Q-Matrix Eintrag |
| (9) | $Q_{12} = \nu_{\perp\parallel} E_{\perp}/(1-\nu_{\perp\parallel}\nu_{\parallel\perp})$ | Q-Matrix Eintrag |
| (10) | $\boldsymbol{\sigma} = \mathbf{Q}(\boldsymbol{\varepsilon} - \boldsymbol{\alpha}\Delta T - \boldsymbol{\beta}\Delta m)$ | Thermo-hygro-elastisch (ESZ) |

---

# Typische Kennwerte im Vergleich

| Werkstoff | $E_{\parallel}$ [GPa] | $E_{\perp}$ [GPa] | $G_{\perp\parallel}$ [GPa] | $\nu_{\perp\parallel}$ |
|-----------|----------------------|-------------------|---------------------------|----------------------|
| CFK T300/914 | 138 | 9 | 7 | 0,28 |
| GFK E-Glas/EP | 46 | 10 | 4,5 | 0,25 |
| Aramid/EP | 76 | 5,5 | 2,1 | 0,34 |
| Stahl (isotrop) | 210 | 210 | 81 | 0,30 |

<div class="hinweis">

Der Orthotropiegrad $E_{\parallel}/E_{\perp}$ ist ein Maß für die Richtungsabhängigkeit: CFK ≈ 15, GFK ≈ 5, Stahl = 1.

</div>

---

## Spannungskomponenten der UD-Schicht

<div class="zwei-spalten">
<div>

**Normalspannungen:**
- Längs: $\sigma_{\parallel}$ (Index 1, Faserrichtung)
- Quer: $\sigma_{\perp}$ (Index 2, 3)

**Schubspannungen:**
- Quer-Längs: $\tau_{\perp\parallel}$ (Index 12, 13)
- Quer-Quer: $\tau_{\perp\perp}$ (Index 23)

**Indizierungsregel:**
1. Index → Normalenrichtung der Wirkfläche
2. Index → Richtung der Kraft

</div>
<div>

**Verzerrungen:**
- Dehnung längs: $\varepsilon_{\parallel} = \varepsilon_1$
- Dehnung quer: $\varepsilon_{\perp} = \varepsilon_2 = \varepsilon_3$
- Schiebung: $\gamma_{\perp\parallel}$, $\gamma_{\perp\perp}$

**Notation:**
$$\parallel \;\leftrightarrow\; 1,\, x,\, L \quad \text{(Faserrichtung)}$$
$$\perp \;\leftrightarrow\; 2,\, 3,\, y,\, z,\, T$$

</div>
</div>



---

# Querkontraktionszahl

<div class="eq">

$$\nu_{\text{quer,längs}} = -\frac{\varepsilon_{\text{quer}}}{\varepsilon_{\text{längs}}} \qquad \frac{\nu_{\perp\parallel}}{E_{\parallel}} = \frac{\nu_{\parallel\perp}}{E_{\perp}}$$

</div>

<div class="aufgabe">

**Aufgabe 1:** Ein UD-Laminat aus CFK wird längs belastet: $\sigma_{\parallel} = 100\,\text{MPa}$, alle anderen Spannungen = 0.

Gegeben: $E_{\parallel} = 140\,\text{GPa}$, $E_{\perp} = 10\,\text{GPa}$, $\nu_{\perp\parallel} = 0{,}3$

(a) Berechne die Längsdehnung $\varepsilon_{\parallel}$.

(b) Berechne die Querdehnung $\varepsilon_{\perp}$ mithilfe von $\nu_{\perp\parallel}$.

(c) Berechne $\nu_{\parallel\perp}$ aus der Symmetriebedingung Gl. (2). Warum gilt $\nu_{\parallel\perp} \ll \nu_{\perp\parallel}$?

</div>

---

# Lösung – Aufgabe 1

<div class="loesung">

**(a)** Längsdehnung:
$$\varepsilon_{\parallel} = \frac{\sigma_{\parallel}}{E_{\parallel}} = \frac{100\,\text{MPa}}{140\,000\,\text{MPa}} = 7{,}14 \times 10^{-4}$$

**(b)** Querdehnung:
$$\varepsilon_{\perp} = -\nu_{\perp\parallel} \cdot \varepsilon_{\parallel} = -0{,}3 \cdot 7{,}14 \times 10^{-4} = \mathbf{-2{,}14 \times 10^{-4}}$$

**(c)** Symmetriebedingung Gl. (2):
$$\nu_{\parallel\perp} = \nu_{\perp\parallel} \cdot \frac{E_{\perp}}{E_{\parallel}} = 0{,}3 \cdot \frac{10}{140} = \mathbf{0{,}021}$$

Da $E_{\parallel} \gg E_{\perp}$: Die steifen Fasern behindern jede Deformation in Längsrichtung bei Querlast – daher ist $\nu_{\parallel\perp}$ sehr klein.

</div>

<div class="warnung">

Falsche Indizierung in FEM-Software erzeugt nicht-symmetrische Steifigkeitsmatrizen → unphysikalische Ergebnisse!

</div>

---

# Transversale Isotropie – Kennwerte

<div class="zwei-spalten">
<div>

**Identische Größen** (isotr. 2-3-Ebene):
- $E_2 = E_3 = E_{\perp}$
- $G_{31} = G_{21} = G_{\perp\parallel}$
- $\nu_{31} = \nu_{21} = \nu_{\perp\parallel}$

**Abhängige Größe:**
$$G_{\perp\perp} = \frac{E_{\perp}}{2(1+\nu_{\perp\perp})}$$

</div>
<div>

**Kennwerte im Vergleich:**

| Kennwert | Bedeutung | Unabh.? |
|----------|-----------|---------|
| $E_{\parallel}$ | Längs-E-Modul | ✓ |
| $E_{\perp}$ | Quer-E-Modul | ✓ |
| $G_{\perp\parallel}$ | Schubmodul längs/quer | ✓ |
| $\nu_{\perp\parallel}$ | große Querkontraktion | ✓ |
| $\nu_{\perp\perp}$ | Querkontraktion (isotr.) | ✓ |
| $G_{\perp\perp}$ | Schubmodul (isotr.) | ✗ |

</div>
</div>

Von 9 orthotropen Konstanten → nur **5 unabhängige** Kennwerte!

---

# Nachgiebigkeitsmatrix der UD-Schicht (3D)

<div class="eq">

$$\begin{bmatrix} \varepsilon_1 \\ \varepsilon_2 \\ \varepsilon_3 \\ \gamma_{23} \\ \gamma_{31} \\ \gamma_{12} \end{bmatrix} =
\begin{bmatrix}
\frac{1}{E_{\parallel}} & -\frac{\nu_{\perp\parallel}}{E_{\parallel}} & -\frac{\nu_{\perp\parallel}}{E_{\parallel}} & 0 & 0 & 0 \\
-\frac{\nu_{\perp\parallel}}{E_{\parallel}} & \frac{1}{E_{\perp}} & -\frac{\nu_{\perp\perp}}{E_{\perp}} & 0 & 0 & 0 \\
-\frac{\nu_{\perp\parallel}}{E_{\parallel}} & -\frac{\nu_{\perp\perp}}{E_{\perp}} & \frac{1}{E_{\perp}} & 0 & 0 & 0 \\
0 & 0 & 0 & \frac{1}{G_{\perp\perp}} & 0 & 0 \\
0 & 0 & 0 & 0 & \frac{1}{G_{\perp\parallel}} & 0 \\
0 & 0 & 0 & 0 & 0 & \frac{1}{G_{\perp\parallel}}
\end{bmatrix}
\begin{bmatrix} \sigma_1 \\ \sigma_2 \\ \sigma_3 \\ \tau_{23} \\ \tau_{31} \\ \tau_{12} \end{bmatrix}$$

</div>

---

# Nachgiebigkeitsmatrix – Aufgabe

<div class="aufgabe">

**Aufgabe 2:** Gegeben für T300/914 CFK:
$$E_{\parallel} = 138\,\text{GPa},\quad E_{\perp} = 9\,\text{GPa},\quad G_{\perp\parallel} = 7\,\text{GPa},\quad \nu_{\perp\parallel} = 0{,}28,\quad \nu_{\perp\perp} = 0{,}4$$

(a) Berechne $G_{\perp\perp}$ aus Gl. (3).

(b) Berechne alle Nebendiagonaleinträge $S_{12}$, $S_{13}$, $S_{23}$ der Nachgiebigkeitsmatrix.

(c) Spannungszustand: $\sigma_1 = 200\,\text{MPa}$, $\sigma_2 = 10\,\text{MPa}$, alle anderen = 0.
Berechne $\varepsilon_1$, $\varepsilon_2$ und $\varepsilon_3$.

</div>

---

# Lösung – Aufgabe 2a,b

<div class="loesung">

**(a)** $G_{\perp\perp} = \dfrac{E_{\perp}}{2(1+\nu_{\perp\perp})} = \dfrac{9}{2 \cdot 1{,}4} = \mathbf{3{,}21\,\text{GPa}}$

**(b)** Nebendiagonaleinträge:

$$S_{12} = S_{13} = -\frac{\nu_{\perp\parallel}}{E_{\parallel}} = -\frac{0{,}28}{138\,000} = -2{,}03 \times 10^{-3}\,\text{GPa}^{-1}$$

$$S_{23} = -\frac{\nu_{\perp\perp}}{E_{\perp}} = -\frac{0{,}4}{9} = -44{,}4 \times 10^{-3}\,\text{GPa}^{-1}$$

</div>

<div class="hinweis">

$|S_{23}| \gg |S_{12}|$: Die Querkontraktion in der isotropen Ebene ist viel größer als die Kopplung Längs↔Quer – typisch für faserverstärkte Werkstoffe.

</div>

---

# Lösung – Aufgabe 2c

<div class="loesung">

**(c)** Mit $S_{11} = 1/138 = 7{,}25\cdot10^{-3}$, $S_{22} = 1/9 = 111{,}1\cdot10^{-3}$ (in $\text{GPa}^{-1}$):

$$\varepsilon_1 = S_{11}\sigma_1 + S_{12}\sigma_2 = 7{,}25\cdot10^{-3}\cdot0{,}2 + (-2{,}03\cdot10^{-3})\cdot0{,}01$$
$$= 1{,}450\cdot10^{-3} - 2{,}03\cdot10^{-5} = \mathbf{1{,}429\cdot10^{-3}}$$

$$\varepsilon_2 = S_{12}\sigma_1 + S_{22}\sigma_2 = (-2{,}03\cdot10^{-3})\cdot0{,}2 + 111{,}1\cdot10^{-3}\cdot0{,}01$$
$$= -4{,}06\cdot10^{-4} + 1{,}111\cdot10^{-3} = \mathbf{7{,}05\cdot10^{-4}}$$

$$\varepsilon_3 = S_{13}\sigma_1 + S_{23}\sigma_2 = -4{,}06\cdot10^{-4} + (-44{,}4\cdot10^{-3})\cdot0{,}01 = \mathbf{-8{,}5\cdot10^{-4}}$$

</div>

→ Beachte: $\varepsilon_2 \neq \varepsilon_3$ bei biaxialem Spannungszustand – transversale Isotropie bedeutet Gleichheit der Steifigkeiten, nicht der Dehnungen!

---

# Eigenschaften der Steifigkeitsmatrix

**Drei wichtige Eigenschaften von $\mathbf{C}$ und $\mathbf{S}$:**

<div class="zwei-spalten">
<div>

**1. Symmetrie**
$$C_{ij} = C_{ji} \quad \Rightarrow \quad \mathbf{C}^T = \mathbf{C}$$
Folgt aus Maxwell-Betti-Reziprozität.

**2. Invertierbarkeit**
$$\mathbf{C}^{-1} = \mathbf{S} \quad \Leftrightarrow \quad \mathbf{S}^{-1} = \mathbf{C}$$

</div>
<div>

**3. Positive Definitheit**
$$\text{alle Eigenwerte } \lambda_i > 0$$
Physikalisch: Verzerrungsenergie stets positiv.

**Konsequenz für Kennwerte:**
$$|{\nu_{\perp\parallel}}| < \sqrt{\frac{E_{\parallel}}{E_{\perp}}}$$

</div>
</div>

<div class="hinweis">

Für CFK mit $E_{\parallel}/E_{\perp} = 15{,}3$: $\nu_{\perp\parallel} < 3{,}9$ – diese Schranke ist in der Praxis nie aktiv, aber theoretisch wichtig.

</div>

---

# Aufgabe 3 – Materialidentifikation

<div class="aufgabe">

**Aufgabe 3:** Aus Zugversuchen wurden folgende Messungen an einer unbekannten UD-Schicht gewonnen:

| Belastung | Gemessene Dehnung |
|-----------|-------------------|
| $\sigma_1 = 100\,\text{MPa}$ | $\varepsilon_1 = 7{,}14\cdot10^{-4}$, $\varepsilon_2 = -2{,}14\cdot10^{-4}$ |
| $\sigma_2 = 50\,\text{MPa}$ | $\varepsilon_2 = 5{,}0\cdot10^{-3}$, $\varepsilon_1 = -7{,}5\cdot10^{-5}$ |
| $\tau_{12} = 30\,\text{MPa}$ | $\gamma_{12} = 1{,}0\cdot10^{-2}$ |

(a) Bestimme $E_{\parallel}$, $E_{\perp}$, $G_{\perp\parallel}$, $\nu_{\perp\parallel}$ aus den Messdaten.

(b) Prüfe die Symmetriebedingung Gl. (2) mit den ermittelten Werten.

(c) Um welchen Werkstoff handelt es sich (vgl. Tabelle Folie 3)?

</div>

---

# Lösung – Aufgabe 3

<div class="loesung">

**(a)** Direkt aus den Definitionen:
$$E_{\parallel} = \frac{\sigma_1}{\varepsilon_1} = \frac{100}{7{,}14\cdot10^{-4}} = \mathbf{140\,\text{GPa}}$$
$$E_{\perp} = \frac{\sigma_2}{\varepsilon_2} = \frac{50}{5{,}0\cdot10^{-3}} = \mathbf{10\,\text{GPa}}$$
$$G_{\perp\parallel} = \frac{\tau_{12}}{\gamma_{12}} = \frac{30}{1{,}0\cdot10^{-2}} = \mathbf{3\,\text{GPa}}$$
$$\nu_{\perp\parallel} = -\frac{\varepsilon_2}{\varepsilon_1}\bigg|_{\sigma_1} = -\frac{-2{,}14\cdot10^{-4}}{7{,}14\cdot10^{-4}} = \mathbf{0{,}30}$$

**(b)** Check: $\nu_{\parallel\perp} = -\varepsilon_1/\varepsilon_2|_{\sigma_2} = 7{,}5\cdot10^{-5}/5{,}0\cdot10^{-3} = 0{,}015$; Gl. (2): $0{,}30/140 = 0{,}015/10$ ✓

**(c)** $E_{\parallel}=140$, $E_{\perp}=10$, $\nu_{\perp\parallel}=0{,}30$ → **CFK** (ähnlich T300/914, leicht anderer $G_{\perp\parallel}$)

</div>

---

# Ebener Spannungszustand (ESZ) – Q-Matrix

<div class="eq">

$$\begin{bmatrix} \sigma_{11} \\ \sigma_{22} \\ \tau_{12} \end{bmatrix} =
\begin{bmatrix}
Q_{11} & Q_{12} & 0 \\
Q_{12} & Q_{22} & 0 \\
0 & 0 & Q_{66}
\end{bmatrix}
\begin{bmatrix} \varepsilon_{11} \\ \varepsilon_{22} \\ \gamma_{12} \end{bmatrix}
\qquad Q_{66} = G_{\perp\parallel}$$

</div>

<div class="zwei-spalten">
<div>

**Ebener Spannungszustand (ESZ)**
$\sigma_{33} = \tau_{13} = \tau_{23} = 0$

- Dünne Schichten und Laminate
- Standard in der Laminattheorie
- $\varepsilon_{33} \neq 0$ tritt auf!

$$\varepsilon_{33} = S_{13}\sigma_{11} + S_{23}\sigma_{22}$$

</div>
<div>

**Ebener Dehnungszustand (EDZ)**
$\varepsilon_{33} = 0$

- Lange Strukturen (Stringer, Tunnel)
- $\sigma_{33} \neq 0$ muss mitgeführt werden
- Andere reduzierte Steifigkeitsmatrix!

</div>
</div>

---

# Q-Matrix – Aufgabe

<div class="aufgabe">

**Aufgabe 4:** Nutze die Materialwerte aus Aufgabe 2 ($E_{\parallel} = 138$, $E_{\perp} = 9$, $G_{\perp\parallel} = 7$ GPa, $\nu_{\perp\parallel} = 0{,}28$).

(a) Berechne $\nu_{\parallel\perp}$ nach Gl. (2) und den Nennerterm $D = 1 - \nu_{\perp\parallel}\nu_{\parallel\perp}$.

(b) Bestimme alle Einträge $Q_{11}$, $Q_{22}$, $Q_{12}$, $Q_{66}$ nach Gl. (7)–(9).

(c) Berechne die Dehnungen im ESZ bei $\sigma_{11} = 120\,\text{MPa}$, $\sigma_{22} = -30\,\text{MPa}$, $\tau_{12} = 20\,\text{MPa}$.
(Nutze $\mathbf{Q}^{-1} = \mathbf{S}_\text{ESZ}$ mit $S_{11}=1/E_\parallel$, $S_{22}=1/E_\perp$, $S_{12}=-\nu_{\perp\parallel}/E_\parallel$, $S_{66}=1/G_{\perp\parallel}$.)

</div>

---

# Lösung – Aufgabe 4a,b

<div class="loesung">

**(a)**
$$\nu_{\parallel\perp} = 0{,}28 \cdot \frac{9}{138} = 0{,}01826 \qquad D = 1 - 0{,}28 \cdot 0{,}01826 = 0{,}99489$$

**(b)** Q-Matrix Einträge:

$$Q_{11} = \frac{138}{0{,}99489} = \mathbf{138{,}71\,\text{GPa}} \qquad Q_{22} = \frac{9}{0{,}99489} = \mathbf{9{,}05\,\text{GPa}}$$

$$Q_{12} = \frac{0{,}28 \cdot 9}{0{,}99489} = \mathbf{2{,}53\,\text{GPa}} \qquad Q_{66} = \mathbf{7\,\text{GPa}}$$

</div>

---

# Lösung – Aufgabe 4c

<div class="loesung">

**(c)** Dehnungen aus $\boldsymbol{\varepsilon} = \mathbf{S}_\text{ESZ}\,\boldsymbol{\sigma}$:

$$\varepsilon_{11} = \frac{\sigma_{11}}{E_{\parallel}} - \frac{\nu_{\perp\parallel}}{E_{\parallel}}\sigma_{22} = \frac{120}{138\,000} - \frac{0{,}28}{138\,000}\cdot(-30)$$
$$= 8{,}70\cdot10^{-4} + 6{,}09\cdot10^{-5} = \mathbf{9{,}31\cdot10^{-4}}$$

$$\varepsilon_{22} = -\frac{\nu_{\perp\parallel}}{E_{\parallel}}\sigma_{11} + \frac{\sigma_{22}}{E_{\perp}} = -\frac{0{,}28\cdot120}{138\,000} + \frac{-30}{9\,000}$$
$$= -2{,}43\cdot10^{-4} - 3{,}33\cdot10^{-3} = \mathbf{-3{,}58\cdot10^{-3}}$$

$$\gamma_{12} = \frac{\tau_{12}}{G_{\perp\parallel}} = \frac{20}{7\,000} = \mathbf{2{,}86\cdot10^{-3}}$$

</div>

---

# Wärme- und Feuchteausdehnung

<div class="eq">

$$\boldsymbol{\sigma} = \mathbf{Q}\left(\boldsymbol{\varepsilon} - \boldsymbol{\alpha}^T\Delta T - \boldsymbol{\alpha}^m\Delta m\right)$$

$$\boldsymbol{\alpha}^T = \begin{bmatrix} \alpha_{\parallel} \\ \alpha_{\perp} \\ 0 \end{bmatrix} \qquad \boldsymbol{\alpha}^m = \begin{bmatrix} \beta_{\parallel} \\ \beta_{\perp} \\ 0 \end{bmatrix}$$

</div>

**Typische Werte für CFK:**

| Koeffizient | $\alpha_{\parallel}$ | $\alpha_{\perp}$ | $\beta_{\parallel}$ | $\beta_{\perp}$ |
|------------|---------------------|-----------------|--------------------|-----------------| 
| Wert | $0{,}5\cdot10^{-6}$ K⁻¹ | $30\cdot10^{-6}$ K⁻¹ | $\approx 0$ | $0{,}6\cdot10^{-3}$ %RH⁻¹ |

<div class="hinweis">

$\alpha_{\perp} \gg \alpha_{\parallel}$: Die Matrix dehnt sich quer stark aus, die Fasern behindern die Ausdehnung in Längsrichtung. Feuchte wirkt nur auf die Matrix ($\beta_{\parallel} \approx 0$).

</div>

---

# Aufgabe 5 – Thermisch-hygro-elastisch

<div class="aufgabe">

**Aufgabe 5:** Eine CFK-UD-Schicht (Werte aus Aufgabe 4) ist allseitig frei ($\sigma_{11} = \sigma_{22} = \tau_{12} = 0$) und erfährt gleichzeitig:
- Temperaturerhöhung: $\Delta T = +80\,\text{K}$
- Feuchteaufnahme: $\Delta m = +1{,}\!5\,\%$

Gegeben: $\alpha_{\parallel} = 0{,}5\cdot10^{-6}$ K⁻¹, $\alpha_{\perp} = 30\cdot10^{-6}$ K⁻¹, $\beta_{\perp} = 0{,}6\cdot10^{-3}$ %⁻¹, $\beta_{\parallel} \approx 0$

(a) Berechne die freien thermischen Dehnungen $\alpha_{\parallel}\Delta T$ und $\alpha_{\perp}\Delta T$.

(b) Berechne die freien hygroskopischen Dehnungen $\beta_{\parallel}\Delta m$ und $\beta_{\perp}\Delta m$.

(c) Berechne die Gesamtdehnungen $\varepsilon_{11}$ und $\varepsilon_{22}$ (frei = keine Spannungen).

</div>

---

# Lösung – Aufgabe 5

<div class="loesung">

**(a)** Thermische Eigendehnungen:
$$\alpha_{\parallel}\Delta T = 0{,}5\cdot10^{-6} \cdot 80 = \mathbf{4\cdot10^{-5}} \qquad \alpha_{\perp}\Delta T = 30\cdot10^{-6} \cdot 80 = \mathbf{2{,}4\cdot10^{-3}}$$

**(b)** Hygroskopische Eigendehnungen:
$$\beta_{\parallel}\Delta m \approx 0 \qquad \beta_{\perp}\Delta m = 0{,}6\cdot10^{-3} \cdot 1{,}5 = \mathbf{9\cdot10^{-4}}$$

**(c)** Bei freier Schicht ($\boldsymbol{\sigma} = 0$) gilt $\boldsymbol{\varepsilon} = \boldsymbol{\alpha}^T\Delta T + \boldsymbol{\alpha}^m\Delta m$:

$$\varepsilon_{11} = 4\cdot10^{-5} + 0 = \mathbf{4\cdot10^{-5}}$$

$$\varepsilon_{22} = 2{,}4\cdot10^{-3} + 9\cdot10^{-4} = \mathbf{3{,}3\cdot10^{-3}}$$

</div>

→ Die Querdehnung ist ca. **80× größer** als die Längsdehnung – Feuchte und Temperatur wirken fast ausschließlich quer!

---

# Aufgabe 6 – Eingespannte Schicht

<div class="aufgabe">

**Aufgabe 6:** Die Schicht aus Aufgabe 5 ist nun vollständig eingespannt: $\varepsilon_{11} = \varepsilon_{22} = \gamma_{12} = 0$.

(a) Berechne die thermisch-hygroskopischen Zwangsspannungen $\sigma_{11}$ und $\sigma_{22}$ nach Gl. (10) mit den Q-Werten aus Aufgabe 4.

(b) In welche Richtung (Zug/Druck) wirken die Spannungen? Begründe physikalisch.

(c) Bewerte das Risiko für Matrixversagen: Die Querbruchfestigkeit beträgt $R_{\perp}^+ = 50\,\text{MPa}$ (Zug) und $R_{\perp}^- = 150\,\text{MPa}$ (Druck). Ist die Schicht sicher?

</div>

---

# Lösung – Aufgabe 6

<div class="loesung">

**(a)** Zwangsspannungen (Eigendehnungen werden verhindert → negative Vorzeichen):
$$\sigma_{11} = Q_{11}(-4\cdot10^{-5}) + Q_{12}(-3{,}3\cdot10^{-3})$$
$$= 138{,}71\cdot(-4\cdot10^{-5}) + 2{,}53\cdot(-3{,}3\cdot10^{-3}) = -5{,}55\cdot10^{-3} - 8{,}35\cdot10^{-3} = \mathbf{-13{,}9\,\text{MPa}}$$

$$\sigma_{22} = Q_{12}(-4\cdot10^{-5}) + Q_{22}(-3{,}3\cdot10^{-3})$$
$$= 2{,}53\cdot(-4\cdot10^{-5}) + 9{,}05\cdot(-3{,}3\cdot10^{-3}) = -1{,}01\cdot10^{-4} - 29{,}87\cdot10^{-3} = \mathbf{-30{,}0\,\text{MPa}}$$

**(b)** Beide Spannungen sind **Druckspannungen**: Einspannung verhindert die freie Ausdehnung → das Material „will sich ausdehnen", wird aber zusammengedrückt.

**(c)** $|\sigma_{22}| = 30\,\text{MPa} < R_{\perp}^- = 150\,\text{MPa}$ → **sicher** (Sicherheitsfaktor = 5).

</div>

---

# Zusammenfassung – Alle Konzepte

**Spannungskomponenten** → Indizierung $\sigma_{\parallel}$, $\sigma_{\perp}$, $\tau_{\perp\parallel}$, $\tau_{\perp\perp}$

↓

**Querkontraktionszahlen** → Symmetriebedingung $\dfrac{\nu_{\perp\parallel}}{E_{\parallel}} = \dfrac{\nu_{\parallel\perp}}{E_{\perp}}$

↓

**Transversale Isotropie** → 5 unabhängige Kennwerte (statt 9)

↓

**3D-Elastizitätsgesetz** → Nachgiebigkeitsmatrix $\mathbf{S}$, Steifigkeitsmatrix $\mathbf{C}$

↓

**2D-Vereinfachung (ESZ)** → Q-Matrix; Temperatur- und Feuchteeinfluss

↓

**Materialidentifikation** → Kennwerte direkt aus Zugversuchen bestimmbar

---

<!-- _class: lead -->

# Fragen?

Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de