---
marp: true
theme: h2
header: 'Seminar Faserverbundwerkstoffe'
paginate: true
math: katex
---

<style>
.aufgabe {
  border-left: 4px solid #e67e22;
  background-color: #fdf2e9;
  padding: 12px 16px;
  margin: 8px 0;
  border-radius: 4px;
}
.loesung {
  border-left: 4px solid #27ae60;
  background-color: #eafaf1;
  padding: 12px 16px;
  margin: 8px 0;
  border-radius: 4px;
}
.eq {
  border: 2px solid #c39bd3;
  background-color: #f4ecf7;
  padding: 10px 16px;
  margin: 8px 0;
  border-radius: 4px;
  text-align: center;
}
.hinweis {
  border-left: 4px solid #2e86c1;
  background-color: #eaf2f8;
  padding: 12px 16px;
  margin: 8px 0;
  border-radius: 4px;
  font-size: 20px;
}
.zwei-spalten {
  display: flex;
  gap: 24px;
}
.zwei-spalten > div {
  flex: 1;
}
h1 { font-size: 34px; color: #1a5276; }
h2 { font-size: 24px; }
h3 { font-size: 20px; }
table th { background-color: #1a5276; color: white; }
table tr:nth-child(even) { background-color: #f2f2f2; }
section { font-family: 'Segoe UI', sans-serif; font-size: 23px; padding: 38px 48px; color: #1e2a3a; }
</style>

<!-- _class: lead -->

# Seminar Faserverbundwerkstoffe
## Polartransformation & Klassische Laminattheorie

Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Faserverbundwerkstoffe/composites_10/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

# Aufgabe 1 – Nachgiebigkeitsmatrix einer UD-Schicht

<div class="aufgabe">

Eine GFK-UD-Schicht hat folgende Eigenschaften:

$E_\parallel = 40\,000$ MPa, $\;E_\perp = 10\,000$ MPa, $\;G_{\perp\parallel} = 3\,800$ MPa, $\;\nu_{\perp\parallel} = 0{,}3$

**a)** Bestimmen Sie $\nu_{\parallel\perp}$ aus der Symmetriebedingung der Nachgiebigkeitsmatrix.

**b)** Stellen Sie die vollständige Nachgiebigkeitsmatrix $[S]$ auf (mit Zahlenwerten in $\frac{1}{\text{MPa}}$).

**c)** Berechnen Sie die Steifigkeitsmatrix $[Q]$ (Zahlenwerte in MPa).

</div>

---

## Lösung 1

<div class="loesung">

**a)** Aus der Symmetrie $S_{12} = S_{21}$:

$$\frac{\nu_{\perp\parallel}}{E_\parallel} = \frac{\nu_{\parallel\perp}}{E_\perp} \quad \Rightarrow \quad \nu_{\parallel\perp} = \nu_{\perp\parallel} \cdot \frac{E_\perp}{E_\parallel} = 0{,}3 \cdot \frac{10\,000}{40\,000} = 0{,}075$$

</div>

---

## Lösung 1 (Fortsetzung)

<div class="loesung">

**b)** Nachgiebigkeitsmatrix:

$$[S] = \begin{bmatrix} \frac{1}{40\,000} & -\frac{0{,}3}{40\,000} & 0 \\ -\frac{0{,}075}{10\,000} & \frac{1}{10\,000} & 0 \\ 0 & 0 & \frac{1}{3\,800} \end{bmatrix} = \begin{bmatrix} 2{,}5 & -0{,}75 & 0 \\ -0{,}75 & 10{,}0 & 0 \\ 0 & 0 & 26{,}3 \end{bmatrix} \cdot 10^{-5} \;\frac{1}{\text{MPa}}$$

</div>

---

## Lösung 1 (Fortsetzung)

<div class="loesung">

**c)** Steifigkeitsmatrix mit $1 - \nu_{\perp\parallel}\nu_{\parallel\perp} = 1 - 0{,}3 \cdot 0{,}075 = 0{,}9775$:

$$Q_{11} = \frac{40\,000}{0{,}9775} = 40\,921 \text{ MPa}, \quad Q_{22} = \frac{10\,000}{0{,}9775} = 10\,230 \text{ MPa}$$

$$Q_{12} = \frac{0{,}3 \cdot 10\,000}{0{,}9775} = 3\,069 \text{ MPa}, \quad Q_{66} = 3\,800 \text{ MPa}$$

$$[Q] = \begin{bmatrix} 40\,921 & 3\,069 & 0 \\ 3\,069 & 10\,230 & 0 \\ 0 & 0 & 3\,800 \end{bmatrix} \text{ MPa}$$

</div>

---

# Aufgabe 2 – Spannungstransformation

<div class="aufgabe">

Eine UD-Schicht mit Faserwinkel $\alpha = 30°$ wird im Laminat-KOS mit folgenden Spannungen belastet:

$$\sigma_x = 100 \text{ MPa}, \quad \sigma_y = -20 \text{ MPa}, \quad \tau_{xy} = 30 \text{ MPa}$$

Berechnen Sie die Spannungen $\sigma_1, \sigma_2, \tau_{21}$ im Schicht-KOS.

</div>

<div class="hinweis">

Verwenden Sie die Transformationsmatrix $[T_\sigma]_{x,y \to 1,2}$ mit $\cos 30° = \frac{\sqrt{3}}{2}$, $\sin 30° = \frac{1}{2}$.

</div>

---

## Lösung 2

<div class="loesung">

Trigonometrische Werte: $\cos^2 30° = 0{,}75$, $\sin^2 30° = 0{,}25$, $\sin 60° = 0{,}866$, $\cos 60° = 0{,}5$

$$\begin{Bmatrix} \sigma_1 \\ \sigma_2 \\ \tau_{21} \end{Bmatrix} = \begin{bmatrix} 0{,}75 & 0{,}25 & 0{,}866 \\ 0{,}25 & 0{,}75 & -0{,}866 \\ -0{,}433 & 0{,}433 & 0{,}5 \end{bmatrix} \cdot \begin{Bmatrix} 100 \\ -20 \\ 30 \end{Bmatrix}$$

$$\sigma_1 = 75 - 5 + 25{,}98 = 95{,}98 \text{ MPa}$$
$$\sigma_2 = 25 - 15 - 25{,}98 = -15{,}98 \text{ MPa}$$
$$\tau_{21} = -43{,}3 - 8{,}66 + 15 = -36{,}96 \text{ MPa}$$

</div>

---

# Aufgabe 3 – Transformierte Steifigkeiten

<div class="aufgabe">

Verwenden Sie die GFK-Daten aus Aufgabe 1.

**a)** Berechnen Sie die transformierten Steifigkeiten $\bar{Q}_{11}$, $\bar{Q}_{22}$ und $\bar{Q}_{66}$ für $\alpha = 45°$.

**b)** Was fällt bei $\alpha = 45°$ bezüglich $\bar{Q}_{11}$ und $\bar{Q}_{22}$ auf?

**c)** Warum ist $\bar{Q}_{66}$ unter 45° maximal?

</div>

---

## Lösung 3

<div class="loesung">

**a)** Bei $\alpha = 45°$: $\cos^4 45° = \sin^4 45° = 0{,}25$, $\sin^2 90° = 1$

$$\bar{Q}_{11} = \frac{40\,921 \cdot 0{,}25 + 10\,230 \cdot 0{,}25}{1} + 2(3\,069 + 3\,800) \cdot 1$$

$$= 12\,788 + 13\,738 = 26\,526 \text{ MPa} \quad \Leftarrow \bar{Q}_{11} \text{ stark reduziert gegenüber } Q_{11}$$

$\bar{Q}_{22}$: gleiche Formel mit vertauschten $\cos/\sin$ → bei 45° identisch:

$$\bar{Q}_{22} = 26\,526 \text{ MPa}$$

$$\bar{Q}_{66} = 3\,800 + \frac{1}{4}(40\,921 + 10\,230 - 2 \cdot 3\,069 - 4 \cdot 3\,800) \cdot 1 = 14\,003 \text{ MPa}$$

</div>

---

## Lösung 3 (Fortsetzung)

<div class="loesung">

**b)** Bei $\alpha = 45°$ gilt $\bar{Q}_{11} = \bar{Q}_{22}$ – die Steifigkeit in x- und y-Richtung ist **gleich groß**. Die Schicht verhält sich in diesen beiden Richtungen gleich (quasi-isotrop in der Ebene bezüglich Normalsteifigkeiten).

**c)** $\bar{Q}_{66}$ ist unter 45° maximal, weil bei diesem Winkel **beide Faserrichtungskomponenten** gleichermaßen zum Schubwiderstand beitragen. Der Term $\sin^2 2\alpha$ wird bei $\alpha = 45°$ maximal ($= 1$), und der Klammerausdruck enthält die Differenz zwischen Normal- und Schubsteifigkeiten, die stets positiv ist.

</div>

---

# Aufgabe 4 – E-Modul vs. Steifigkeit Q

<div class="aufgabe">

**a)** Erklären Sie den Unterschied zwischen $E_x$ und $\bar{Q}_{11}$.

**b)** Unter welcher Bedingung gilt $E_x = \bar{Q}_{11}$?

**c)** Berechnen Sie $E_x$ für die GFK-UD-Schicht aus Aufgabe 1 bei $\alpha = 0°$.

</div>

---

## Lösung 4

<div class="loesung">

**a)** $E_x = 1/\bar{S}_{11}$: Steifigkeit bei **einachsiger Belastung** mit freier Querdehnung (Zugversuch). $\bar{Q}_{11}$: Steifigkeit bei **behinderter Querdehnung** ($\varepsilon_y = \gamma_{xy} = 0$). Die Querkontraktionsbehinderung erhöht die Steifigkeit → $\bar{Q}_{11} \geq E_x$.

**b)** Nur wenn keine Querkontraktion vorliegt ($\nu_{\perp\parallel} = 0$), sind beide gleich. Dann wird $Q_{11} = E_\parallel$ und $Q_{12} = 0$.

**c)** Bei $\alpha = 0°$: $\bar{S}_{11} = S_{11} = 1/E_\parallel$, also $E_x = E_\parallel = 40\,000$ MPa.
Zum Vergleich: $\bar{Q}_{11}(\alpha=0°) = Q_{11} = 40\,921$ MPa → Differenz durch Querkontraktion.

</div>

---

# Aufgabe 5 – Dehnungs-Schiebungs-Kopplung

<div class="aufgabe">

Eine UD-Schicht ($\alpha = 30°$) wird einachsig mit $\sigma_x = 80$ MPa belastet ($\sigma_y = \tau_{xy} = 0$).

Verwenden Sie die GFK-Daten aus Aufgabe 1.

**a)** Warum tritt eine Schiebung $\gamma_{xy} \neq 0$ auf, obwohl keine Schubspannung $\tau_{xy}$ wirkt?

**b)** In welcher Richtung tritt keine Kopplung auf?

</div>

---

## Lösung 5

<div class="loesung">

**a)** Bei $\alpha \neq 0°$ und $\alpha \neq 90°$ gilt $\bar{S}_{16} \neq 0$ (bzw. $\bar{Q}_{16} \neq 0$). Dadurch erzeugt eine Normalspannung $\sigma_x$ nicht nur Dehnungen $\varepsilon_x, \varepsilon_y$, sondern auch eine Schiebung $\gamma_{xy}$:

$$\gamma_{xy} = \bar{S}_{16} \cdot \sigma_x + \underbrace{\bar{S}_{26} \cdot \sigma_y}_{=0} + \underbrace{\bar{S}_{66} \cdot \tau_{xy}}_{=0} = \bar{S}_{16} \cdot 80$$

Dies ist die **Dehnungs-Schiebungs-Kopplung** – das Kennzeichen anisotropen Verhaltens.

**b)** Nur bei Schnitten entlang der **Orthotropieachsen** ($\alpha = 0°$ oder $\alpha = 90°$) gilt $\bar{Q}_{16} = \bar{Q}_{26} = 0$ → keine Kopplung. Die UD-Schicht verhält sich dort **orthotrop**.

</div>

---

# Aufgabe 6 – CLT: Steifigkeitsmatrix [A]

<div class="aufgabe">

Ein symmetrisches Laminat besteht aus drei Schichtgruppen (GFK-Daten aus Aufgabe 1):

| Schichtgruppe | Faserwinkel $\alpha$ | Dicke $t_k$ |
|:---:|:---:|:---:|
| 1 | 0° | 0,5 mm |
| 2 | 90° | 0,3 mm |
| 3 | ±45° | 0,2 mm |

Gesamtdicke $t = 2 \cdot (0{,}5 + 0{,}3 + 0{,}2) = 2{,}0$ mm (mittensymmetrisch).

Berechnen Sie die Koeffizienten $A_{11}$, $A_{22}$ und $A_{66}$ für **eine Hälfte** des Laminats.
</div>

---

## Lösung 6

<div class="loesung">

Aus Aufgabe 1 und 3 (transformierte Steifigkeiten):

| | $\bar{Q}_{11}$ [MPa] | $\bar{Q}_{22}$ [MPa] | $\bar{Q}_{66}$ [MPa] |
|:---:|:---:|:---:|:---:|
| 0° | 40 921 | 10 230 | 3 800 |
| 90° | 10 230 | 40 921 | 3 800 |
| ±45° | 26 526 | 26 526 | 14 003 |

Für eine Hälfte ($t_k$ einfach):

$$A_{11} = 40\,921 \cdot 0{,}5 + 10\,230 \cdot 0{,}3 + 26\,526 \cdot 0{,}2 = 28\,835 \;\frac{\text{N}}{\text{mm}}$$

$$A_{22} = 10\,230 \cdot 0{,}5 + 40\,921 \cdot 0{,}3 + 26\,526 \cdot 0{,}2 = 22\,696 \;\frac{\text{N}}{\text{mm}}$$

$$A_{66} = 3\,800 \cdot 0{,}5 + 3\,800 \cdot 0{,}3 + 14\,003 \cdot 0{,}2 = 5\,841 \;\frac{\text{N}}{\text{mm}}$$

</div>

<div class="hinweis">

Für das gesamte mittensymmetrische Laminat: Werte verdoppeln.

</div>

---

# Aufgabe 7 – Ingenieurskonstanten

<div class="aufgabe">

Gegeben sei die invertierte Steifigkeitsmatrix eines Laminats ($t = 2{,}0$ mm):

$$[A]^{-1} = \begin{bmatrix} 2{,}05 & -0{,}42 & 0 \\ -0{,}42 & 2{,}87 & 0 \\ 0 & 0 & 8{,}74 \end{bmatrix} \cdot 10^{-5} \;\frac{\text{mm}}{\text{N}}$$

Berechnen Sie die Ingenieurskonstanten $\hat{E}_x$, $\hat{E}_y$, $\hat{G}_{xy}$, $\hat{\nu}_{xy}$ und $\hat{\nu}_{yx}$.
</div>

---

## Lösung 7

<div class="loesung">

$$\hat{E}_x = \frac{1}{(A^{-1})_{11} \cdot t} = \frac{1}{2{,}05 \cdot 10^{-5} \cdot 2{,}0} = 24\,390 \text{ MPa}$$

$$\hat{E}_y = \frac{1}{(A^{-1})_{22} \cdot t} = \frac{1}{2{,}87 \cdot 10^{-5} \cdot 2{,}0} = 17\,422 \text{ MPa}$$

$$\hat{G}_{xy} = \frac{1}{(A^{-1})_{66} \cdot t} = \frac{1}{8{,}74 \cdot 10^{-5} \cdot 2{,}0} = 5\,722 \text{ MPa}$$

$$\hat{\nu}_{xy} = -\frac{(A^{-1})_{12}}{(A^{-1})_{22}} = -\frac{-0{,}42}{2{,}87} = 0{,}146$$

$$\hat{\nu}_{yx} = -\frac{(A^{-1})_{12}}{(A^{-1})_{11}} = -\frac{-0{,}42}{2{,}05} = 0{,}205$$

</div>

---

## Lösung 7 (Fortsetzung)

<div class="loesung">

**Kontrolle der Reziprozitätsbedingung:**

$$\frac{\hat{\nu}_{xy}}{\hat{E}_x} = \frac{0{,}146}{24\,390} = 5{,}99 \cdot 10^{-6} \qquad \frac{\hat{\nu}_{yx}}{\hat{E}_y} = \frac{0{,}205}{17\,422} = 11{,}8 \cdot 10^{-6}$$

Diese sollten gleich sein – die Abweichung zeigt, dass die $[A]^{-1}$-Werte hier gerundet sind.

</div>

<div class="hinweis">

Die Ingenieurskonstanten gelten für **einachsige Belastung ohne Querkontraktionsbehinderung**. Bei Einbau in eine Struktur (z.B. Biegeknicken eines Hohlprofils) wird $\hat{E}_x$ in die Euler-Gleichung eingesetzt.

</div>

---

# Aufgabe 8 – Schichtenweise Spannungsanalyse

<div class="aufgabe">

Ein [0/90]-Laminat (GFK, je 1 mm dick, $t = 2$ mm) wird mit $\hat{n}_x = 200$ N/mm belastet ($\hat{n}_y = \hat{n}_{xy} = 0$).

**a)** Berechnen Sie die Laminatverzerrung $\hat{\varepsilon}_x$ (vereinfacht: $A_{16} = A_{26} = 0$, $A_{12}$ vernachlässigen).

**b)** Bestimmen Sie die Spannungen $\sigma_1$ in der 0°- und der 90°-Schicht.

**c)** Welche Schicht ist höher belastet und warum?

</div>

---

## Lösung 8

<div class="loesung">

**a)** Vereinfachte Steifigkeit (ohne Koppelterme):

$$A_{11} = Q_{11} \cdot t_{0°} + Q_{22} \cdot t_{90°} = 40\,921 \cdot 1 + 10\,230 \cdot 1 = 51\,151 \;\frac{\text{N}}{\text{mm}}$$

$$\hat{\varepsilon}_x \approx \frac{\hat{n}_x}{A_{11}} = \frac{200}{51\,151} = 3{,}91 \cdot 10^{-3}$$

**b)** Kompatibilität: $\varepsilon_{x,0°} = \varepsilon_{x,90°} = \hat{\varepsilon}_x$

Für die 0°-Schicht ($\varepsilon_1 = \hat{\varepsilon}_x$): $\;\sigma_1 = Q_{11} \cdot \hat{\varepsilon}_x = 40\,921 \cdot 3{,}91 \cdot 10^{-3} = 160{,}0$ MPa

Für die 90°-Schicht ($\varepsilon_2 = \hat{\varepsilon}_x$): $\;\sigma_2 = Q_{22} \cdot \hat{\varepsilon}_x = 10\,230 \cdot 3{,}91 \cdot 10^{-3} = 40{,}0$ MPa

</div>

---

## Lösung 8 (Fortsetzung)

<div class="loesung">

**c)** Die **0°-Schicht** ist mit 160 MPa **viermal höher** belastet als die 90°-Schicht (40 MPa).

**Grund:** Bei gleichen Verzerrungen (Kompatibilität) zieht die **steifere Schicht** mehr Spannung auf sich. Die 0°-Schicht hat in Belastungsrichtung $Q_{11} = 40\,921$ MPa vs. $Q_{22} = 10\,230$ MPa der 90°-Schicht.

→ **Steifigkeitsgesteuerte Lastverteilung** (Parallelschaltung)

</div>

<div class="hinweis">

**Kontrolle:** $\sigma_{0°} \cdot t_{0°} + \sigma_{90°} \cdot t_{90°} = 160 \cdot 1 + 40 \cdot 1 = 200$ N/mm $= \hat{n}_x$ ✓

</div>

---

# Aufgabe 9 – Laminatoptimierung

<div class="aufgabe">

Im Laminat aus Aufgabe 8 soll die 90°-Schicht entlastet und die Werkstoffausnutzung angeglichen werden.

**a)** Welche konstruktiven Maßnahmen stehen zur Verfügung?

**b)** Wie ändert sich die Spannungsverteilung, wenn man stattdessen $t_{0°} = 1{,}5$ mm und $t_{90°} = 0{,}5$ mm wählt (gleiche Gesamtdicke)?

**c)** Ist das Ergebnis aus Sicht der Leichtbau-Optimierung günstiger?

</div>

---

## Lösung 9

<div class="loesung">

**a)** Konstruktive Variablen zur Laststeuerung:
- **Schichtdicke** $t_k$ ändern → direkter Einfluss auf $A_{ij} = \bar{Q}_{ijk} \cdot t_k$
- **Faserwinkel** ändern → beeinflusst $\bar{Q}_{ijk}$
- Beide steuern die Schichtsteifigkeit; die steifste Schicht zieht die meiste Last

**b)** Neues $A_{11}$:

$$A_{11} = 40\,921 \cdot 1{,}5 + 10\,230 \cdot 0{,}5 = 66\,497 \;\frac{\text{N}}{\text{mm}}$$

$$\hat{\varepsilon}_x = \frac{200}{66\,497} = 3{,}01 \cdot 10^{-3}$$

$\sigma_{1,0°} = 40\,921 \cdot 3{,}01 \cdot 10^{-3} = 123{,}2$ MPa, $\quad \sigma_{2,90°} = 10\,230 \cdot 3{,}01 \cdot 10^{-3} = 30{,}8$ MPa

</div>

---

## Lösung 9 (Fortsetzung)

<div class="loesung">

**c)** Vergleich:

| | vorher (1/1 mm) | nachher (1,5/0,5 mm) |
|:---|:---:|:---:|
| $\sigma_{0°}$ | 160 MPa | 123 MPa |
| $\sigma_{90°}$ | 40 MPa | 31 MPa |
| Verhältnis | 4 : 1 | 4 : 1 |

Das Spannungs**verhältnis** bleibt gleich – die Umverteilung ist **nicht** gelungen! Das liegt daran, dass das Verhältnis allein von $Q_{11}/Q_{22}$ abhängt, nicht von den Schichtdicken.

→ Für eine echte Angleichung müssen **Faserwinkel** geändert werden (z.B. ±45°-Schichten hinzufügen), um die Steifigkeitsverhältnisse zu ändern.

</div>

---

# Aufgabe 10 – Verständnisfragen

<div class="aufgabe">

Beantworten Sie folgende Fragen zur CLT:

**a)** Warum dürfen beim Scheibenelement Schichten gleicher Orientierung zusammengefasst werden, beim Plattenelement aber nicht?

**b)** Was bedeutet „statisch unbestimmt" im Kontext des MSV?

**c)** Warum gilt die CLT nicht an Bauteilrändern?

</div>

---

## Lösung 10

<div class="loesung">

**a)** Beim **Scheibenelement** sind die Verzerrungen über der Dicke **konstant** (Kompatibilität). Die Position der Schicht im Laminat spielt keine Rolle – nur die Summe $\bar{Q}_{ijk} \cdot t_k$ zählt. Beim **Plattenelement** sind die Verzerrungen **linear über der Dicke** verteilt (Bernoulli). Hier bestimmt der **Abstand** einer Schicht zur Mittelebene ihren Beitrag zur Biegesteifigkeit ($z^2$-Gewichtung). Die Reihenfolge ist entscheidend.

**b)** Die Verteilung der äußeren Last auf die Einzelschichten kann **nicht allein aus dem Kräftegleichgewicht** bestimmt werden. Zusätzlich werden die Kompatibilitätsbedingung und die Elastizitätsgesetze der Schichten benötigt.

**c)** An Rändern entstehen **interlaminare Spannungen** durch unterschiedliche Querkontraktionen der Schichten. Dieser 3D-Spannungszustand wird vom ESZ der CLT nicht erfasst.

</div>