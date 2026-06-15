---
marp: true
theme: h2
header: 'Seminar – Krafteinleitung und Fügetechniken'
paginate: true
math: katex
---
<style>
section {
  font-family: 'Segoe UI', sans-serif;
  font-size: 23px;
  padding: 38px 48px;
  color: #1e2a3a;
}
section h1 {
  font-size: 34px;
  color: #1a5276;
  padding-bottom: 8px;
  margin-bottom: 18px;
}
section h2 {
  font-size: 24px;
  margin-bottom: 12px;
}
section h3 {
  font-size: 20px;
  margin-bottom: 8px;
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
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>

<!-- _class: lead -->

# Seminar: Krafteinleitung und Fügetechniken
Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Faserverbundwerkstoffe/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

# Gleichungsübersicht – Schlaufenanschluss

## Leibungsdruck und Randbedingungen

<div class="eq">

$$p_i = \frac{F}{2\,r_i\,b} \qquad \sigma_r(r_i) = -p_i \qquad \sigma_r(r_a) = 0$$

</div>

## Mittlere Tangentialspannung im Schaft (Bezugsgröße)

<div class="eq">

$$\bar{\sigma}_t = \frac{F/2}{b\,(r_a - r_i)}$$

</div>

## Exponent der Euler-DGL

<div class="eq">

$$E_v = \sqrt{\frac{E_\perp}{E_\parallel}} \qquad \text{(seitlich ungestützt: } E_v = \sqrt{E_\perp / E_\parallel}\text{)}$$

</div>

## Axialspannung bei seitlicher Stützung (am Innenradius)

<div class="eq">

$$\sigma_z(r_i) = \left(\nu_{\parallel\perp}\frac{\sigma_r(r_i)}{E_\parallel} + \nu_{\perp\perp}\frac{\sigma_t(r_i)}{E_\perp}\right) \cdot E_\perp$$

</div>

---

# Gleichungsübersicht – Bolzenverbindungen

## Versagenslasten (Überschlagsformeln)

<div class="zwei-spalten">
<div>

**Lochleibung:**
<div class="eq">

$$F_{ult} = \hat{R}_L \cdot d \cdot t$$

</div>

**Flankenzugbruch:**
<div class="eq">

$$F_{ult} = \hat{R}_x^+ \cdot (w - d) \cdot t$$

</div>

**Scherbruch:**
<div class="eq">

$$F_{ult} = \hat{R}_{xy} \cdot 2\,e \cdot t$$

</div>

</div>
<div>

**Spaltbruch:**
<div class="eq">

$$F_{ult} = \hat{R}_y^+ \cdot (e - d/2) \cdot t \cdot 2$$

</div>

**Mit Anpressdruck:**
<div class="eq">

$$F_{ult} = \hat{R}_L \cdot d \cdot t + \mu_0 \cdot F_V$$

</div>

**Mindestabstände:**
<div class="eq">

$$e \geq 3d \qquad w \geq 5d \qquad p \geq 4d$$

</div>

</div>
</div>

---

# Gleichungsübersicht – Klebverbindung (Volkersen)

## Klebungskennzahl und Steifigkeitsverhältnis

<div class="eq">

$$\psi = \frac{E_1\,t_1}{E_2\,t_2} \qquad \rho^2 = (1+\psi)\frac{G_K\,l_\ddot{u}^2}{E_1\,t_1\,t_K}$$

</div>

## Mittlere und maximale Schubspannung

<div class="eq">

$$\bar{\tau}_K = \frac{F_{10}}{l_\ddot{u} \cdot b} \qquad \frac{\tau_{K,\max}}{\bar{\tau}_K} = \frac{\rho}{2}\!\left[\coth\frac{\rho}{2} + \frac{1-\psi}{1+\psi}\tanh\frac{\rho}{2}\right]$$

</div>

## Grenz-Überlappungslänge (ab hier $\tau_{K,\max}$ unabhängig von $l_\ddot{u}$)

<div class="eq">

$$\tilde{l}_\ddot{u} = 5\,\sqrt{\frac{E_1\,t_1\,t_K}{G_K\,(1+\psi)}} \qquad \Rightarrow \text{wähle } l_\ddot{u} \geq 2\,\tilde{l}_\ddot{u}$$

</div>

## Für gleichartige Fügeteile ($\psi = 1$, vereinfacht)

<div class="eq">

$$\tau_{K,\max} = \frac{F_{10}}{b} \cdot \frac{1}{2}\sqrt{\frac{G_K}{E\,t\,t_K}}$$

</div>

---

# Aufgabe 1 – Schlaufenanschluss: Leibungsdruck und Gütegrad

<div class="aufgabe">

**Gegeben:** Eine UD-GFK-Parallelschlaufe (E-Glas) trägt eine Bolzenkraft $F = 120\,\text{kN}$.

- Innenradius: $r_i = 25\,\text{mm}$
- Außenradius: $r_a = 40\,\text{mm}$ → $r_a/r_i = 1{,}6$
- Breite: $b = 30\,\text{mm}$
- $E_\parallel = 45\,000\,\text{N/mm}^2$, $E_\perp = 12\,000\,\text{N/mm}^2$

**Gesucht:**

**(a)** Leibungsdruck $p_i$ am Innenradius

**(b)** Mittlere Tangentialspannung $\bar{\sigma}_t$ im Schaft

**(c)** Spannungsüberhöhungsfaktor $\alpha = \sigma_{t,\max}/\bar{\sigma}_t$ aus Diagramm (ca. $E_v = \sqrt{E_\perp/E_\parallel}$ für GFK)

**(d)** Gütegrad der Schlaufe

</div>

---

# Lösung 1 – Schlaufenanschluss

<div class="loesung">

**(a) Leibungsdruck:**

$$p_i = \frac{F}{2\,r_i\,b} = \frac{120\,000}{2 \cdot 25 \cdot 30} = \mathbf{80\,\text{N/mm}^2}$$

**(b) Mittlere Tangentialspannung:**

$$\bar{\sigma}_t = \frac{F/2}{b\,(r_a - r_i)} = \frac{60\,000}{30\cdot 15} = \mathbf{133{,}3\,\text{N/mm}^2}$$

**(c) Überhöhungsfaktor** (aus Diagramm, GFK: $E_\parallel/E_\perp \approx 3{,}75$, $r_a/r_i = 1{,}6$):

$$\alpha \approx 1{,}8 \quad \Rightarrow \quad \sigma_{t,\max} \approx 1{,}8 \cdot 133{,}3 \approx \mathbf{240\,\text{N/mm}^2}$$

**(d) Gütegrad:**

$$\eta = \frac{1}{\alpha} = \frac{1}{1{,}8} \approx \mathbf{56\,\%}$$

→ Nur 56 % der Faserfestigkeit wird ausgenutzt. Schlaufe sollte flacher oder als Kaskade ausgeführt werden!

</div>

---

# Aufgabe 2 – Bolzenverbindung: Auslegung und Versagensprüfung

<div class="aufgabe">

**Gegeben:** Einschnittige Bolzenverbindung in einem CFK-Laminat $(0/{\pm}45/90)_{50/40/10}$.

- Übertragene Kraft: $F = 18\,\text{kN}$, Streifenbreite: $b = 40\,\text{mm}$
- Bolzendurchmesser: $d = 8\,\text{mm}$, Laminatdicke: $t = 4\,\text{mm}$
- Randabstand: $e = 24\,\text{mm}$, seitlicher Abstand: $w = 40\,\text{mm}$

**Festigkeitswerte (CFK-HT, FBL):**
$\hat{R}_L = 600\,\text{N/mm}^2$, $\hat{R}_x^+ = 500\,\text{N/mm}^2$, $\hat{R}_{xy} = 110\,\text{N/mm}^2$, $\hat{R}_y^+ = 50\,\text{N/mm}^2$

**Gesucht:**

**(a)** Überprüfe alle vier Versagensformen. Welche ist kritisch?

**(b)** Welcher Gütegrad ergibt sich für die dimensionierende Versagensform?

**(c)** Welche konstruktive Maßnahme wird empfohlen?

</div>

---

# Lösung 2 – Bolzenverbindung

<div class="loesung">

**(a) Versagenslasten** (Kraft pro Streifen: $F = 18\,\text{kN}$, Mindestabstände: $e = 24 = 3d$ ✓, $w = 40 = 5d$ ✓):

| Versagensform | Formel | $F_{ult}$ |
|---------------|--------|-----------|
| Lochleibung | $600 \cdot 8 \cdot 4$ | **19 200 N** |
| Flankenzugbruch | $500 \cdot (40-8) \cdot 4$ | **64 000 N** |
| Scherbruch | $110 \cdot 2 \cdot 24 \cdot 4$ | **21 120 N** |
| Spaltbruch | $50 \cdot (24-4) \cdot 4 \cdot 2$ | **8 000 N** ← **kritisch!** |

**(b)** Gütegrad Spaltbruch: $\eta = F_{ult}/F = 8\,000/18\,000 = \mathbf{44\,\%}$ → nicht ausreichend!

**(c) Maßnahmen gegen Spaltbruch:**
- Randabstand $e$ vergrößern ($e \geq 4d = 32\,\text{mm}$)
- 90°- oder ±45°-Fasern einfügen → $\hat{R}_y^+$ steigern
- Laminatdicke $t$ erhöhen

</div>

---

# Aufgabe 3 – Klebverbindung: Volkersen und Überlappungslänge

<div class="aufgabe">

**Gegeben:** Einschnittige Überlappungsklebung, gleiche Fügeteile ($\psi = 1$).

- $E_1 = E_2 = 70\,000\,\text{N/mm}^2$ (Al), $t_1 = t_2 = 2\,\text{mm}$
- $G_K = 800\,\text{N/mm}^2$ (Epoxidkleber), $t_K = 0{,}1\,\text{mm}$
- Überlappungslänge: $l_\ddot{u} = 30\,\text{mm}$, Breite: $b = 25\,\text{mm}$
- Übertragene Kraft: $F_{10} = 6\,\text{kN}$

**Gesucht:**

**(a)** Klebungskennzahl $\rho$ und Grenz-Überlappungslänge $\tilde{l}_\ddot{u}$

**(b)** Mittlere Schubspannung $\bar{\tau}_K$ und Spannungsspitze $\tau_{K,\max}$

**(c)** Ist die gewählte Überlappungslänge ausreichend? Was wäre die wirksamste Verbesserungsmaßnahme?

</div>

---

# Lösung 3 – Klebverbindung

<div class="loesung">

**(a) Klebungskennzahl** ($\psi = 1$):

$$\rho^2 = 2 \cdot \frac{800 \cdot 30^2}{70\,000 \cdot 2 \cdot 0{,}1} = \frac{2 \cdot 800 \cdot 900}{14\,000} = 102{,}9 \quad \Rightarrow \quad \rho = 10{,}14$$

**Grenz-Überlappungslänge:**

$$\tilde{l}_\ddot{u} = 5\sqrt{\frac{70\,000 \cdot 2 \cdot 0{,}1}{800 \cdot 2}} = 5\sqrt{8{,}75} = \mathbf{14{,}8\,\text{mm}}$$

Da $l_\ddot{u} = 30\,\text{mm} > 2\,\tilde{l}_\ddot{u} = 29{,}6\,\text{mm}$ → Überlappungslänge **gerade ausreichend** ✓

**(b)** Mittlere Schubspannung: $\bar{\tau}_K = \frac{6\,000}{30 \cdot 25} = \mathbf{8{,}0\,\text{N/mm}^2}$

Für $\rho \geq 5$: $\coth(\rho/2) \approx \tanh(\rho/2) \approx 1$, $\psi = 1$:

$$\tau_{K,\max} \approx \frac{\rho}{2} \cdot \bar{\tau}_K = \frac{10{,}14}{2} \cdot 8{,}0 = \mathbf{40{,}6\,\text{N/mm}^2}$$

**(c)** Überlappung knapp ausreichend. **Wirksamste Maßnahme: Breite $b$ vergrößern** (z.B. $b = 50\,\text{mm}$ → $\tau_{K,\max} = 20{,}3\,\text{N/mm}^2$).

</div>

---

# Diskussion und Wiederholung

<div class="zwei-spalten">
<div>

**Verständnisfragen:**

1. Warum ist GFK für Schlaufenanschlüsse besser geeignet als CFK-HM, obwohl CFK-HM eine höhere Faserfestigkeit hat?

2. Eine Überlappungsklebung wird auf doppelte Länge verlängert. Wie ändert sich die Spannungsspitze? Was muss man stattdessen verlängern?

3. Welches Versagen ist bei einer Bolzenverbindung erwünscht und warum?

4. Wie verhält sich die Gütegrad eines Schlaufenanschlusses, wenn man die Wanddicke verdoppelt (bei gleicher Bolzengröße)?

</div>
<div>

**Antworten (kurz):**

1. CFK-HM hat sehr hohes $E_\parallel/E_\perp$ → hohe Spannungsüberhöhung am Innenradius. Der Gütegrad sinkt trotz höherer Faserfestigkeit. GFK: geringeres Orthotropieverhältnis → günstigere Spannungsverteilung.

2. Ab $\tilde{l}_\ddot{u}$ ändert sich $\tau_{K,\max}$ nicht mehr. → Die **Breite $b$** ist der wirksame Parameter.

3. **Lochleibungsversagen** – kein Trennbruch, hohe Energieaufnahme, Zustand gut beobachtbar (Lochaufweitung), Fail-Safe-Verhalten.

4. Mit doppelter Wanddicke steigt $r_a/r_i$ → Überhöhungsfaktor steigt → Gütegrad sinkt! Besser: Breite vergrößern oder Kaskade.

</div>
</div>