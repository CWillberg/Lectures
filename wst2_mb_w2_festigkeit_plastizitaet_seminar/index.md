---
marp: true

theme: h2
header: 'Seminar Festigkeit'
footer: ''

title:  Werkstofftechnik II
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
  .title-slide {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    height: 100%;
  }
  .title-slide h1 {
    font-size: 42px;
    border: none;
    color: #1a5276;
  }
  .title-slide .subtitle {
    font-size: 22px;
    color: #5d6d7e;
    margin-top: 8px;
  }
  .title-slide .meta {
    font-size: 17px;
    color: #95a5a6;
    margin-top: 28px;
  }
  .step {
    margin: 6px 0;
    padding-left: 6px;
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
    font-size: 14px; /* Ändere die Schriftgröße des Footers */
    color: #888; /* Ändere die Farbe des Footers */
    text-align: right; /* Ändere die Ausrichtung des Footers */
}

img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>

![bg right](../assets/Figures/bindungen.png)

# Seminar Werkstofftechnik II - Festigkeit
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)



Kontakt: christian.willberg@h2.de

---

# Übersicht der Gleichungen


| Nr. | Gleichung | Bedeutung |
|---|---|---|
| (i) | $\sigma_{\text{ideal}} \approx E/10$ | Ideale Festigkeit |
| (3.1) | $T \approx G b^2 / 2$ | Linienspannung |
| (3.2) | $F = \tau \cdot l \cdot b$ | Kraft auf Versetzung |
| (3.3) | $\Delta\sigma_{\text{m.k.}} = \text{const}\cdot\sqrt{c}$ | Mischkristallhärtung |
| (3.9) | $\Delta\sigma_{t,1} = \text{const}\cdot\sqrt{f_v \cdot r}$ | Teilchenhärtung – Schneiden |
| (3.13) | $\Delta\sigma_{t,2} = \text{const}\cdot Gb\,\sqrt[3]{f_v}/r$ | Teilchenhärtung – Orowan |
| (3.14) | $\Delta\sigma_{\text{f.k.}} = k/\sqrt{d}$ | Feinkornhärtung (Hall-Petch) |
| (3.15) | $\Delta\sigma_v = \text{const}\cdot\sqrt{\rho}$ | Verformungsverfestigung |

---

# Ideale Festigkeit

## Gleichung & Bedeutung

<div class="eq">

$$\sigma_{\text{ideal}} \approx \frac{E}{10}$$

</div>

<div class="hinweis">

**Was steckt dahinter?** Bei einer Dehnung von ca. 25 % ($\varepsilon \approx 0{,}25$) wird die maximale Rückstellkraft zwischen Atomen erreicht. Mit $\sigma = E \cdot \varepsilon$ folgt $\sigma_{\text{ideal}} = E/4$ (einfach) bzw. $E/10$ (mit echten Atompotentialen).

</div>

<div class="aufgabe">

**Aufgabe 1:** Ein Stahl hat $E = 200\,000\,\text{MPa}$, eine einfache Zirkonoxidkeramik ebenfalls. Berechne jeweils die ideale Festigkeit. Vergleiche mit den realen Werten: Stahl ~300 MPa, Zirkonoxid (Druck) 4 000 MPa. Erkläre die Abweichungen.

</div>

---

# Lösung – Ideale Festigkeit

<div class="loesung">

**Stahl:**
$$\sigma_{\text{ideal}} = \frac{200\,000}{10} = 20\,000\,\text{MPa}$$

Realer Wert: ~300 MPa → Verhältnis: $300/20\,000 \approx 1{,}5\,\%$ der idealen Festigkeit.

**Zirkonoxid:**
$$\sigma_{\text{ideal}} = \frac{200\,000}{10} = 20\,000\,\text{MPa}$$

Reale Druckfestigkeit: 4 000 MPa → ca. 20 % erreicht; unter Zug deutlich weniger.

</div>

**Erklärung:** Beim Stahl ermöglichen **Versetzungen** (Teppichtrick) plastische Verformung weit unterhalb $\sigma_{\text{ideal}}$. Bei Keramiken sind Versetzungen bei RT praktisch immobil, aber **Mikrorisse** führen zur Bruchinitiierung bei niedrigen Zugspannungen.

---

# Linienspannung einer Versetzung

## Gleichung & Bedeutung

<div class="eq">

$$T \approx \frac{G \cdot b^2}{2} \qquad \text{[J/m]}$$

</div>

<div class="hinweis">

**Was steckt dahinter?** Jede Versetzung verzerrte das Gitter in ihrer Umgebung. Diese Verzerrungsenergie pro Längeneinheit ist die Linienspannung $T$. Sie bestimmt, wie „teuer" es energetisch ist, eine Versetzung zu verlängern (z. B. durch Krümmen).

</div>

<div class="aufgabe">

**Aufgabe 2:** Berechne die Linienspannung für eine Versetzung in **Aluminium** ($G = 26\,000\,\text{MPa}$, $b = 2{,}86 \times 10^{-10}\,\text{m}$) und in **Eisen** ($G = 81\,000\,\text{MPa}$, $b = 2{,}48 \times 10^{-10}\,\text{m}$). Vergleiche die Ergebnisse.

</div>

---

# Lösung – Linienspannung

<div class="loesung">

**Aluminium:**
$$T_{\text{Al}} = \frac{26\,000 \times 10^6 \cdot (2{,}86 \times 10^{-10})^2}{2} = \frac{26\,000 \times 10^6 \cdot 8{,}18 \times 10^{-20}}{2}$$
$$T_{\text{Al}} \approx 1{,}06 \times 10^{-9}\,\text{J/m} \approx 1{,}06\,\text{nJ/m}$$

**Eisen:**
$$T_{\text{Fe}} = \frac{81\,000 \times 10^6 \cdot (2{,}48 \times 10^{-10})^2}{2} = \frac{81\,000 \times 10^6 \cdot 6{,}15 \times 10^{-20}}{2}$$
$$T_{\text{Fe}} \approx 2{,}49 \times 10^{-9}\,\text{J/m} \approx 2{,}49\,\text{nJ/m}$$

</div>

→ Die Linienspannung in Fe ist ca. **2,4-mal höher** als in Al. Versetzungen in Fe sind energetisch „kostspieliger".

---

# Kraft auf eine Versetzung

## Gleichung & Bedeutung

<div class="eq">

$$F = \tau \cdot l \cdot b \qquad \text{[N]}$$

</div>

<div class="hinweis">

**Was steckt dahinter?** Die äußere Schubspannung $\tau$ leistet bei der Verschiebung der oberen Kristallhälfte um $b$ Arbeit $W = \tau \cdot w \cdot l \cdot b$. Diese Arbeit wird durch die Versetzungsbewegung über Distanz $w$ umgesetzt: $W = F \cdot w$. Gleichsetzen liefert $F = \tau \cdot l \cdot b$.

</div>

<div class="aufgabe">

**Aufgabe 3:** Eine Stufenversetzung in Al hat die Länge $l = 1\,\mu\text{m}$. Bei einer Schubspannung von $\tau = 5\,\text{MPa}$ berechne die Kraft auf die Versetzung.

</div>

---

# Lösung – Kraft auf Versetzung

<div class="loesung">

**Gegeben:** $\tau = 5\,\text{MPa} = 5 \times 10^6\,\text{Pa}$, $l = 1\,\mu\text{m} = 10^{-6}\,\text{m}$, $b_{\text{Al}} = 2{,}86 \times 10^{-10}\,\text{m}$

$$F = 5 \times 10^6 \cdot 10^{-6} \cdot 2{,}86 \times 10^{-10}$$

$$\boxed{F = 1{,}43 \times 10^{-9}\,\text{N} \approx 1{,}43\,\text{nN}}$$

</div>

→ Winzig kleine Kraft – aber auf atomarer Skale reicht das aus, um die Versetzung zu bewegen! Der kritische Schubspannungswert bei reinen Metallen liegt bei nur ca. 1–10 MPa.

---

# Mischkristallhärtung

## Gleichung & Bedeutung

<div class="eq">

$$\Delta\sigma_{\text{m.k.}} = \text{const} \cdot \sqrt{c}$$

</div>

<div class="hinweis">

**Was steckt dahinter?** Jedes gelöste Fremdenatom verzerrte das Gitter lokal. Eine Versetzung muss dieses Verzerrungsfeld überwinden → Energiebarrier pro Atom. Bei höherer Konzentration $c$ sind mehr Atome im „Weg" → höhere Festigkeit. Die Wurzelabhängigkeit folgt aus statistischen Überlegungen zur Versetzung-Atom-Wechselwirkung.

</div>

<div class="aufgabe">

**Aufgabe 4:** Im System Al-Mg wird bei $c_1 = 1\,\text{Gew.-\%}$ Mg ein Fließwiderstand von $\Delta\sigma_1 = 30\,\text{MPa}$ gemessen. Berechne den erwarteten Fließwiderstand bei $c_2 = 4\,\text{Gew.-\%}$ Mg.

</div>

---

# Lösung – Mischkristallhärtung

<div class="loesung">

Aus $\Delta\sigma = \text{const} \cdot \sqrt{c}$ folgt:

$$\frac{\Delta\sigma_2}{\Delta\sigma_1} = \frac{\sqrt{c_2}}{\sqrt{c_1}} = \sqrt{\frac{c_2}{c_1}}$$

$$\Delta\sigma_2 = \Delta\sigma_1 \cdot \sqrt{\frac{c_2}{c_1}} = 30 \cdot \sqrt{\frac{4}{1}} = 30 \cdot 2$$

$$\boxed{\Delta\sigma_2 = 60\,\text{MPa}}$$

</div>

→ Die Konzentration wird **4-fach** erhöht, die Festigkeit aber nur **2-fach** – typisch für die $\sqrt{c}$-Abhängigkeit. Skaleneffekt merken!

---

# Teilchenhärtung – Schneiden

## Gleichung & Bedeutung

<div class="eq">

$$\Delta\sigma_{t,1} = \text{const} \cdot \sqrt{f_v \cdot r}$$

</div>

<div class="hinweis">

**Was steckt dahinter?** Die Versetzung durchschneidet das kohärente Teilchen. Dabei muss sie das Verzerrungsfeld des Teilchens überwinden UND neue Grenzfläche erzeugen (Teilchen wird in zwei Hälften geschnitten). Größere Teilchen → mehr Grenzfläche → höhere Spannung nötig. Der Volumenanteil $f_v$ bestimmt, wie viele Teilchen im Weg stehen.

</div>

<div class="aufgabe">

**Aufgabe 5:** Bei $f_v = 0{,}02$ und $r_1 = 5\,\text{nm}$ wird $\Delta\sigma_{t,1} = 50\,\text{MPa}$ gemessen. Wie ändert sich $\Delta\sigma_{t,1}$, wenn der Radius auf $r_2 = 20\,\text{nm}$ wächst (gleiche $f_v$)?

</div>

---

# Lösung – Schneiden

<div class="loesung">

$$\frac{\Delta\sigma_{t,1}(r_2)}{\Delta\sigma_{t,1}(r_1)} = \frac{\sqrt{f_v \cdot r_2}}{\sqrt{f_v \cdot r_1}} = \sqrt{\frac{r_2}{r_1}} = \sqrt{\frac{20}{5}} = \sqrt{4} = 2$$

$$\boxed{\Delta\sigma_{t,1}(r_2) = 50 \cdot 2 = 100\,\text{MPa}}$$

</div>

→ Radius **4-fach** ↑, Festigkeit **2-fach** ↑ (wieder Wurzel-Abhängigkeit). Achtung: Bei großerem $r$ wird an einem bestimmten Punkt der **Orowan-Mechanismus** energetisch günstiger!

---

# Teilchenhärtung – Orowan

## Gleichung & Bedeutung

<div class="eq">

$$\Delta\sigma_{t,2} = \text{const} \cdot G \cdot b \cdot \frac{\sqrt[3]{f_v}}{r}$$

</div>

<div class="hinweis">

**Was steckt dahinter?** Die Versetzung kann das Teilchen nicht schneiden und wird drum herum gelenkt. Dabei beulen sich die Versetzungssegmente zu Halbkreisen aus – das kostet Energie (Linienspannung!). Je kleiner der Teilchenabstand (→ kleineres $r$ bei gleicher $f_v$), desto mehr Ausbeulung nötig, desto höhere Spannung.

</div>

<div class="aufgabe">

**Aufgabe 6:** Bei $r_1 = 20\,\text{nm}$ wird $\Delta\sigma_{t,2} = 100\,\text{MPa}$ gemessen. Was ist $\Delta\sigma_{t,2}$ bei $r_2 = 40\,\text{nm}$ (gleiche $f_v$)?

</div>

---

# Lösung – Orowan

<div class="loesung">

$$\frac{\Delta\sigma_{t,2}(r_2)}{\Delta\sigma_{t,2}(r_1)} = \frac{r_1}{r_2} = \frac{20}{40} = 0{,}5$$

$$\boxed{\Delta\sigma_{t,2}(r_2) = 100 \cdot 0{,}5 = 50\,\text{MPa}}$$

</div>

→ Radius **2-fach** ↑, Festigkeit **2-fach** ↓ – **umgekehrte Proportionalität!** Genau hier liegt der Unterschied zu dem Schneidmechanismus: Überalterung führt zum Festigkeitsabfall.

---

# Zusammen: Schneiden vs. Orowan

<div class="zwei-spalten">

<div>

### Schneiden (klein $r$)
$$\Delta\sigma_{t,1} \propto \sqrt{r} \quad \nearrow$$

Festigkeit **steigt** mit $r$

</div>

<div>

### Orowan (groß $r$)
$$\Delta\sigma_{t,2} \propto \frac{1}{r} \quad \searrow$$

Festigkeit **sinkt** mit $r$

</div>

</div>

<div class="hinweis">

**Optimaler Radius $r_{\text{opt}}$:** Dort schneiden sich beide Kurven → **maximale Festigkeit** $\Delta\sigma_{t,\text{max}}$. In der Praxis: Auslagern контролiert $r$ → „Peak-Aged"-Zustand.

</div>

---

# Feinkornhärtung (Hall-Petch)

## Gleichung & Bedeutung

<div class="eq">

$$\Delta\sigma_{\text{f.k.}} = \frac{k}{\sqrt{d}}$$

</div>

<div class="hinweis">

**Was steckt dahinter?** Versetzungen können Korngrenzen nicht durchqueren. Sie stapeln sich auf → Spannungskonzentration im Nachbarkorn → erst bei hoher Spannung werden dort neue Versetzungen aktiviert. Kleinere Körnter → mehr Barrieren pro Strecke → höhere Festigkeit.

</div>

<div class="aufgabe">

**Aufgabe 7:** Ein Al-Werkstoff hat bei $d_1 = 0{,}1\,\text{mm}$ eine Feinkornhärtung von $\Delta\sigma_1 = 20\,\text{MPa}$. Berechne $\Delta\sigma$ bei $d_2 = 0{,}01\,\text{mm}$.

</div>

---

# Lösung – Hall-Petch

<div class="loesung">

$$\frac{\Delta\sigma_2}{\Delta\sigma_1} = \frac{k/\sqrt{d_2}}{k/\sqrt{d_1}} = \sqrt{\frac{d_1}{d_2}} = \sqrt{\frac{0{,}1}{0{,}01}} = \sqrt{10} \approx 3{,}16$$

$$\boxed{\Delta\sigma_2 = 20 \cdot 3{,}16 \approx 63\,\text{MPa}}$$

</div>

→ Korngröße um **Faktor 10** verkleinert, Festigkeit um **Faktor 3,16** erhöht. Wichtiger Vorteil: Die **Bruchdehnung steigt** gleichzeitig – einziger Mechanismus mit diesem Eigenschaft!

---

# Verformungsverfestigung

## Gleichung & Bedeutung

<div class="eq">

$$\Delta\sigma_v = \text{const} \cdot \sqrt{\rho}$$

</div>

<div class="hinweis">

**Was steckt dahinter?** Plastische Verformung erzeugt neue Versetzungen (Frank-Read-Quellen). Diese verhaken sich gegenseitig → „Versetzungsdickicht" → gleitende Versetzungen müssen sich durch diese Dickicht schneiden → höhere Spannung nötig. $\rho$ steigt von ~$10^{10}$ auf bis $10^{16}\,\text{m}^{-2}$.

</div>

<div class="aufgabe">

**Aufgabe 8:** Die Versetzungsdichte verdreifacht sich von $\rho_1$ auf $\rho_2 = 3\rho_1$. Um wie viel Prozent steigt $\Delta\sigma_v$?

</div>

---

# Lösung – Verformungsverfestigung

<div class="loesung">

$$\frac{\Delta\sigma_v(\rho_2)}{\Delta\sigma_v(\rho_1)} = \frac{\sqrt{\rho_2}}{\sqrt{\rho_1}} = \sqrt{\frac{3\rho_1}{\rho_1}} = \sqrt{3} \approx 1{,}732$$

$$\boxed{\Delta\sigma_v \text{ steigt um } \approx 73{,}2\,\%}$$

</div>

→ Versetzungsdichte **3-fach** ↑, Festigkeit nur **73 %** ↑ – erneut die Wurzel-Abhängigkeit. Diese Verfestigung ist **kostenlos** (keine Legierungsänderung nötig), aber auf Kosten der Duktilität.

---

# Zusammenfassender Vergleich

| Mechanismus | Abhängigkeit | Radius/Konzentration ↑ | Bruchdehnung |
|---|---|---|---|
| Mischkristall | $\sqrt{c}$ | Festigkeit ↑ | ↓ |
| Teilchen – Schneiden | $\sqrt{r}$ | Festigkeit ↑ | ↓ |
| Teilchen – Orowan | $1/r$ | Festigkeit ↓ | ↓ |
| Feinkorn (Hall-Petch) | $1/\sqrt{d}$ | Festigkeit ↑ | **↑** |
| Verformungsverfestigung | $\sqrt{\rho}$ | Festigkeit ↑ | ↓ |

<div class="hinweis">

**Muster:** Wurzel-Abhängigkeiten überall! Verdoppeln des Parameters → Faktor $\sqrt{2} \approx 1{,}41$ bei der Festigkeit.

</div>

---


<div class="aufgabe">

**Aufgabe 9 (Kombiniert):** Ein Al-Cu-Werkstoff wird ausscheidungsgehärtet. Bei optimaler Auslagerung hat er $r_{\text{opt}} = 10\,\text{nm}$ und $\Delta\sigma_{t,\text{max}} = 300\,\text{MPa}$.

(a) Bestimme qualitativ, was passiert, wenn 2-fach länger ausgelagert wird ($r$ wächst).

(b) Welchen Mechanismus dominiert dann und wie ändert sich die Festigkeit qualitativ?

(c) Wie könnte man die Überalterung technisch vermeiden?

</div>