---
marp: true
theme: h2
header: 'Seminar – Festigkeit eines UD-Verbundes'
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

# Seminar: Festigkeit eines UD-Verbundes

Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Faserverbundwerkstoffe/composites_07_Seminar/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

# Gleichungsübersicht

## Spannungstransformation (x → Faserkoordinaten)

<div class="eq">

$$\sigma_1 = c^2\sigma_x + s^2\sigma_y + 2cs\tau_{xy}$$

$$\sigma_2 = s^2\sigma_x + c^2\sigma_y - 2cs\tau_{xy}$$

$$\tau_{12} = -cs\sigma_x + cs\sigma_y + (c^2 - s^2)\tau_{xy}$$

mit $c = \cos\varphi$, $s = \sin\varphi$

</div>

## Dehnungen mit Querkontraktion

<div class="eq">

$$\varepsilon_1 = \frac{\sigma_1}{E_L} - \nu_{LT}\frac{\sigma_2}{E_L} \qquad \varepsilon_2 = \frac{\sigma_2}{E_T} - \nu_{TL}\frac{\sigma_1}{E_L} \qquad \nu_{TL} = \nu_{LT}\frac{E_T}{E_L}$$

</div>

---

# Gleichungsübersicht

## Maximalspannungskriterium – Versagen, wenn eine Bedingung erfüllt:

<div class="eq">

$$\sigma_1 \geq R_L^{(+)} \quad \text{oder} \quad \sigma_1 \leq -R_L^{(-)} \qquad \sigma_2 \geq R_T^{(+)} \quad \text{oder} \quad \sigma_2 \leq -R_T^{(-)} \qquad |\tau_{12}| \geq R_{LT}$$

</div>

## Maximaldehnungskriterium – Grenzdehnungen:

<div class="eq">

$$\varepsilon_L^{(\pm)} = \frac{R_L^{(\pm)}}{E_L} \qquad \varepsilon_T^{(\pm)} = \frac{R_T^{(\pm)}}{E_T} \qquad \gamma_{LT}^{\max} = \frac{R_{LT}}{G_{LT}}$$

</div>

---

# Gleichungsübersicht

## Tsai–Wu-Kriterium (2D, $F_{12} = 0$):

<div class="eq">

$$F_{11}\sigma_1^2 + F_{22}\sigma_2^2 + F_{44}\tau_{12}^2 + F_1\sigma_1 + F_2\sigma_2 = 1$$

$$F_{11} = \frac{1}{R_L^{(+)}R_L^{(-)}}, \quad F_{22} = \frac{1}{R_T^{(+)}R_T^{(-)}}, \quad F_{44} = \frac{1}{R_{LT}^2}$$

$$F_1 = \frac{1}{R_L^{(+)}} - \frac{1}{R_L^{(-)}}, \quad F_2 = \frac{1}{R_T^{(+)}} - \frac{1}{R_T^{(-)}}$$

</div>

---

# Gleichungsübersicht

## Hashin-Kriterium (2D, $\sigma_3 = \tau_{13} = \tau_{23} = 0$):

<div class="eq">

**Zugbruch Faser** ($\sigma_1 > 0$): $\quad\dfrac{\sigma_1^2}{R_L^{(+)2}} + \dfrac{\tau_{12}^2}{R_{LT}^2} = 1$

**Druckbruch Faser** ($\sigma_1 < 0$): $\quad\dfrac{\sigma_1^2}{R_L^{(-)2}} = 1$

**Zugbruch Matrix** ($\sigma_2 > 0$): $\quad\dfrac{\sigma_2^2}{R_T^{(+)2}} + \dfrac{\tau_{12}^2}{R_{LT}^2} = 1$

**Druckbruch Matrix** ($\sigma_2 < 0$): $\quad\left(\dfrac{R_T^{(-)}}{2R_{LT}}\right)^2\!\!\dfrac{\sigma_2}{R_T^{(-)}} + \dfrac{\sigma_2^2}{4R_{LT}^2} + \dfrac{\tau_{12}^2}{R_{LT}^2} = 1$

</div>

---

# Gleichungsübersicht

## Puck-Kriterium – Modus A ($\sigma_2 > 0$):

<div class="eq">

$$\left(\frac{1}{R_T^{(+)2}} - \frac{2p_{LT}^{(+)}}{R_{LT}\,R_T^{(+)}}\right)\sigma_2^2 + \frac{2p_{LT}^{(+)}}{R_{LT}}\,\sigma_2 + \frac{\tau_{21}^2}{R_{LT}^2} = 1 \qquad \theta_{fp} = 0°$$

</div>

## Mixed-Mode-Bruchmechanik:

<div class="eq">

$$\left(\frac{G_I}{G_{Ic}}\right)^{m_I} + \left(\frac{G_{II}}{G_{IIc}}\right)^{m_{II}} = 1$$

</div>

## Reservefaktor:

<div class="eq">

$$RF < 1: \text{ Versagen} \qquad RF = 1: \text{ Versagensgrenze} \qquad RF > 1: \text{ sicher}$$

</div>

---

# Aufgabe 1 – Spannungstransformation & Maximalspannungskriterium

<div class="aufgabe">

Eine GFK-UD-Schicht ($\varphi = 0{,}6$, Epoxidharz-Matrix) wird einachsig in x-Richtung belastet:

$$\sigma_x = 600\,\text{MPa}, \quad \sigma_y = 0, \quad \tau_{xy} = 0$$

Die Fasern liegen unter **$\alpha = 30°$** zur x-Achse.

**Festigkeiten:** $R_L^{(+)} = 1000\,\text{MPa}$, $R_T^{(+)} = 35\,\text{MPa}$, $R_{LT} = 50\,\text{MPa}$

**a)** Transformieren Sie die Beanspruchung in das faserparallele System $(\sigma_1, \sigma_2, \tau_{12})$.

**b)** Überprüfen Sie mit dem Maximalspannungskriterium, ob die Schicht versagt.

**c)** Welches Versagen tritt zuerst auf? Was bedeutet das physikalisch?

</div>

---

# Lösung 1a – Transformation

<div class="loesung">

Mit $c = \cos 30° = \tfrac{\sqrt{3}}{2} \approx 0{,}866$ und $s = \sin 30° = 0{,}5$:

$$\sigma_1 = c^2 \cdot 600 = 0{,}75 \cdot 600 = \mathbf{450\,\text{MPa}}$$

$$\sigma_2 = s^2 \cdot 600 = 0{,}25 \cdot 600 = \mathbf{150\,\text{MPa}}$$

$$\tau_{12} = -cs \cdot 600 = -0{,}866 \cdot 0{,}5 \cdot 600 = \mathbf{-260\,\text{MPa}}$$

</div>

---

# Lösung 1b/c – Maximalspannungskriterium

<div class="loesung">

| Komponente | Wert | Festigkeit | Beurteilung |
|---|---|---|---|
| $\sigma_1 = 450\,\text{MPa}$ | $<$ | $R_L^{(+)} = 1000\,\text{MPa}$ | ✓ kein Faserbruch |
| $\sigma_2 = 150\,\text{MPa}$ | $>$ | $R_T^{(+)} = 35\,\text{MPa}$ | **✗ Zwischenfaserbruch** |
| $\vert\tau_{12}\vert = 260\,\text{MPa}$ | $>$ | $R_{LT} = 50\,\text{MPa}$ | **✗ Schubbruch** |

**Versagen tritt ein** – zuerst durch Querzug ($\sigma_2$), da $R_T^{(+)}$ bereits bei $\sigma_x \approx 140\,\text{MPa}$ erreicht wird.

</div>

<div class="hinweis">

**Physikalische Bedeutung:** Bei schräger Belastung wird die Matrix auf Querzug beansprucht. Da $R_T^{(+)} \ll R_L^{(+)}$, bestimmt die Matrix – nicht die Faser – das Versagen. Rissrichtung ist parallel zur Faser.

</div>

---

# Aufgabe 2 – Maximaldehnungskriterium mit Querkontraktion

<div class="aufgabe">

Für eine CFK-UD-Schicht (T300, Faserkoordinaten) gelten:

$$E_L = 130\,\text{GPa}, \quad E_T = 9\,\text{GPa}, \quad \nu_{LT} = 0{,}28$$

$$R_L^{(+)} = 1300\,\text{MPa}, \quad R_T^{(+)} = 50\,\text{MPa}, \quad R_{LT} = 60\,\text{MPa}, \quad G_{LT} = 5\,\text{GPa}$$

**Beanspruchung:** $\sigma_1 = 800\,\text{MPa}$, $\sigma_2 = 30\,\text{MPa}$, $\tau_{12} = 0$

**a)** Berechnen Sie $\varepsilon_1$ und $\varepsilon_2$ unter Berücksichtigung der Querkontraktion.

**b)** Überprüfen Sie das Maximaldehnungskriterium. Versagt die Schicht?

**c)** Vergleichen Sie mit dem Maximalspannungskriterium. Was fällt auf?

</div>

---

# Lösung 2a – Dehnungen

<div class="loesung">

$$\nu_{TL} = \nu_{LT} \cdot \frac{E_T}{E_L} = 0{,}28 \cdot \frac{9}{130} = 0{,}0194$$

$$\varepsilon_1 = \frac{800}{130\,000} - 0{,}28 \cdot \frac{30}{130\,000} = 6{,}154 \cdot 10^{-3} - 0{,}065 \cdot 10^{-3} = \mathbf{6{,}089 \cdot 10^{-3}}$$

$$\varepsilon_2 = \frac{30}{9\,000} - 0{,}0194 \cdot \frac{800}{130\,000} = 3{,}333 \cdot 10^{-3} - 0{,}119 \cdot 10^{-3} = \mathbf{3{,}214 \cdot 10^{-3}}$$

</div>

---

# Lösung 2b/c – Kriterienvergleich

<div class="loesung">

**Grenzdehnungen:**

$$\varepsilon_L^{(+)} = \frac{1300}{130\,000} = 10{,}0 \cdot 10^{-3} \qquad \varepsilon_T^{(+)} = \frac{50}{9\,000} = 5{,}56 \cdot 10^{-3}$$

| Dehnung | Wert | Grenzwert | Versagen? |
|---|---|---|---|
| $\varepsilon_1 = 6{,}09 \cdot 10^{-3}$ | $<$ | $10{,}0 \cdot 10^{-3}$ | ✓ kein Faserbruch |
| $\varepsilon_2 = 3{,}21 \cdot 10^{-3}$ | $<$ | $5{,}56 \cdot 10^{-3}$ | ✓ kein ZFB |

**Kein Versagen.** Maximalspannungskriterium liefert dasselbe Ergebnis ($\sigma_2 = 30 < 50\,\text{MPa}$).

</div>

<div class="hinweis">

Die Querkontraktion infolge $\sigma_1$ verringert $\varepsilon_2$ gegenüber dem reinen Querzuganteil leicht. Bei zweiachsigem Druck-/Zugzustand kann dieser Unterschied entscheidend sein.

</div>

---

# Aufgabe 3 – Tsai–Wu-Kriterium & Reservefaktor

<div class="aufgabe">

Eine GFK-UD-Schicht besitzt folgende Festigkeiten:

$$R_L^{(+)} = 1000\,\text{MPa}, \quad R_L^{(-)} = 1000\,\text{MPa}$$
$$R_T^{(+)} = 35\,\text{MPa}, \quad R_T^{(-)} = 150\,\text{MPa}, \quad R_{LT} = 50\,\text{MPa}$$

**Beanspruchung:** $\sigma_1 = 200\,\text{MPa}$, $\sigma_2 = 25\,\text{MPa}$, $\tau_{12} = 15\,\text{MPa}$

**a)** Berechnen Sie alle Tsai–Wu-Koeffizienten ($F_{12} = 0$).

**b)** Werten Sie das Kriterium aus. Versagt die Schicht?

**c)** Bestimmen Sie den Reservefaktor $RF$ durch Lösung der quadratischen Gleichung.

</div>

---

# Lösung 3a – Koeffizienten

<div class="loesung">

$$F_{11} = \frac{1}{1000 \cdot 1000} = 1{,}0 \cdot 10^{-6}\,\text{MPa}^{-2}$$

$$F_{22} = \frac{1}{35 \cdot 150} = 1{,}905 \cdot 10^{-4}\,\text{MPa}^{-2} \qquad F_{44} = \frac{1}{50^2} = 4{,}0 \cdot 10^{-4}\,\text{MPa}^{-2}$$

$$F_1 = \frac{1}{1000} - \frac{1}{1000} = 0 \qquad F_2 = \frac{1}{35} - \frac{1}{150} = 0{,}02857 - 0{,}00667 = 0{,}02190\,\text{MPa}^{-1}$$

</div>

---

# Lösung 3b – Kriteriumsauswertung

<div class="loesung">

$$\text{TW} = \underbrace{10^{-6} \cdot 200^2}_{0{,}040} + \underbrace{1{,}905\cdot10^{-4} \cdot 25^2}_{0{,}119} + \underbrace{4\cdot10^{-4} \cdot 15^2}_{0{,}090} + \underbrace{0 \cdot 200}_{0} + \underbrace{0{,}02190 \cdot 25}_{0{,}548}$$

$$\text{TW} = 0{,}797 < 1 \quad \Rightarrow \quad \textbf{kein Versagen}$$

</div>

---

# Lösung 3c – Reservefaktor

<div class="loesung">

Ersetze $\sigma_i \to RF \cdot \sigma_i$. Die Gleichung $f(RF) = 1$ lautet:

$$\underbrace{(F_{11}\sigma_1^2 + F_{22}\sigma_2^2 + F_{44}\tau_{12}^2)}_{A} \cdot RF^2 + \underbrace{(F_1\sigma_1 + F_2\sigma_2)}_{B} \cdot RF - 1 = 0$$

$$A = 0{,}040 + 0{,}119 + 0{,}090 = 0{,}249 \qquad B = 0 + 0{,}548 = 0{,}548$$

$$RF = \frac{-0{,}548 + \sqrt{0{,}548^2 + 4 \cdot 0{,}249}}{2 \cdot 0{,}249} = \frac{-0{,}548 + \sqrt{1{,}297}}{0{,}498} = \frac{-0{,}548 + 1{,}139}{0{,}498} \approx \mathbf{1{,}19}$$

</div>

<div class="hinweis">

In der Luftfahrt gilt $j = 1{,}5$ → $RF = 1{,}19 < 1{,}5$: Die Sicherheitsanforderung ist **nicht erfüllt**.

</div>

---

# Aufgabe 4 – Hashin-Kriterium

<div class="aufgabe">

Für eine CFK-UD-Schicht (T800, ebener Spannungszustand) gelten:

$$R_L^{(+)} = 1800\,\text{MPa}, \quad R_L^{(-)} = 800\,\text{MPa}$$
$$R_T^{(+)} = 40\,\text{MPa}, \quad R_T^{(-)} = 70\,\text{MPa}, \quad R_{LT} = 70\,\text{MPa}$$

**Beanspruchung:** $\sigma_1 = -500\,\text{MPa}$, $\sigma_2 = -30\,\text{MPa}$, $\tau_{12} = 40\,\text{MPa}$

**a)** Welche Hashin-Moden sind zu prüfen? Begründen Sie anhand der Vorzeichen.

**b)** Werten Sie die relevanten Kriterien aus.

**c)** Wie groß ist der Reservefaktor gegen Faserdruckbruch?

</div>

---

# Lösung 4a – Modenauswahl

<div class="loesung">

| Spannung | Vorzeichen | Aktiver Modus |
|---|---|---|
| $\sigma_1 = -500\,\text{MPa}$ | $< 0$ | **Druckbruch Faser** (Mode 2) |
| $\sigma_2 = -30\,\text{MPa}$ | $< 0$ | **Druckbruch Matrix** (Mode 4) |

Mode 1 (Faserzug) und Mode 3 (Matrixzug) entfallen.

</div>

---

# Lösung 4b/c – Auswertung

<div class="loesung">

**Mode 2 – Faserdruckbruch:**

$$\frac{\sigma_1^2}{R_L^{(-)2}} = \frac{500^2}{800^2} = \frac{250\,000}{640\,000} = 0{,}391 < 1 \quad \checkmark$$

$$RF = \sqrt{\frac{1}{0{,}391}} = \sqrt{2{,}56} = \mathbf{1{,}60}$$

**Mode 4 – Matrixdruckbruch** (vereinfacht mit $R_{TT} \approx R_{LT}/\sqrt{3} \approx 40\,\text{MPa}$):

$$\left[\left(\frac{70}{80}\right)^2 - 1\right]\frac{-30}{70} + \frac{(-30)^2}{4 \cdot 40^2} + \frac{40^2}{70^2} = 0{,}052 + 0{,}141 + 0{,}327 = 0{,}520 < 1 \quad \checkmark$$

**Kein Versagen in beiden Moden.**

</div>

---

# Aufgabe 5 – Puck-Kriterium (2D, Modus A)

<div class="aufgabe">

Für eine GFK-UD-Schicht gelten:

$$R_T^{(+)} = 45\,\text{MPa}, \quad R_{LT} = 65\,\text{MPa}, \quad p_{LT}^{(+)} = 0{,}30$$

**Beanspruchung:** $\sigma_2 = 20\,\text{MPa}$ (Zug), $\tau_{21} = 30\,\text{MPa}$

**a)** Begründen Sie, warum Modus A anzuwenden ist.

**b)** Werten Sie das Puck-Kriterium (Modus A) aus.

**c)** Welchen Bruchwinkel $\theta_{fp}$ ergibt sich? Was bedeutet das physikalisch?

</div>

---

# Lösung 5 – Puck Modus A

<div class="loesung">

**a)** Da $\sigma_2 = 20\,\text{MPa} > 0$ (Querzug) → **Modus A**, $\theta_{fp} = 0°$.

**b)** Koeffizient vor $\sigma_2^2$:

$$\frac{1}{45^2} - \frac{2 \cdot 0{,}30}{65 \cdot 45} = 4{,}938\cdot10^{-4} - 2{,}051\cdot10^{-4} = 2{,}887\cdot10^{-4}\,\text{MPa}^{-2}$$

$$\text{Puck}_A = 2{,}887\cdot10^{-4} \cdot 400 + \frac{2 \cdot 0{,}30}{65} \cdot 20 + \frac{900}{4225}$$

$$= 0{,}115 + 0{,}185 + 0{,}213 = \mathbf{0{,}513} < 1 \quad \checkmark \quad \text{kein Versagen}$$

</div>

<div class="hinweis">

**c)** $\theta_{fp} = 0°$: Der Bruch verläuft **parallel zur Faser** (in der Längsebene). Die Bruchfläche öffnet senkrecht zur Querrichtung – typischer Matrixriss bei Querzug + Schub.

</div>

---

# Aufgabe 6 – Bruchmechanik: Mixed Mode

<div class="aufgabe">

Ein DCB-Versuch an einem CFK-Laminat liefert:

$$G_{Ic} = 250\,\text{J/m}^2, \quad G_{IIc} = 600\,\text{J/m}^2$$

Eine FE-Analyse einer Grenzschicht-Delamination ergibt:

$$G_I = 180\,\text{J/m}^2, \quad G_{II} = 200\,\text{J/m}^2$$

**a)** Überprüfen Sie mit dem linearen Mixed-Mode-Kriterium ($m_I = m_{II} = 1$), ob Rissfortschritt auftritt.

**b)** Bestimmen Sie den Reservefaktor $RF$ gegen Delamination.

**c)** Welcher Versuch liefert $G_{Ic}$, welcher $G_{IIc}$? Nennen Sie je die Norm.

</div>

---

# Lösung 6 – Mixed Mode

<div class="loesung">

**a)**

$$\frac{G_I}{G_{Ic}} + \frac{G_{II}}{G_{IIc}} = \frac{180}{250} + \frac{200}{600} = 0{,}720 + 0{,}333 = 1{,}053 > 1$$

→ **Rissfortschritt tritt ein!**

**b)** Da das Kriterium linear in $G$:

$$RF = \frac{1}{1{,}053} \approx \mathbf{0{,}95} < 1 \quad \Rightarrow \text{ Versagen bestätigt}$$

**c)**

| Größe | Versuch | Norm |
|---|---|---|
| $G_{Ic}$ | DCB – Double Cantilever Beam | DIN EN 6033 (1995) |
| $G_{IIc}$ | ENF – End Notch Flexure | DIN EN 6034 (1995) |

</div>

---

# Aufgabe 7 – Vergleich & Diskussion

<div class="aufgabe">

Richtig oder falsch? Begründen Sie in jeweils 2–3 Sätzen.

1. Das Maximalspannungskriterium ist immer konservativer als das Maximaldehnungskriterium.

2. Das Tsai–Wu-Kriterium liefert für $R_L^{(+)} = R_L^{(-)}$ und $R_T^{(+)} = R_T^{(-)}$ keine linearen Terme.

3. Das Puck-Kriterium unterscheidet Faserbruch und Zwischenfaserbruch, weil beide durch verschiedene physikalische Mechanismen ausgelöst werden.

4. Ein Reservefaktor $RF = 1{,}2$ ist in der Luftfahrt ausreichend, da er größer als 1 ist.

</div>

---

# Lösung 7 – Diskussion

<div class="loesung">

**1. Falsch.** Bei zweiachsigem Zugzustand reduziert die Querkontraktion $\varepsilon_2$ gegenüber dem reinen Spannungsmaß. Das Dehnungskriterium kann dann günstiger urteilen als das Spannungskriterium – oder umgekehrt, je nach Vorzeichen.

**2. Richtig.** $F_1 = 1/R_L^{(+)} - 1/R_L^{(-)} = 0$ und $F_2 = 0$, da Zug- und Druckfestigkeit identisch sind. Das Kriterium wird dann rein quadratisch – symmetrisch um den Ursprung.

**3. Richtig.** Faserbruch = Versagen der Verstärkungsfaser (Mikroknicken, Zugbruch). Zwischenfaserbruch = Matrixriss parallel zur Faser, gesteuert durch Normalspannung und Schub in der Bruchebene (Mohr'sche Hypothese). Gemeinsame Kriterien wären physikalisch nicht sinnvoll.

**4. Falsch.** In der Luftfahrt gilt $j = 1{,}5$. Die Bedingung lautet $RF \geq j = 1{,}5$. Mit $RF = 1{,}2 < 1{,}5$ ist die Sicherheitsanforderung **nicht erfüllt**.

</div>

---

# Zusammenfassung – Versagenskriterien im Überblick

| Kriterium | Interaktion | FB / ZFB getrennt | Parameter | Aufwand |
|---|---|---|---|---|
| Max. Spannung | Nein | Nein | 5 | Gering |
| Max. Dehnung | Über $\nu$ | Nein | 5 + E, G | Gering |
| Tsai–Wu | Vollständig | Nein | 5 (+ $F_{12}$) | Mittel |
| Hashin | Teilweise | **Ja** | 5 | Mittel |
| Puck | Physikalisch | **Ja** | 5 + $p$-Param. | Hoch |

<div class="hinweis">

Für industrielle Anwendungen sind **Puck** und **Hashin** heute Stand der Technik. Tsai–Wu eignet sich als schnelle Abschätzung. Für Delamination ist stets die Bruchmechanik ($G_{Ic}$, $G_{IIc}$) heranzuziehen.

</div>

---

<!-- _class: lead -->

## Vielen Dank!

**Fragen und Diskussion**

Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal