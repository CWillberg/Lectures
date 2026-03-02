---
marp: true

theme: h2
header: 'Seminar Festigkeit'
footer: ''

title: Werkstofftechnik II – Seminar Dehnungsmaße
author: Christian Willberg

style: |
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
</style>

# Seminar Werkstofftechnik II – Dehnungsmaße
Prof. Dr.-Ing. Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

Kontakt: christian.willberg@h2.de

---
<!--paginate: true-->

# Übersicht der Gleichungen

| Nr. | Gleichung | Bedeutung |
|---|---|---|
| (1) | $\varepsilon = \frac{l - l_0}{l_0}$ | Ingenieurdehnung |
| (2) | $\varphi = \ln\!\left(\frac{l}{l_0}\right) = \ln(1+\varepsilon)$ | Wahre (log.) Dehnung |
| (3) | $\sigma_w = \sigma \cdot (1 + \varepsilon)$ | Wahre Spannung |
| (4) | $Z = \frac{A_0 - A_u}{A_0} \cdot 100\,\%$ | Brucheinschnürung |
| (5) | $\varphi_u = \ln\!\frac{1}{1-Z}$ | Wahre Bruchdehnung |
| (6) | $w = \int_0^{\varepsilon_B} \sigma\, d\varepsilon$ | Zähigkeit |
| (7) | $\dot{\varepsilon} = v / l_0$ | Dehnrate |
| (8) | $\sigma_d = \sigma_0\!\left[1 + \!\left(\frac{\dot{\varepsilon}}{C}\right)^{\!1/p}\right]$ | Cowper-Symonds |

---

# Ingenieurdehnung & Wahre Dehnung

## Kurztheorie

<div class="zwei-spalten">
<div>

<div class="eq">

$$\varepsilon = \frac{l - l_0}{l_0}$$

</div>

- Bezugslänge **fest** ($l_0$)
- Gültig für **kleine** Deformationen
- **Nicht** additiv bei Mehrstufenprozessen

</div>
<div>

<div class="eq">

$$\varphi = \ln\!\left(\frac{l}{l_0}\right) = \ln(1+\varepsilon)$$

</div>

- Bezugslänge **aktuell** ($l$)
- Gültig auch für **große** Deformationen
- **Additiv:** $\varphi_{ges} = \varphi_1 + \varphi_2$

</div>
</div>

<div class="hinweis">

Faustregel: Für $\varepsilon < 5\,\%$ gilt $\varphi \approx \varepsilon$ (Fehler $< 2{,}5\,\%$).

</div>

---

# Aufgabe 1 – Drahtziehen

<div class="aufgabe">

**Aufgabe 1:** Ein Kupferdraht wird in einem einzigen Zug von $l_0 = 500\,\text{mm}$ auf $l = 650\,\text{mm}$ gestreckt.

(a) Berechne Ingenieurdehnung $\varepsilon$ und wahre Dehnung $\varphi$.

(b) Ein zweiter Draht wird in zwei Schritten gestreckt: erst auf $l_1 = 575\,\text{mm}$, dann auf $l_2 = 650\,\text{mm}$. Zeige, dass die wahre Dehnung additiv ist, die Ingenieurdehnung aber nicht.

(c) Ab welcher Dehnung beträgt der Unterschied zwischen $\varepsilon$ und $\varphi$ mehr als $5\,\%$?

</div>

---

# Lösung – Aufgabe 1

<div class="loesung">

**(a)**
$$\varepsilon = \frac{650 - 500}{500} = 0{,}30 = 30\,\%$$
$$\varphi = \ln\!\frac{650}{500} = \ln(1{,}3) = 0{,}262 = 26{,}2\,\%$$

**(b)**
$$\varphi_1 = \ln\!\frac{575}{500} = 0{,}140 \qquad \varphi_2 = \ln\!\frac{650}{575} = 0{,}123$$
$$\varphi_1 + \varphi_2 = 0{,}263 \approx \varphi_{ges}\;✓$$
$$\varepsilon_1 + \varepsilon_2 = 0{,}15 + 0{,}130 = 0{,}280 \neq \varepsilon_{ges} = 0{,}30\;\text{✗}$$

**(c)** $\varepsilon - \varphi > 5\,\%$ der Ingenieurdehnung: aus Taylor-Entwicklung $\varphi \approx \varepsilon - \varepsilon^2/2$ folgt Differenz $\approx \varepsilon^2/2 > 0{,}05\,\varepsilon$ → $\varepsilon > 0{,}10 = 10\,\%$.

</div>

---

# Aufgabe 2 – Wahre Spannung

<div class="aufgabe">

**Aufgabe 2:** Eine Stahlzugprobe ($A_0 = 50\,\text{mm}^2$) zeigt folgendes Verhalten:

| Punkt | Kraft $F$ [kN] | Ingenieurdehnung $\varepsilon$ |
|---|---|---|
| Streckgrenze | 18,0 | 0,002 |
| Zugfestigkeit | 27,5 | 0,18 |
| Bruch | 20,0 | 0,22 |

(a) Berechne Ingenieurspannung und wahre Spannung an allen drei Punkten.

(b) Erkläre, warum die wahre Spannung beim Bruch höher ist als bei der Zugfestigkeit, obwohl die Kraft abgenommen hat.

</div>

---

# Lösung – Aufgabe 2

<div class="loesung">

**(a)** Mit $\sigma = F/A_0$ und $\sigma_w = \sigma \cdot (1+\varepsilon)$:

| Punkt | $\sigma$ [MPa] | $\sigma_w$ [MPa] |
|---|---|---|
| Streckgrenze | 360 | $360 \cdot 1{,}002 = 360{,}7$ |
| Zugfestigkeit | 550 | $550 \cdot 1{,}18 = 649$ |
| Bruch | 400 | $400 \cdot 1{,}22 = 488$ |

**(b)** Nach dem Kraftmaximum setzt **Einschnürung** ein: der Querschnitt $A$ nimmt lokal stark ab. Obwohl $F$ sinkt, gilt $\sigma_w = F/A$ – und $A$ fällt schneller als $F$. Daher steigt $\sigma_w$ weiter, bis der Bruch eintritt.

</div>

---

# Brucheinschnürung & Wahre Bruchdehnung

## Kurztheorie

<div class="zwei-spalten">
<div>

<div class="eq">

$$Z = \frac{A_0 - A_u}{A_0} \cdot 100\,\%$$

</div>

- $Z$ = Maß für **Duktilität**
- Spröde Werkstoffe: $Z \approx 0$
- Zähe Stähle: $Z = 50{-}65\,\%$

</div>
<div>

<div class="eq">

$$\varphi_u = \ln\!\frac{1}{1-Z}$$

</div>

- Wahre Bruchdehnung aus Querschnittsmessung
- Unabhängig von Messlänge → **reproduzierbar**

</div>
</div>

<div class="hinweis">

Aus Volumenkonstanz bei Plastizität folgt: $A_0 \cdot l_0 = A_u \cdot l_u$

</div>

---

# Aufgabe 3 – Werkstoffvergleich

<div class="aufgabe">

**Aufgabe 3:** Drei Werkstoffe werden im Zugversuch geprüft (Ausgangsdurchmesser $d_0 = 12\,\text{mm}$):

| Werkstoff | $d_u$ [mm] |
|---|---|
| Baustahl S355 | 8,4 |
| Aluminiumlegierung 7075-T6 | 10,9 |
| Grauguss GJL-250 | 11,9 |

(a) Berechne die Brucheinschnürung $Z$ für alle drei Werkstoffe.

(b) Berechne die wahre Bruchdehnung $\varphi_u$ für alle drei.

(c) Ordne die Werkstoffe nach Duktilität und begründe das Ergebnis werkstoffkundlich.

</div>

---

# Lösung – Aufgabe 3

<div class="loesung">

$A_0 = \frac{\pi}{4}(12)^2 = 113{,}1\,\text{mm}^2$

| Werkstoff | $A_u$ [mm²] | $Z$ [%] | $\varphi_u$ |
|---|---|---|---|
| S355 | 55,4 | **51,0** | $\ln\!\frac{1}{0{,}49} = 0{,}713$ |
| Al 7075-T6 | 93,3 | **17,5** | $\ln\!\frac{1}{0{,}825} = 0{,}193$ |
| GJL-250 | 111,3 | **1,6** | $\ln\!\frac{1}{0{,}984} = 0{,}016$ |

**(c)** Reihenfolge Duktilität: **S355 > Al 7075-T6 > GJL-250**. Grauguss enthält Graphitlamellen als innere Kerben → Bruch ohne makroskopische Einschnürung. Al 7075-T6 ist durch Ausscheidungshärtung hochfest aber spröder als Baustahl. S355 hat viele freie Gleitebenen (kfz/krz) → hohe plastische Reserve.

</div>

---

# Aufgabe 4 – Zähigkeit

<div class="aufgabe">

**Aufgabe 4:** Zwei Werkstoffe haben folgende idealisierte Spannungs-Dehnungs-Verläufe:

**Werkstoff A** (zäher Stahl): $\sigma_E = 300\,\text{MPa}$ bei $\varepsilon_E = 0{,}0015$; linearer Anstieg auf $\sigma_B = 500\,\text{MPa}$ bei $\varepsilon_B = 0{,}25$

**Werkstoff B** (hochfeste Legierung): $\sigma_E = 1\,200\,\text{MPa}$ bei $\varepsilon_E = 0{,}006$; Bruch sofort bei $\varepsilon_B = 0{,}008$ (kein Fließen)

(a) Berechne die Zähigkeit $w$ beider Werkstoffe (trapezförmige Näherung).

(b) Welcher Werkstoff ist für eine crashrelevante Struktur besser geeignet? Begründe.

</div>

---

# Lösung – Aufgabe 4

<div class="loesung">

**(a) Werkstoff A:**
$$w_A = \underbrace{\tfrac{1}{2} \cdot 300 \cdot 0{,}0015}_{\text{elastisch}} + \underbrace{\tfrac{300+500}{2} \cdot (0{,}25 - 0{,}0015)}_{\text{plastisch}}$$
$$w_A = 0{,}225 + 99{,}4 = \mathbf{99{,}6\,\text{N/mm}^2}$$

**Werkstoff B** (rein elastisch bis Bruch):
$$w_B = \tfrac{1}{2} \cdot 1200 \cdot 0{,}008 = \mathbf{4{,}8\,\text{N/mm}^2}$$

**(b)** Werkstoff **A** ist trotz geringerer Festigkeit über **20-mal zäher**. Für crashrelevante Strukturen ist die Energieabsorption entscheidend → Werkstoff A. Hohe Festigkeit allein schützt nicht vor plötzlichem Sprödbruch.

</div>

---

# Dehnrate & Cowper-Symonds

## Kurztheorie

<div class="eq">

$$\dot{\varepsilon} = \frac{v}{l_0} \quad [\text{s}^{-1}] \qquad\qquad \sigma_d = \sigma_0 \left[1 + \left(\frac{\dot{\varepsilon}}{C}\right)^{1/p}\right]$$

</div>

| Werkstoff | $C$ [s⁻¹] | $p$ |
|---|---|---|
| Weichwerkstahl | 40,4 | 5 |
| Stahl (allg.) | 6844 | 3,91 |
| Aluminium | 6500 | 4 |

<div class="hinweis">

Höhere Dehnrate → höhere Fließspannung. Ursache: Versetzungen können thermisch aktivierte Hindernisse bei hoher Geschwindigkeit nicht mehr umgehen.

</div>

---

# Aufgabe 5 – Dehnrate & dynamische Festigkeit

<div class="aufgabe">

**Aufgabe 5:** Ein Karosseriebauteil aus Weichwerkstahl ($\sigma_0 = 220\,\text{MPa}$, $C = 40{,}4\,\text{s}^{-1}$, $p = 5$) wird in drei Situationen belastet:

| Situation | Traversengeschwindigkeit | Messlänge |
|---|---|---|
| Laborversuch | $v = 3\,\text{mm/min}$ | $l_0 = 60\,\text{mm}$ |
| Pressenumformung | $v = 0{,}5\,\text{m/s}$ | $l_0 = 60\,\text{mm}$ |
| Frontcrash (100 km/h) | $v = 10\,\text{m/s}$ | $l_0 = 60\,\text{mm}$ |

(a) Berechne $\dot{\varepsilon}$ für alle drei Situationen.

(b) Berechne die dynamische Streckgrenze $\sigma_d$ für Presse und Crash.

(c) Um wie viel Prozent steigt die Festigkeit beim Crash gegenüber dem Laborversuch?

</div>

---

# Lösung – Aufgabe 5

<div class="loesung">

**(a) Dehnraten:**
$$\dot{\varepsilon}_\text{Labor} = \frac{3/60 \cdot 10^{-3}}{0{,}06} = 8{,}3 \times 10^{-4}\,\text{s}^{-1}$$
$$\dot{\varepsilon}_\text{Presse} = \frac{0{,}5}{0{,}06} = 8{,}3\,\text{s}^{-1} \qquad \dot{\varepsilon}_\text{Crash} = \frac{10}{0{,}06} = 167\,\text{s}^{-1}$$

**(b) Cowper-Symonds:**
$$\sigma_{d,\text{Presse}} = 220 \cdot \left[1 + \left(\tfrac{8{,}3}{40{,}4}\right)^{0{,}2}\right] = 220 \cdot [1 + 0{,}836] \approx \mathbf{404\,\text{MPa}}$$
$$\sigma_{d,\text{Crash}} = 220 \cdot \left[1 + \left(\tfrac{167}{40{,}4}\right)^{0{,}2}\right] = 220 \cdot [1 + 1{,}330] \approx \mathbf{513\,\text{MPa}}$$

**(c)** Steigerung Crash vs. Labor: $\frac{513 - 220}{220} \cdot 100\,\% \approx \mathbf{133\,\%}$

</div>

---

# Aufgabe 6 – Kombiniert

<div class="aufgabe">

**Aufgabe 6:** Eine Titanlegierung (Ti-6Al-4V) hat folgende Kennwerte: $\sigma_0 = 900\,\text{MPa}$, $C = 2\,500\,\text{s}^{-1}$, $p = 9$. Im Zugversuch wird eine Probe ($d_0 = 8\,\text{mm}$, $l_0 = 40\,\text{mm}$) mit $v = 1\,\text{m/s}$ geprüft.

(a) Berechne $\dot{\varepsilon}$ und die dynamische Streckgrenze $\sigma_d$.

(b) Die Probe bricht bei $d_u = 6{,}1\,\text{mm}$. Berechne $Z$ und $\varphi_u$.

(c) Ein Ingenieur schlägt vor, die Probe doppelt so schnell ($v = 2\,\text{m/s}$) zu prüfen. Um wie viel Prozent ändert sich $\sigma_d$? Ist die Änderung für Ti-6Al-4V groß oder klein – und warum?

</div>

---

# Lösung – Aufgabe 6

<div class="loesung">

**(a)**
$$\dot{\varepsilon} = \frac{1{,}0}{0{,}04} = 25\,\text{s}^{-1}$$
$$\sigma_d = 900 \cdot \left[1 + \left(\tfrac{25}{2500}\right)^{1/9}\right] = 900 \cdot [1 + (0{,}01)^{0{,}111}] = 900 \cdot [1 + 0{,}596] \approx \mathbf{1436\,\text{MPa}}$$

**(b)**
$$A_0 = \tfrac{\pi}{4}(8)^2 = 50{,}3\,\text{mm}^2 \qquad A_u = \tfrac{\pi}{4}(6{,}1)^2 = 29{,}2\,\text{mm}^2$$
$$Z = \frac{50{,}3 - 29{,}2}{50{,}3} \cdot 100\,\% \approx \mathbf{42\,\%} \qquad \varphi_u = \ln\!\frac{1}{0{,}58} \approx \mathbf{0{,}545}$$

**(c)** $\dot{\varepsilon} = 50\,\text{s}^{-1}$: $\sigma_d = 900 \cdot [1 + (0{,}02)^{0{,}111}] \approx 1467\,\text{MPa}$ → Änderung nur **$+2{,}2\,\%$**. Ti-6Al-4V hat sehr großes $p = 9$ → schwacher Dehnrateneinfluss (flache Potenz → kleiner Verstärkungsfaktor).

</div>

---

# Zusammenfassender Vergleich

| Größe | Formel | Besonderheit |
|---|---|---|
| Ingenieurdehnung $\varepsilon$ | $\frac{l-l_0}{l_0}$ | Nicht additiv |
| Wahre Dehnung $\varphi$ | $\ln(1+\varepsilon)$ | **Additiv** |
| Wahre Spannung $\sigma_w$ | $\sigma(1+\varepsilon)$ | Steigt bis Bruch |
| Brucheinschnürung $Z$ | $\frac{A_0-A_u}{A_0}$ | Duktilitätsmaß |
| Wahre Bruchdehnung $\varphi_u$ | $\ln\frac{1}{1-Z}$ | Aus Querschnitt |
| Zähigkeit $w$ | $\int \sigma\, d\varepsilon$ | Fläche unter Kurve |
| Dehnrate $\dot{\varepsilon}$ | $v/l_0$ | $[\text{s}^{-1}]$ |
| Cowper-Symonds $\sigma_d$ | $\sigma_0[1+(\dot{\varepsilon}/C)^{1/p}]$ | Höhere Rate → höhere $\sigma$ |

<div class="hinweis">

**Merke:** Kleine $p$ → starker Dehnrateneinfluss (z.B. Weichwerkstahl $p=5$). Große $p$ → schwacher Einfluss (z.B. Ti-Leg. $p=9$).

</div>