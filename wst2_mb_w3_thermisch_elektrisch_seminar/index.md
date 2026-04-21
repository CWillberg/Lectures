---
marp: true
theme: h2
header: 'Seminar – Thermische & Elektrische Eigenschaften'
footer: ''
title: Werkstofftechnik II – Seminar Thermische & Elektrische Eigenschaften
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

# Seminar Werkstofftechnik II – Thermische & Elektrische Eigenschaften

Prof. Dr.-Ing. Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

Kontakt: christian.willberg@h2.de

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/wst2_mb_w3_thermisch_elektrisch_seminar/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>


---

# Übersicht der Gleichungen

| Nr. | Gleichung | Bedeutung |
|-----|-----------|-----------|
| (T.1) | $Q = m \cdot c_p \cdot \Delta T$ | Wärmekapazität |
| (T.2) | $C_m \approx 3R$ | Dulong-Petit |
| (T.3) | $\Delta L = L_0 \cdot \alpha_L \cdot \Delta T$ | Thermische Ausdehnung |
| (T.4) | $\dot{q} = -\lambda \cdot dT/dx$ | Fourier'sches Gesetz |
| (T.5) | $\lambda / (\sigma T) = L_0$ | Wiedemann-Franz |
| (T.6) | $a = \lambda / (\rho c_p)$ | Thermische Diffusivität |
| (T.7) | $\sigma_\text{th} = E \cdot \alpha_L \cdot \Delta T$ | Thermische Spannung |
| (T.8) | $R = \sigma_f \lambda / (E \alpha_L)$ | Thermoschockbeständigkeit |
| (E.1) | $\rho_W = \rho_\text{Ph} + \rho_\text{Def} + \rho_\text{Leg}$ | Matthiessen |
| (E.2) | $\sigma = n e^2 \tau / m_e$ | Drude-Modell |

---

# Wärmekapazität 



<div class="eq">

$$Q = m \cdot c_p \cdot \Delta T \qquad C_m \approx 3R = 24{,}9 \; \text{J/(mol K)}$$

</div>



<div class="aufgabe">

**Aufgabe 1:** Ein Kupferblock ($m = 2$ kg, $M = 64$ g/mol) und ein Aluminiumblock ($m = 2$ kg, $M = 27$ g/mol) werden mit der gleichen Wärmemenge $Q = 100$ kJ erwärmt.

(a) Berechne $c_p$ für Cu und Al über Dulong-Petit.

(b) Berechne $\Delta T$ für beide Werkstoffe.

(c) Welcher Werkstoff eignet sich besser als Wärmespeicher – und warum?

</div>

---

# Lösung – Aufgabe 1

<div class="loesung">

**(a)** Dulong-Petit: $c_p = 3R / M$

$$c_{p,\text{Cu}} = \frac{3 \cdot 8{,}314}{0{,}064} = \frac{24{,}94}{0{,}064} \approx \mathbf{390} \; \text{J/(kgK)}$$

$$c_{p,\text{Al}} = \frac{3 \cdot 8{,}314}{0{,}027} = \frac{24{,}94}{0{,}027} \approx \mathbf{924} \; \text{J/(kgK)}$$

**(b)** $\Delta T = Q / (m \cdot c_p)$

$$\Delta T_\text{Cu} = \frac{100\,000}{2 \cdot 390} = \mathbf{128{,}2 \; \text{K}} \qquad \Delta T_\text{Al} = \frac{100\,000}{2 \cdot 924} = \mathbf{54{,}1 \; \text{K}}$$

**(c)** Al erwärmt sich nur halb so stark → **besserer Wärmespeicher pro kg**. Cu ist schwerer und speichert weniger Energie pro kg – aber besser als Wärmeleiter.

</div>

---

# Thermische Ausdehnung


<div class="eq">

$$\Delta L = L_0 \cdot \alpha_L \cdot \Delta T \qquad \Delta V = V_0 \cdot 3\alpha_L \cdot \Delta T$$

</div>


<div class="aufgabe">

**Aufgabe 2:** Eine Stahlbrücke ($L_0 = 200$ m, $\alpha_L = 12 \times 10^{-6}$ K⁻¹) wird im Sommer auf $T_\text{max} = 55\,°$C und im Winter auf $T_\text{min} = -25\,°$C abgekühlt. Referenztemperatur beim Einbau: $T_0 = 15\,°$C.

(a) Berechne die maximale Längenänderung $\Delta L_\text{max}$.

(b) Wie groß muss die Dehnfuge mindestens sein?

(c) Welche thermische Spannung entstünde ohne Fuge ($E = 210\,000$ MPa)?

</div>

---

# Lösung – Aufgabe 2

<div class="loesung">

**(a)** Maßgebend ist der größte Temperaturunterschied: $\Delta T_\text{max} = 55 - (-25) = 80$ K

$$\Delta L_\text{max} = 200 \cdot 12 \times 10^{-6} \cdot 80 = \mathbf{0{,}192 \; \text{m} = 192 \; \text{mm}}$$

**(b)** Dehnfuge muss mindestens $\Delta L_\text{max} = \mathbf{192 \; \text{mm}}$ aufnehmen.
In der Praxis: Sicherheitsfaktor → ≥ 200 mm.

**(c)** Thermische Spannung bei vollständiger Einspannung:

$$\sigma_\text{th} = E \cdot \alpha_L \cdot \Delta T = 210\,000 \cdot 12 \times 10^{-6} \cdot 80 = \mathbf{201{,}6 \; \text{MPa}}$$

</div>

→ Fast an der Streckgrenze eines Baustahls S235 ($R_e = 235$ MPa) – ohne Fuge würde die Brücke plastisch verformen oder knicken!

---

# Thermische Spannung in Verbundwerkstoffen

<div class="eq">

$$\sigma_\text{th} = \frac{(\alpha_2 - \alpha_1) \cdot \Delta T}{\dfrac{1}{E_1} + \dfrac{1}{E_2}}$$

</div>

<div class="aufgabe">

**Aufgabe 3:** Eine Kupferschicht ($E_1 = 120\,000$ MPa, $\alpha_1 = 17 \times 10^{-6}$ K⁻¹) wird auf eine Al₂O₃-Keramik ($E_2 = 380\,000$ MPa, $\alpha_2 = 8 \times 10^{-6}$ K⁻¹) gelötet. Nach dem Löten kühlt die Verbindung von $800\,°$C auf $20\,°$C ab.

(a) Berechne $\Delta T$ und $\Delta\alpha = \alpha_1 - \alpha_2$.

(b) Berechne die Eigenspannung $\sigma_\text{th}$ in der Verbindung.

(c) In welchem Werkstoff und in welcher Richtung (Zug/Druck) wirkt die kritische Spannung?

</div>

---

# Lösung – Aufgabe 3

<div class="loesung">

**(a)** $\Delta T = 20 - 800 = -780$ K; $\quad \Delta\alpha = 17 - 8 = 9 \times 10^{-6}$ K⁻¹

**(b)**
$$\sigma_\text{th} = \frac{9 \times 10^{-6} \cdot (-780)}{\dfrac{1}{120\,000} + \dfrac{1}{380\,000}} = \frac{-7{,}02 \times 10^{-3}}{8{,}33 \times 10^{-6} + 2{,}63 \times 10^{-6}}$$

$$= \frac{-7{,}02 \times 10^{-3}}{10{,}96 \times 10^{-6}} \approx \mathbf{-640 \; \text{MPa}}$$

**(c)** Cu will sich beim Abkühlen stärker zusammenziehen als Al₂O₃ → Cu steht unter **Zug**, Keramik unter **Druck**. Da Keramiken unter Zug sehr empfindlich sind ($\sigma_{f,\text{Zug}} \ll \sigma_{f,\text{Druck}}$), versagt die Verbindung typisch durch **Riss in der Keramik nahe der Grenzfläche**.

</div>

---

# Wärmeleitung 

## Gleichungen

<div class="eq">

$$\dot{q} = -\lambda \cdot \frac{dT}{dx} $$

</div>

<div class="aufgabe">

**Aufgabe 4:** Eine Kühlrippe aus Aluminium ($\lambda = 237$ W/(m·K), Querschnitt $A = 4 \times 10^{-4}$ m², Länge $l = 0{,}05$ m) hat an der Basis $T_1 = 80\,°$C und am Ende $T_2 = 30\,°$C.

(a) Berechne den Wärmestrom $\dot{Q} = \dot{q} \cdot A$.



</div>

---

# Lösung – Aufgabe 4

<div class="loesung">

**(a)**
$$\dot{q} = -\lambda \cdot \frac{\Delta T}{l} = -237 \cdot \frac{30 - 80}{0{,}05} = -237 \cdot (-1000) = 237\,000 \; \text{W/m}^2$$

$$\dot{Q} = \dot{q} \cdot A = 237\,000 \cdot 4 \times 10^{-4} = \mathbf{94{,}8 \; \text{W}}$$


</div>

---

# Thermischer Schock



<div class="eq">

$$R = \frac{\sigma_f \cdot \lambda}{E \cdot \alpha_L}$$

</div>

<div class="aufgabe">

**Aufgabe 6:** Vergleiche die Thermoschockbeständigkeit $R$ von zwei Keramiken:

| Werkstoff | $\sigma_f$ [MPa] | $\lambda$ [W/(m·K)] | $E$ [GPa] | $\alpha_L$ [10⁻⁶ K⁻¹] |
|-----------|-----------------|--------------------|-----------|-----------------------|
| Al₂O₃ | 300 | 25 | 380 | 8 |
| Si₃N₄ | 700 | 30 | 300 | 3 |

(a) Berechne $R$ für beide Werkstoffe.

(b) Welche Keramik ist besser für Hochtemperaturanwendungen mit schnellen Temperaturwechseln geeignet?

</div>

---

# Lösung – Aufgabe 6

<div class="loesung">

**(a)**
$$R_{\text{Al}_2\text{O}_3} = \frac{300 \cdot 25}{380\,000 \cdot 8 \times 10^{-6}} = \frac{7\,500}{3{,}04} \approx \mathbf{2\,467 \; \text{W/m}}$$

$$R_{\text{Si}_3\text{N}_4} = \frac{700 \cdot 30}{300\,000 \cdot 3 \times 10^{-6}} = \frac{21\,000}{0{,}9} \approx \mathbf{23\,333 \; \text{W/m}}$$

**(b)** Si₃N₄ ist ca. **9,5× besser** thermoschockbeständig → klar bevorzugt für Turbinenkomponenten, Schneidkeramiken, Bremsscheiben.


</div>

---


<!-- _class: lead -->
# Fragen?

Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de