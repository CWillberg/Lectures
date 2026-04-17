---
marp: true
header: 'Seminar – UD-Schicht Elastizitätsgesetz'
theme: h2
paginate: true
math: katex
---

<style>
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

<!-- _class: lead -->

# Seminar – Elastizitätsgesetz der UD-Schicht
## Materialtheorie

Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
Hochschule Magdeburg-Stendal

---

# Übersicht der Gleichungen

| Nr. | Gleichung / Zusammenhang | Bedeutung |
|-----|--------------------------|-----------|
| (1) | $\boldsymbol{\sigma} = \mathbf{C}\,\boldsymbol{\varepsilon}$ | Steifigkeitsbeziehung |
| (2) | $\boldsymbol{\varepsilon} = \mathbf{S}\,\boldsymbol{\sigma}$ | Nachgiebigkeitsbeziehung |
| (3) | $\mathbf{S} = \mathbf{C}^{-1}$ | Invertierbarkeit |
| (4) | $\nu_{\perp\parallel}/E_{\parallel} = \nu_{\parallel\perp}/E_{\perp}$ | Symmetriebedingung |
| (5) | $G_{\perp\perp} = E_{\perp}/[2(1+\nu_{\perp\perp})]$ | transversale Isotropie |
| (6) | $S_{11}=1/E_\parallel,\; S_{12}=-\nu_{\perp\parallel}/E_\parallel$ | Nachgiebigkeitseinträge |
| (7) | $Q_{11}=E_\parallel/(1-\nu_{\perp\parallel}\nu_{\parallel\perp})$ | 2D-Steifigkeitseinträge |
| (8) | $\boldsymbol{\varepsilon} = \mathbf{S}\boldsymbol{\sigma} + \boldsymbol{\alpha}^T\Delta T + \boldsymbol{\alpha}^m\Delta m$ | Thermo-hygrisch |

---

# Motivation: Warum brauchen wir das Elastizitätsgesetz?

<div class="hinweis">

**Kernproblem der Laminattheorie:** Die Gleichgewichtsbeziehungen liefern weniger Gleichungen als Unbekannte → statisch unbestimmt. Das Werkstoffgesetz schließt das System.

</div>

<div class="zwei-spalten">
<div>

**Ohne Werkstoffgesetz:**
- Gleichgewicht: 3 Gleichungen
- Unbekannte Spannungen: 6
- → unlösbar

**Mit Werkstoffgesetz:**
- $\boldsymbol{\sigma} = \mathbf{C}\,\boldsymbol{\varepsilon}$: 6 weitere Gleichungen
- Kinematik: $\boldsymbol{\varepsilon}(\vec{u})$: 6 weitere
- → vollständig bestimmt

</div>
<div>

**Strategie:**
1. Elastizitätsgesetz der UD-Schicht aufstellen
2. Schichten transformieren (Winkellagen)
3. Laminat aus Schichten zusammensetzen
4. Laminatsteifigkeitsmatrix (ABD) berechnen

→ Kosteneffiziente Optimierung am Rechner

</div>
</div>

---

# Wiederholung: Spannungs- und Dehnungstensor

## Voigt-Notation

<div class="eq">

$$\boldsymbol{\sigma} = \begin{bmatrix}\sigma_{11}\\\sigma_{22}\\\sigma_{33}\\\tau_{23}\\\tau_{13}\\\tau_{12}\end{bmatrix}, \qquad
\boldsymbol{\varepsilon} = \begin{bmatrix}\varepsilon_{11}\\\varepsilon_{22}\\\varepsilon_{33}\\\gamma_{23}\\\gamma_{13}\\\gamma_{12}\end{bmatrix}$$

</div>

<div class="hinweis">

**Achtung:** Im Dehnungsvektor stehen die technischen Schiebungen $\gamma_{ij} = 2\varepsilon_{ij}$, im Spannungsvektor aber $\tau_{ij}$ (keine Verdopplung). Dieser Unterschied ist Quelle vieler Fehler!

</div>

---

# Aufgabe 1 – Steifigkeit und Nachgiebigkeit

<div class="aufgabe">

**Aufgabe 1:** Gegeben ist eine UD-Schicht aus CFK mit folgenden Kennwerten:
$$E_\parallel = 140\,000 \; \text{MPa}, \quad E_\perp = 10\,000 \; \text{MPa}$$
$$G_{\perp\parallel} = 5\,000 \; \text{MPa}, \quad \nu_{\perp\parallel} = 0{,}3, \quad \nu_{\perp\perp} = 0{,}4$$

**(a)** Berechne $\nu_{\parallel\perp}$ aus der Symmetriebedingung.

**(b)** Berechne $G_{\perp\perp}$ aus der transversalen Isotropie.

**(c)** Trage alle 5 unabhängigen Elastizitätsgrößen zusammen und kommentiere die Größenordnungsunterschiede.

</div>

---

# Lösung – Aufgabe 1

<div class="loesung">

**(a)** Symmetriebedingung:
$$\frac{\nu_{\perp\parallel}}{E_\parallel} = \frac{\nu_{\parallel\perp}}{E_\perp} \quad\Rightarrow\quad \nu_{\parallel\perp} = \nu_{\perp\parallel}\cdot\frac{E_\perp}{E_\parallel} = 0{,}3\cdot\frac{10\,000}{140\,000} = \mathbf{0{,}0214}$$

**(b)** Transversale Isotropie:
$$G_{\perp\perp} = \frac{E_\perp}{2(1+\nu_{\perp\perp})} = \frac{10\,000}{2\cdot 1{,}4} = \mathbf{3\,571 \; \text{MPa}}$$

**(c)** Zusammenfassung:

| Größe | Wert | Kommentar |
|-------|------|-----------|
| $E_\parallel$ | 140 000 MPa | Faser dominiert |
| $E_\perp$ | 10 000 MPa | Matrix dominiert – **14×** kleiner |
| $G_{\perp\parallel}$ | 5 000 MPa | Matrix dominiert |
| $\nu_{\perp\parallel}$ | 0,30 | groß: Längsbelastung → starke Querkontraktion |
| $\nu_{\parallel\perp}$ | 0,0214 | klein: Querbelastung → kaum Längskontraktion |

</div>

---

# Aufgabe 2 – Nachgiebigkeitsmatrix aufstellen

<div class="aufgabe">

**Aufgabe 2:** Stelle die vollständige **3D-Nachgiebigkeitsmatrix** $\mathbf{S}$ für die UD-Schicht aus Aufgabe 1 auf.

**(a)** Schreibe alle Einträge $S_{ij}$ als Formeln in Ingenieurskonstanten.

**(b)** Setze die Zahlenwerte ein (Einheit: 1/MPa).

**(c)** Überprüfe die Symmetrie: Gilt $S_{12} = S_{21}$?

</div>

<div class="hinweis">

**Merkhilfe für die Einträge:**
$$S_{11} = \frac{1}{E_\parallel}, \quad S_{22}=S_{33}=\frac{1}{E_\perp}, \quad S_{12}=S_{13}=-\frac{\nu_{\perp\parallel}}{E_\parallel}, \quad S_{23}=-\frac{\nu_{\perp\perp}}{E_\perp}$$
$$S_{44}=\frac{1}{G_{\perp\perp}}, \quad S_{55}=S_{66}=\frac{1}{G_{\perp\parallel}}$$

</div>

---

# Lösung – Aufgabe 2

<div class="loesung">

**(a) & (b)** Nachgiebigkeitsmatrix (Einheit: $10^{-6}$/MPa):

$$\mathbf{S} = \begin{bmatrix}
\frac{1}{E_\parallel} & -\frac{\nu_{\perp\parallel}}{E_\parallel} & -\frac{\nu_{\perp\parallel}}{E_\parallel} & 0 & 0 & 0 \\[4pt]
-\frac{\nu_{\perp\parallel}}{E_\parallel} & \frac{1}{E_\perp} & -\frac{\nu_{\perp\perp}}{E_\perp} & 0 & 0 & 0 \\[4pt]
-\frac{\nu_{\perp\parallel}}{E_\parallel} & -\frac{\nu_{\perp\perp}}{E_\perp} & \frac{1}{E_\perp} & 0 & 0 & 0 \\[4pt]
0 & 0 & 0 & \frac{1}{G_{\perp\perp}} & 0 & 0 \\[4pt]
0 & 0 & 0 & 0 & \frac{1}{G_{\perp\parallel}} & 0 \\[4pt]
0 & 0 & 0 & 0 & 0 & \frac{1}{G_{\perp\parallel}}
\end{bmatrix}$$

**(c)** $S_{12} = -\nu_{\perp\parallel}/E_\parallel = -0{,}3/140\,000 = -2{,}14\times10^{-6}$

$S_{21} = -\nu_{\parallel\perp}/E_\perp = -0{,}0214/10\,000 = -2{,}14\times10^{-6}$ ✓

</div>

---

# Aufgabe 3 – Dehnungen berechnen

<div class="aufgabe">

**Aufgabe 3:** Die UD-Schicht aus Aufgabe 1 wird einachsig in Faserrichtung belastet:
$$\sigma_{11} = 200 \; \text{MPa}, \quad \text{alle anderen } \sigma_{ij} = 0$$

**(a)** Berechne alle Dehnungskomponenten $\varepsilon_{11}$, $\varepsilon_{22}$, $\varepsilon_{33}$.

**(b)** Interpretiere das Vorzeichen von $\varepsilon_{22}$ und $\varepsilon_{33}$.

**(c)** Wie groß wäre $\varepsilon_{22}$ bei isotropem Stahl ($E=210\,000$ MPa, $\nu=0{,}3$) unter gleicher Last? Vergleiche mit der UD-Schicht.

</div>

---

# Lösung – Aufgabe 3

<div class="loesung">

**(a)** $\boldsymbol{\varepsilon} = \mathbf{S}\,\boldsymbol{\sigma}$, nur $\sigma_{11}\neq 0$:

$$\varepsilon_{11} = S_{11}\cdot\sigma_{11} = \frac{200}{140\,000} = \mathbf{1{,}43\times10^{-3}}$$

$$\varepsilon_{22} = S_{21}\cdot\sigma_{11} = -\frac{\nu_{\parallel\perp}}{E_\perp}\cdot\sigma_{11} = -\frac{0{,}0214}{10\,000}\cdot200 = \mathbf{-4{,}29\times10^{-4}}$$

$$\varepsilon_{33} = S_{31}\cdot\sigma_{11} = \varepsilon_{22} = \mathbf{-4{,}29\times10^{-4}}$$

**(b)** Negatives Vorzeichen = Querkontraktion (Einschnürung). $\varepsilon_{22}=\varepsilon_{33}$ wegen transversaler Isotropie – die isotrope Ebene kontrahiert gleichmäßig.

**(c)** Stahl: $\varepsilon_{22} = -\nu\cdot\sigma/E = -0{,}3\cdot200/210\,000 = -2{,}86\times10^{-4}$

→ UD-Schicht kontrahiert quer ~1,5× **mehr** als Stahl, obwohl $\nu_{\parallel\perp}$ viel kleiner ist – wegen des sehr niedrigen $E_\perp$!

</div>

---

# Aufgabe 4 – Querbelastung und Symmetriebedingung

<div class="aufgabe">

**Aufgabe 4:** Dieselbe UD-Schicht wird nun einachsig **quer zur Faser** belastet:
$$\sigma_{22} = 20 \; \text{MPa}, \quad \text{alle anderen } \sigma_{ij} = 0$$

**(a)** Berechne $\varepsilon_{11}$, $\varepsilon_{22}$, $\varepsilon_{33}$.

**(b)** Vergleiche $\varepsilon_{11}$ aus (a) mit $\varepsilon_{22}$ aus Aufgabe 3a. Was fällt auf?

**(c)** Begründe den Zusammenhang über die Symmetriebedingung $S_{12}=S_{21}$.

</div>

---

# Lösung – Aufgabe 4

<div class="loesung">

**(a)**

$$\varepsilon_{22} = S_{22}\cdot\sigma_{22} = \frac{20}{10\,000} = \mathbf{2{,}00\times10^{-3}}$$

$$\varepsilon_{11} = S_{12}\cdot\sigma_{22} = -\frac{\nu_{\perp\parallel}}{E_\parallel}\cdot\sigma_{22} = -\frac{0{,}3}{140\,000}\cdot20 = \mathbf{-4{,}29\times10^{-5}}$$

$$\varepsilon_{33} = S_{23}\cdot\sigma_{22} = -\frac{\nu_{\perp\perp}}{E_\perp}\cdot\sigma_{22} = -\frac{0{,}4}{10\,000}\cdot20 = \mathbf{-8{,}00\times10^{-4}}$$

**(b)** $\varepsilon_{11}(\text{Aufg. 4}) = -4{,}29\times10^{-5}$, $\varepsilon_{22}(\text{Aufg. 3}) = -4{,}29\times10^{-4}$

Verhältnis: Aufg. 4 ist genau **10× kleiner** (Skalierung mit $\sigma$-Verhältnis $20/200=0{,}1$). ✓

**(c)** $S_{12}=S_{21}$ garantiert: Energie beim Weg $\sigma_{11}\to\varepsilon_{22}$ = Energie beim Weg $\sigma_{22}\to\varepsilon_{11}$ (Maxwell-Betti-Reziprozität). Physikalisch: keine Energie aus dem Nichts.

</div>

---

# Aufgabe 5 – 2D-Steifigkeitsmatrix (ebener Spannungszustand)

<div class="aufgabe">

**Aufgabe 5:** Für dünne Schichten gilt der ebene Spannungszustand: $\sigma_{33}=\tau_{23}=\tau_{13}=0$.

**(a)** Schreibe die reduzierte 2D-Nachgiebigkeitsmatrix $\mathbf{S}^{2D}$ auf.

**(b)** Berechne die reduzierten Steifigkeitseinträge $Q_{11}$, $Q_{12}$, $Q_{22}$, $Q_{33}$ über:
$$Q_{11} = \frac{E_\parallel}{1-\nu_{\perp\parallel}\nu_{\parallel\perp}}, \quad Q_{22} = \frac{E_\perp}{1-\nu_{\perp\parallel}\nu_{\parallel\perp}}$$
$$Q_{12} = \frac{\nu_{\perp\parallel}E_\perp}{1-\nu_{\perp\parallel}\nu_{\parallel\perp}}, \quad Q_{33} = G_{\perp\parallel}$$

**(c)** Überprüfe: $Q_{12} = Q_{21}$?

</div>

---

# Lösung – Aufgabe 5

<div class="loesung">

**(a)** 2D-Nachgiebigkeit:

$$\mathbf{S}^{2D} = \begin{bmatrix} 1/E_\parallel & -\nu_{\perp\parallel}/E_\parallel & 0 \\ -\nu_{\perp\parallel}/E_\parallel & 1/E_\perp & 0 \\ 0 & 0 & 1/G_{\perp\parallel} \end{bmatrix}$$

**(b)** Nenner: $1 - \nu_{\perp\parallel}\nu_{\parallel\perp} = 1 - 0{,}3\cdot0{,}0214 = 1 - 0{,}00643 = 0{,}9936$

$$Q_{11} = \frac{140\,000}{0{,}9936} = \mathbf{140\,900 \; \text{MPa}}$$
$$Q_{22} = \frac{10\,000}{0{,}9936} = \mathbf{10\,064 \; \text{MPa}}$$
$$Q_{12} = \frac{0{,}3\cdot10\,000}{0{,}9936} = \mathbf{3\,019 \; \text{MPa}}, \quad Q_{33} = \mathbf{5\,000 \; \text{MPa}}$$

**(c)** $Q_{21} = \nu_{\parallel\perp}E_\parallel / (1-\nu_{\perp\parallel}\nu_{\parallel\perp}) = 0{,}0214\cdot140\,000/0{,}9936 = 3\,019$ ✓

</div>

---

# Aufgabe 6 – Spannungen aus Dehnungen berechnen

<div class="aufgabe">

**Aufgabe 6:** Eine UD-Schicht (Werte wie Aufgabe 1) ist im Verbund eingespannt. Der gemessene Dehnungszustand (eben) beträgt:
$$\varepsilon_{11} = 3{,}0\times10^{-3}, \quad \varepsilon_{22} = -1{,}0\times10^{-3}, \quad \gamma_{12} = 2{,}0\times10^{-3}$$

**(a)** Berechne die Spannungen $\sigma_{11}$, $\sigma_{22}$, $\tau_{12}$ über $\boldsymbol{\sigma} = \mathbf{Q}\,\boldsymbol{\varepsilon}$.

**(b)** Welche Spannung dominiert und warum?

**(c)** Berechne die Schubspannung bei halbem Schubwinkel $\gamma_{12}/2 = 1{,}0\times10^{-3}$. Was ändert sich?

</div>

---

# Lösung – Aufgabe 6

<div class="loesung">

**(a)** $\boldsymbol{\sigma} = \mathbf{Q}\,\boldsymbol{\varepsilon}$:

$$\sigma_{11} = Q_{11}\varepsilon_{11} + Q_{12}\varepsilon_{22} = 140\,900\cdot3{,}0\times10^{-3} + 3\,019\cdot(-1{,}0\times10^{-3})$$
$$= 422{,}7 - 3{,}0 = \mathbf{419{,}7 \; \text{MPa}}$$

$$\sigma_{22} = Q_{12}\varepsilon_{11} + Q_{22}\varepsilon_{22} = 3\,019\cdot3{,}0\times10^{-3} + 10\,064\cdot(-1{,}0\times10^{-3})$$
$$= 9{,}06 - 10{,}06 = \mathbf{-1{,}0 \; \text{MPa}}$$

$$\tau_{12} = Q_{33}\cdot\gamma_{12} = 5\,000\cdot2{,}0\times10^{-3} = \mathbf{10{,}0 \; \text{MPa}}$$

**(b)** $\sigma_{11}$ dominiert mit ~420 MPa – wegen des sehr hohen $Q_{11}$ (Fasern tragen fast allein die Längslast).

**(c)** $\tau_{12}$ halbiert sich auf **5,0 MPa** – linearer Zusammenhang, keine Überraschung.

</div>

---

# Aufgabe 7 – Indizierungsfehler und Symmetriebedingung

<div class="aufgabe">

**Aufgabe 7:** In einer FE-Eingabe wird versehentlich $\nu_{\perp\parallel} = 0{,}3$ als $\nu_{\parallel\perp}$ eingegeben (Indizes vertauscht).

**(a)** Berechne den tatsächlichen Wert von $\nu_{\parallel\perp}$ für das CFK-Material aus Aufgabe 1.

**(b)** Um welchen Faktor ist der falsch eingegebene Wert zu groß?

**(c)** Welche physikalische Größe wird dadurch überschätzt, und was ist die qualitative Konsequenz für das FE-Ergebnis?

**(d)** Beschreibe, wie man den Fehler erkennen kann (Stichwort: Symmetriebedingung).

</div>

---

# Lösung – Aufgabe 7

<div class="loesung">

**(a)** Korrekt: $\nu_{\parallel\perp} = \nu_{\perp\parallel}\cdot E_\perp/E_\parallel = 0{,}3\cdot10\,000/140\,000 = \mathbf{0{,}0214}$

**(b)** Faktor: $0{,}3 / 0{,}0214 \approx \mathbf{14}$ – genau das Verhältnis $E_\parallel/E_\perp$!

**(c)** $\nu_{\parallel\perp}$ beschreibt: Querbelastung → Längsdehnung. Ein 14× zu großer Wert überschätzt die Längskontraktion bei Querbelastung massiv → die Steifigkeitsmatrix wird **unsymmetrisch** ($S_{12}\neq S_{21}$) → die Matrix ist nicht mehr physikalisch → FE-Solver liefert falsche oder divergente Ergebnisse.

**(d)** Symmetriecheck: $S_{12} = -\nu_{\perp\parallel}/E_\parallel$ muss gleich $S_{21} = -\nu_{\parallel\perp}/E_\perp$ sein. Mit falschem Wert: $S_{21} = -0{,}3/10\,000 = -3\times10^{-5} \neq S_{12} = -2{,}14\times10^{-6}$ → Faktor 14 Abweichung sofort sichtbar.

</div>

<div class="warnung">

⚠️ Amerikanische und deutsche Nomenklatur vertauschen die Indizes! Immer Symmetriebedingung prüfen.

</div>

---

# Aufgabe 8 – Thermo-hygrische Dehnungen

<div class="aufgabe">

**Aufgabe 8:** Die UD-Schicht wird um $\Delta T = +120$ K erwärmt (Aushärtungsabkühlung). Thermische Ausdehnungskoeffizienten: $\alpha^T_{11} = 0{,}5\times10^{-6}$ K⁻¹, $\alpha^T_{22} = 30\times10^{-6}$ K⁻¹.

**(a)** Berechne die freien thermischen Dehnungen $\varepsilon^T_{11}$ und $\varepsilon^T_{22}$.

**(b)** Die Schicht ist eingebettet und kann sich nicht frei dehnen ($\varepsilon_{11}=\varepsilon_{22}=0$). Berechne die Eigenspannungen $\sigma_{11}$ und $\sigma_{22}$ (2D, $\gamma_{12}=0$).

**(c)** Welche Spannung ist kritischer und warum?

</div>

---

# Lösung – Aufgabe 8

<div class="loesung">

**(a)** Freie thermische Dehnungen:

$$\varepsilon^T_{11} = \alpha^T_{11}\cdot\Delta T = 0{,}5\times10^{-6}\cdot120 = \mathbf{6{,}0\times10^{-5}}$$
$$\varepsilon^T_{22} = \alpha^T_{22}\cdot\Delta T = 30\times10^{-6}\cdot120 = \mathbf{3{,}6\times10^{-3}}$$

**(b)** Eingespannt: $\boldsymbol{\varepsilon}_\text{ges}=0$ → mechanische Dehnung $= -\boldsymbol{\varepsilon}^T$:

$$\sigma_{11} = Q_{11}(-\varepsilon^T_{11}) + Q_{12}(-\varepsilon^T_{22})$$
$$= 140\,900\cdot(-6\times10^{-5}) + 3\,019\cdot(-3{,}6\times10^{-3}) = -8{,}45 - 10{,}87 = \mathbf{-19{,}3 \; \text{MPa}}$$

$$\sigma_{22} = Q_{12}(-\varepsilon^T_{11}) + Q_{22}(-\varepsilon^T_{22})$$
$$= 3\,019\cdot(-6\times10^{-5}) + 10\,064\cdot(-3{,}6\times10^{-3}) = -0{,}18 - 36{,}2 = \mathbf{-36{,}4 \; \text{MPa}}$$

**(c)** $\sigma_{22}$ ist kritischer: Die Querfestigkeit ($R_\perp^- \approx 200$ MPa Druck, aber $R_\perp^+ \approx 50$ MPa Zug) ist viel kleiner als die Längsfestigkeit. Beim Abkühlen entstehen Druckspannungen – beim Aufheizen kehren sie sich um und können Querrisse erzeugen!

</div>

---

# Aufgabe 9 – Orthotropiegrad und Werkstoffvergleich

<div class="aufgabe">

**Aufgabe 9:** Berechne und vergleiche den Orthotropiegrad $E_\parallel/E_\perp$ für drei Werkstoffe:

| Werkstoff | $E_\parallel$ [MPa] | $E_\perp$ [MPa] | $\alpha^T_\parallel$ [10⁻⁶/K] | $\alpha^T_\perp$ [10⁻⁶/K] |
|-----------|--------------------|-----------------|-----------------------------|---------------------------|
| CFK UD | 140 000 | 10 000 | 0,5 | 30 |
| GFK UD | 40 000 | 10 000 | 5 | 35 |
| Stahl | 210 000 | 210 000 | 12 | 12 |

**(a)** Berechne $E_\parallel/E_\perp$ und $\alpha^T_\perp/\alpha^T_\parallel$ für alle drei.

**(b)** Welcher Werkstoff zeigt die stärkste Anisotropie – mechanisch und thermisch?

**(c)** Was bedeutet ein hoher Orthotropiegrad für die Laminatauslegung?

</div>

---

# Lösung – Aufgabe 9

<div class="loesung">

**(a)**

| Werkstoff | $E_\parallel/E_\perp$ | $\alpha^T_\perp/\alpha^T_\parallel$ |
|-----------|----------------------|-------------------------------------|
| CFK UD | $140\,000/10\,000 = \mathbf{14}$ | $30/0{,}5 = \mathbf{60}$ |
| GFK UD | $40\,000/10\,000 = \mathbf{4}$ | $35/5 = \mathbf{7}$ |
| Stahl | $210\,000/210\,000 = \mathbf{1}$ | $12/12 = \mathbf{1}$ |

**(b)** CFK zeigt die stärkste Anisotropie – mechanisch (Faktor 14) **und** thermisch (Faktor 60).

**(c)** Bei hohem Orthotropiegrad:
- Einzelne 0°-Lagen sehr steif in Faserrichtung, aber schwach quer
- Laminat muss Fasern in mehrere Richtungen verteilen (Quasi-Isotropie: 0°/±45°/90°)
- Thermische Eigenspannungen beim Aushärten und Temperaturwechsel besonders groß
- Sorgfältige Auslegung nötig: Querfestigkeit ist oft der limitierende Faktor

</div>

---

# Aufgabe 10 – Kombinierte Belastung (Synthese)

<div class="aufgabe">

**Aufgabe 10 (Synthese):** Eine eingespannte CFK-UD-Schicht (Werte wie Aufgabe 1) erfährt gleichzeitig mechanische Belastung und Temperaturerhöhung:
$$\sigma_{11} = 150 \; \text{MPa}, \quad \sigma_{22} = 10 \; \text{MPa}, \quad \tau_{12} = 0, \quad \Delta T = +80 \; \text{K}$$
$$\alpha^T_{11} = 0{,}5\times10^{-6} \; \text{K}^{-1}, \quad \alpha^T_{22} = 30\times10^{-6} \; \text{K}^{-1}$$

**(a)** Berechne die Gesamtdehnungen $\varepsilon_{11}$ und $\varepsilon_{22}$.

**(b)** Trenne mechanischen und thermischen Anteil.

**(c)** Welcher Anteil dominiert bei $\varepsilon_{22}$?

</div>

---

# Lösung – Aufgabe 10

<div class="loesung">

**(a)** Gesamtdehnung = mechanisch + thermisch:

$$\varepsilon_{11} = \underbrace{\frac{\sigma_{11}}{E_\parallel} - \frac{\nu_{\parallel\perp}}{E_\perp}\sigma_{22}}_\text{mechanisch} + \underbrace{\alpha^T_{11}\Delta T}_\text{thermisch}$$

$$= \frac{150}{140\,000} - \frac{0{,}0214}{10\,000}\cdot10 + 0{,}5\times10^{-6}\cdot80$$
$$= 1{,}071\times10^{-3} - 2{,}14\times10^{-5} + 4{,}0\times10^{-5} = \mathbf{1{,}090\times10^{-3}}$$

$$\varepsilon_{22} = -\frac{\nu_{\perp\parallel}}{E_\parallel}\sigma_{11} + \frac{\sigma_{22}}{E_\perp} + \alpha^T_{22}\Delta T$$
$$= -\frac{0{,}3}{140\,000}\cdot150 + \frac{10}{10\,000} + 30\times10^{-6}\cdot80$$
$$= -3{,}21\times10^{-4} + 1{,}00\times10^{-3} + 2{,}40\times10^{-3} = \mathbf{3{,}08\times10^{-3}}$$

**(b)/(c)** Bei $\varepsilon_{22}$: thermisch $2{,}40\times10^{-3}$ → **78 %** des Gesamtanteils. Thermik dominiert Querdehnungen bei CFK massiv!

</div>

---

# Zusammenfassender Vergleich

| Thema | Kernaussage |
|-------|-------------|
| Symmetriebedingung | $S_{12}=S_{21}$ → $\nu_{\perp\parallel}/E_\parallel = \nu_{\parallel\perp}/E_\perp$ |
| Transversale Isotropie | 5 unabhängige Konstanten; $G_{\perp\perp}$ aus $E_\perp$, $\nu_{\perp\perp}$ |
| Orthotropiegrad | CFK: 14 (mechanisch), 60 (thermisch) |
| Indizierungsfehler | Vertauschung von $\nu_{\perp\parallel}$ und $\nu_{\parallel\perp}$ → Faktor 14 Fehler! |
| Längsbelastung | $Q_{11}$ dominiert → Faser trägt fast allein |
| Querbelastung | $Q_{22}$ klein → Matrix trägt → Schwachstelle |
| Thermo-hygrisch | Thermik dominiert Querdehnungen bei CFK |

<div class="hinweis">

**Muster:** Alle Anisotropie-Effekte folgen aus der Asymmetrie $E_\parallel \gg E_\perp$. Immer Symmetriebedingung prüfen – sie ist der schnellste Konsistenzcheck.

</div>

---

<!-- _class: lead -->
# Fragen?

Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de
Hochschule Magdeburg-Stendal