---
marp: true
header: 'Faserverbundwerkstoffe – Krafteinleitung und Fügetechniken'
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
</style>

<!-- _class: lead -->

# Krafteinleitung und Fügetechniken in FKV
## Schlaufenanschluss 
## Bolzenverbindungen 
## Klebverbindungen

Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Faserverbundwerkstoffe/composites_013/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

# Warum Krafteinleitung besonders kritisch ist

In Leichtbaukonstruktionen wird der Werkstoff **hoch ausgereizt** – Krafteinleitungsbereiche erfordern daher besonderes Augenmerk.

<div class="zwei-spalten">
<div>

**Grundprinzip:** In nahezu jeder tragenden Struktur müssen Kräfte konzentriert ein- oder ausgeleitet werden.

**Besonderheit FKV:**
- Faserparallele Festigkeit sehr hoch
- Querzug- und interlaminare Festigkeit sehr niedrig
- → Krafteinleitung muss **fasergerecht** gestaltet sein

<div class="hinweis">

Obwohl FE-Modellierung möglich ist, ist immer ein **experimenteller Nachweis** an Prototypen notwendig – Betriebsfestigkeit ist rechnerisch nicht sicher genug vorherzusagen.

</div>

</div>
<div>

**Drei Verbindungsprinzipien**

| Prinzip | Wirkung | Beispiele |
|---------|---------|-----------|
| **Stoffschluss** | Molekulare Bindung | Klebung |
| **Kraftschluss** | Reibung | Press-, Klemmverbindung |
| **Formschluss** | Geometrie | Schlaufe, Bolzen, Keil |

**Faustregeln zur Auswahl:**
- Hohe, punktförmige Last → **Schlaufe**
- Dicke Laminate, große Flächen → **Bolzen / gestufte Klebung**
- Dünne Laminate, große Klebfläche → **Klebung**

</div>
</div>

---

<!-- _class: lead -->

# Teil 2: Der Schlaufenanschluss – Grundlagen

---

# Prinzip des Schlaufenanschlusses

<div class="zwei-spalten">
<div>

**Grundidee:** UD-Faserstränge haben den Charakter von Seilen. Die höchste Belastbarkeit bei minimalem Gewicht bieten UD-Stränge, wenn sie **ausschließlich in Faserrichtung** belastet werden.

→ Umschlingen eines Bolzens: **Schlaufenanschluss** (*pin-loaded strap*)

**Anwendung:**
- Hohe, punktuell einzuleitende Kräfte
- Hubschrauber-Rotorblattanschlüsse
- Trag- und Lasteinleitungselemente in Hängeisolatoren
- Tieftemperatur-Behälterhalterungen (GFK: elektrische Isolation)

</div>
<div>

**Ausführungsformen**

<div class="aufgabe">

**Parallelschlaufe** (bevorzugt): Fasern laufen parallel um den Bolzen – kein Aufziehen. Günstigere Spannungsverteilung.

</div>

<div class="hinweis">

**Augenschlaufe**: Fasern werden erst spät zusammengeführt → zusätzliche **Aufziehspannungen** entstehen. Gegenmaßnahme: Querbandagierung. Nur wenn unvermeidbar.

</div>

**Werkstoffe:** Prepregstreifen besonders geeignet (bessere Arbeitshygiene, zähmodifizierte Harze möglich). Höchste Festigkeiten durch sorgfältig manuell gelegte Stränge.

</div>
</div>

---

# Modell: Dickwandiges Rohr unter Innendruck

Zur analytischen Beschreibung des Umschlingungsbereichs eignet sich das Modell des **dickwandigen Rohres unter Innendruck**.

<div class="zwei-spalten">
<div>

**Annahmen (UD-Parallelschlaufe):**
- Kräfte über Schlaufenbreite konstant verteilt
- Rotationssymmetrie → Spannungsänderung nur radial
- Reibung am Bolzen wird vernachlässigt
- Thermische und Quell-Eigenspannungen unberücksichtigt

**Koordinatensystem:** Polarkoordinaten $(r, \varphi)$

</div>
<div>

**Randbedingungen am Innenradius $r_i$:**

<div class="eq">

$$\sigma_r(r_i) = -p_i \qquad \sigma_r(r_a) = 0$$

</div>

**Leibungsdruck** (aus Bolzenkraft $F$, Breite $b$):

<div class="eq">

$$p_i = \frac{F}{2\, r_i\, b}$$

</div>

</div>
</div>

**Drei Gleichungssysteme der Elasto-Statik:**

| System | Gleichung |
|--------|-----------|
| Gleichgewicht (radial) | $r \dfrac{d\sigma_r}{dr} + \sigma_r - \sigma_t = 0$ |
| Kinematik | $\varepsilon_r = \dfrac{du}{dr}$, $\varepsilon_t = \dfrac{u}{r}$ → Kompatibilität: $r\dfrac{d\varepsilon_t}{dr} + \varepsilon_t - \varepsilon_r = 0$ |
| Elastizitätsgesetz | Orthotrop, UD-Schicht in Polarkoordinaten |

---

# Lösung: Spannungsverteilung in der Schlaufe

Die Euler-DGL 2. Ordnung liefert die Lösung für die radiale Verschiebung:

<div class="eq">

$$u = C_1 \, r^{E_v} + C_2 \, r^{-E_v} \qquad \text{mit} \quad E_v = \sqrt{\frac{E_\perp}{E_\parallel}}$$

</div>

<div class="zwei-spalten">
<div>

**Tangentialspannung** $\sigma_t$ (Zugspannung):
- Maximal am **Innenradius** $r_i$
- Klingt zum Schaft hin ab
- Bleibt über weiten Umfangsbereich (Scheitel → Flanke) nahezu konstant

**Radialspannung** $\sigma_r$ (Druckspannung):
- Ebenfalls maximal am Innenradius: $\sigma_{r,\max} = -p_i$
- Verschwindet im Schlaufenschaft

</div>
<div>

**Mittlere Zugspannung im Schaft** (Bezugsgröße):

<div class="eq">

$$\bar{\sigma}_t = \frac{F/2}{b\,(r_a - r_i)}$$

</div>

<div class="aufgabe">

**Wichtigste Aussage:**

Am Schlaufen-Innenradius liegen **deutliche Spannungsüberhöhungen** vor. Die Faserfestigkeit kann nicht gleichmäßig über der Schlaufendicke ausgenutzt werden.

</div>

</div>
</div>

---

# Einflüsse auf die Spannungsüberhöhung

<div class="zwei-spalten">
<div>

**Einflussgröße 1: Radienverhältnis $r_a/r_i$**

- Größeres $r_a/r_i$ → stärkere Spannungsüberhöhung
- Beispiel GFK, $r_a/r_i = 2$: Überhöhungsfaktor **≈ 2** → Gütegrad nur **50 %**
- → Schlaufen möglichst **flach/riemenartig** gestalten!

**Einflussgröße 2: Orthotropiegrad $E_\parallel/E_\perp$**

- Großes $E_\parallel/E_\perp$ → große Spannungsüberhöhungen
- CFK-HM ist bei dieser Anwendung **ungünstig**
- GFK (kleines $E_\parallel/E_\perp$) ist günstigerer Schlaufenwerkstoff

</div>
<div>

| Werkstoff | $E_\parallel/E_\perp$ | Charakter |
|-----------|----------------------|-----------|
| Isotropes Material | 1 | Optimal |
| GFK | ≈ 3–5 | Günstig |
| CFK-HT | ≈ 10–15 | Mittel |
| CFK-HM | ≈ 20–25 | Ungünstig |

<div class="hinweis">

Trotz ungünstigem Modellverhalten sollte CFK wegen der überlegenen **Ermüdungsfestigkeit** und günstigerer Verhältnisse am Ablaufpunkt immer mit betrachtet werden.

</div>

</div>
</div>

---

# FE-Korrekturen des analytischen Modells

Das Modell „Dickwandiges Rohr unter Innendruck" weist zwei wichtige Unzulänglichkeiten auf:

<div class="zwei-spalten">
<div>

**Unzulänglichkeit 1: Innenradius-Spannungen überschätzt**

Die Schlaufe weitet sich **nicht als Rohr** auf, sondern folgt der Kontur des starren Bolzens. Ein zusätzliches Moment biegt die Schlaufe auf den Bolzen zurück → Spannungen am Innenradius sinken.

**Unzulänglichkeit 2: Kritischer Bereich an der Bolzenflanke fehlt**

</div>
<div>

<div class="aufgabe">

**Dimensionierende Spannung** tritt **nicht** am Scheitel, sondern am **Übergang Radius → gerader Schaft** auf (Bolzenflanke)!

</div>

**Mechanismus:** Unter Last dehnt sich die Schlaufe elastisch. Ein Teil des gebogenen Bereichs wandert vom Bolzen ab in den Schaft → Zugbiegung entsteht → lokale Biegebeanspruchung mit deutlicher Spannungsüberhöhung.

**Empfehlung:** Kritischen Bereich an der Bolzenflanke per **FE nachweisen**.

</div>
</div>

**Folgerungen aus der FE-Analyse:**
- Hohe **Dehnsteifigkeit** → weniger gebogenes Material verlässt den Bolzen → CFK-Vorteil
- Geringe **Biegesteifigkeit** am Ablaufpunkt → kleines Zusatzbiegemoment → geringe Schlaufendicke bevorzugen

---

# Festigkeitsanalyse und seitliche Stützung

<div class="zwei-spalten">
<div>

**Zwei primäre Versagensformen:**

**1. Faserbruch** (FB) durch Tangentialspannungen

**2. Zwischenfaserbruch** (ZfB) durch Radialdruckspannungen $\sigma_r^-$

Die äußeren Schichten pressen die inneren auf den Bolzen → hohe $\sigma_\perp^-$-Beanspruchung → Scherbruch (Überschreiten von $R_{A\perp\perp}$)

<div class="aufgabe">

ZfB ist **unbedingt zu vermeiden** – nur bei Faserbruch wird der Leichtbauvorteil genutzt!

</div>

</div>
<div>

**Einfluss der seitlichen Stützung** (Rechenergebnisse, $r_a/r_i = 1{,}55$):

| Werkstoff | Ungestützt [N/mm²] | Gestützt [N/mm²] |
|-----------|-------------------|------------------|
| UD-GFK (E-Glas) | 336 | 1320 |
| UD-Aramid | 254 | 1005 |
| UD-CFK-HT | 347 | 876 |
| UD-CFK-HM | 244 | 393 |

<div class="loesung">

Seitliche Stützung steigert die Tragfähigkeit um den **Faktor 3–4**. Immer vorsehen!

</div>

</div>
</div>

---

# Konstruktive Verbesserungsmaßnahmen – Schlaufe

<div class="zwei-spalten">
<div>

**Maßnahme 1: Schlaufenkaskade**
- Dicke Schlaufe → mehrere dünne, riemenartige Einzelschlaufen
- Jede Einzelschlaufe hat günstiges $r_a/r_i$
- Möglichkeit für gezieltes **Fail-Safe-Verhalten** (Versagensreihenfolge)
- Trennfolie (PTFE) zwischen Strängen ermöglicht Relativverschiebung

**Maßnahme 2: Mehrschichtige Schlaufe** *(Meier & Winistörfer)*
- Nicht miteinander verbundene riemenförmige Streifen
- Gütegrade **> 80 %** (vs. kompakte Schlaufe)
- Versagenslasten +29 % gegenüber kompakt
- Bolzendurchmesser > 25 mm → Festigkeit nahezu unabhängig vom Durchmesser

</div>
<div>

**Maßnahme 3: Hybridschlaufe**
- GFK innen (dehnweich), CFK außen (steif)
- Mittleres $E_\parallel/E_\perp$ gesenkt + günstigeres Radienverhältnis je Streifen
- Nur bei **großen Radienverhältnissen** sinnvoll

**Maßnahme 4: Rissstopperschichten**
- Zwischenlagen (0°/90° oder ±45°, z.B. Aramidgewebe)
- Verhindern Abscheren durch $\tau_{\perp\perp}$
- Zeitfestigkeit bis zum **Faktor 1000** steigerbar

**Gestaltungsregel Bolzen:**

<div class="hinweis">

Bolzen eng in der Schlaufe → kein Ovalieren → keine Schubrisse. Alternativ: Vorspannung.

</div>

</div>
</div>

---

<!-- _class: lead -->

# Teil 3: Bolzenverbindungen

---

# Grundlagen und Einsatzbereich

<div class="zwei-spalten">
<div>

**Wann Bolzenverbindungen?**
- Flächige, **dickwandige**, hoch belastete Strukturen
- Verbindung **ungleichartiger Werkstoffe** (FKV–Metall)
- Wenn **lösbare** Verbindung erforderlich
- Als Alternative zu Schlaufenanschlüssen bei großen verfügbaren Flächen

**Vorteile:**
- Einfache Qualitätssicherung (visuelle Kontrolle)
- Geringer Ermüdungsfestigkeitsabfall (vs. Metall)
- Kein schlagartiges Versagen möglich
- Energieabsorption (Bolzen durch Laminat ziehen)
- Keine Reibkorrosion (vs. Al-Bolzenfügungen)
- Misch-fügung mit Klebung: Lebensdauer ×3

</div>
<div>

**Nachteile:**
- Fasern werden durchtrennt → Kerbwirkung + Querschnittsreduktion
- Gütegrad des ungestörten Laminats **nicht erreichbar**
- Zusatzgewicht durch Überlappungen / Doppler
- Metallische Bolzen + CFK → **elektrochemische Korrosion** beachten

**Optimaler Laminataufbau für Bolzenfügungen:**

<div class="loesung">

$(0°/{\pm}45°/90°)$ mit **50 % / 40 % / 10 %** – der klassische *Flugzeugbaulaminat*-Aufbau. 0°-Fasern für Lochleibung, ±45° gegen Scherbruch und Spalten.

</div>

</div>
</div>

---

# Versagensformen einer Bolzenverbindung

<div class="zwei-spalten">
<div>

**Versagensform 1: Lochleibungsversagen** *(angestrebt!)*
- Bohrung weitet sich auf, kein Trennbruch
- Gutmütiges Verhalten, hohe Energieaufnahme
- Dimensionierungsziel: **alle anderen Versagen vermeiden**

$$F_{ult} = \hat{R}_L \cdot d \cdot t$$

**Versagensform 2: Flankenzugbruch**

$$F_{ult} = \hat{R}_x^+ \cdot (w - d) \cdot t$$

Abhilfe: $w \geq 5d$, höherer 0°-Anteil

</div>
<div>

**Versagensform 3: Scherbruch**

$$F_{ult} = \hat{R}_{xy} \cdot 2e \cdot t$$

Abhilfe: $e \geq 3d$, ±45°-Schichten

**Versagensform 4: Spaltbruch**

$$F_{ult} = \hat{R}_y^+ \cdot (e - d/2) \cdot t \cdot 2$$

Abhilfe: 90°- oder ±45°-Fasern, $e \geq 3d$

**Versagensform 5: Komb. Scher-/Flankenzugbruch**

$$F_{ult} = \frac{1}{2}\hat{R}_x^+(w-d)t + \hat{R}_{xy}(e-d/2)t$$

</div>
</div>

<div class="hinweis">

Mindestabstände einhalten → Lochleibungsversagen tritt automatisch auf: $e \geq 3d$, $w \geq 5d$, $p \geq 4d$

</div>

---

# Mindestabstände und Lochleibungsfestigkeit

<div class="zwei-spalten">
<div>

**Empfohlene Mindestabstände** (Flugzeugbaulaminat, $(0/{\pm}45/90)_{50/40/10}$):

| Abstand | Mindestmaß |
|---------|------------|
| Randabstand $e$ | $\geq 3d$ |
| Seitlicher Abstand $w$ | $\geq 5d$ |
| Bolzenabstand (Reihe) $p$ | $\geq 4d$ |
| Kantenabstand seitlich | $\geq 2{,}5d$ |

**Lochleibungsfestigkeit** – Definition:
- 2 %-Lochaufweitung (Offset-Festigkeit $\hat{R}_{L2}$)
- Maximalkraft $\hat{R}_{Lm}$

</div>
<div>

**Einflüsse auf $\hat{R}_L$:**
- ↑ 0°-Faseranteil (optimal: 50 %)
- ↑ Bolzendurchmesser $d$ (kein eigenständiger Einfluss auf spez. Festigkeit)
- ↑ Temperatur → $\hat{R}_L$ sinkt (bei 123°C ca. 65 % von 23°C-Wert)
- Übergangspassung H7/j6 → bis 20 % höhere $\hat{R}_L$ vs. Spielpassung

**Steigerung durch Anpressdruck:**

<div class="eq">

$$F_{ult} = \hat{R}_L \cdot d \cdot t + \mu_0 \cdot F_V$$

mit $\mu_0 \approx 0{,}1{-}0{,}2$ (Stahl/FKV)

</div>

</div>
</div>

---

# Optimierungsmaßnahmen bei Bolzenverbindungen

<div class="zwei-spalten">
<div>

**Konstruktive Maßnahmen:**
- Seitliche Stützung durch **große Unterlegscheiben** (Nebenschlusswirkung)
- Niete in **Kleber setzen** → Lochleibungsdruck vergleichmäßigt
- **Moulded-in holes** (Fasern vor Aushärten verdrängen statt schneiden) → Schwingfestigkeit ↑
- **Stern-Einleger**: $\hat{R}_{LV}$ + 61 % (wirksamster Einleger)
- Hülsen vor dem Niet → Presssitz ohne Delamination

**Einlaminieren von Metallfolien** (Kolesnikov):
- 90°- und ±45°-Schichten durch Ti- oder St-Folie ersetzen
- Ti: $\hat{R}_L$ bis +90 %, St: bis +160 %
- Leichtbau-optimal: 20 % Stahlanteil (volumenbezogen)

</div>
<div>

**Zur Nietselektion:**
- CFK + **Aluminium-Niete** → ungeeignet (Potentialdifferenz 0,90 V!)
- Geeignete Werkstoffe: **TiAl6V4** (0,33 V), rostfreier Stahl (0,27 V)
- Unlegierter Stahl (0,57 V) → nicht geeignet

**Passungstoleranz:**
- Übergangspassungen bei Al-Fügungen günstig
- Bei FKV: **Pressübermaß vermeiden** → Delamination durch Schälspannung beim Einpressen

**Bohrungshinweise:**
- Bohren senkrecht (max. 1° Abweichung)
- Übermaß $\leq 0{,}1$ mm
- Unterlage auf Durchtrittsseite → Delamination verhindern

</div>
</div>

---

# Mehrreihige Bolzenverbindungen – Nietreihenanalyse

Bei mehrreihigen Fügungen ist die **Lastverteilung statisch unbestimmt**.

<div class="zwei-spalten">
<div>

**Zwei Lastfälle:**

**Bruchlast (quasi-statisch):** Alle Niete tragen gleichmäßig (plastische Umlagerung) → einfache Addition der Versagenslasten.

**Betriebslast (elastisch):** Nietkräfte ungleich verteilt. End-Niete höher belastet.

**Analytisches Verfahren (Franz):**

<div class="eq">

$$[C] \cdot \{P\} = \{B\}$$

$$\{P\} = [C]^{-1} \cdot \{B\}$$

</div>

</div>
<div>

**Einflussparameter auf Nietkraftverteilung:**

- Nietnachgiebigkeit $C_j = u_j / P_j$
- Fügeteil-Nachgiebigkeit $K_{aj}$, $K_{bj}$
- Temperaturdehnungen $\alpha_a$, $\alpha_b$

**Extremfälle:**
- Unendlich starre Niete → nur Endniete tragen
- Sehr nachgiebige Niete → gleichmäßige Verteilung $P_j = F/n$

<div class="loesung">

**Praktische Regel:** Bei zweireihiger Fügung tragen **beide Niete je 50 %** der Last. Für viele Fälle ausreichend!

</div>

</div>
</div>

---

<!-- _class: lead -->

# Teil 4: Klebverbindungen

---

# Grundlagen und Einsatzbereich

<div class="zwei-spalten">
<div>

**Vorteile:**
- Verschiedene Werkstoffe fügbar (GFK+Al, CFK+Ti …)
- Keine thermischen Eigenspannungen (kein Schweißen)
- Kein Querschnittsverlust, keine Kerbwirkung → höhere Anrissfestigkeit
- Gleichzeitig Dichtfunktion nutzbar
- Höhere Strukturdämpfung
- Kombination Kleben + Bolzen: Lebensdauer ×3, Karosseriesteifigkeit ↑

**Einsatzbereich:**
- Bevorzugt **dünnwandige**, flächige Strukturen
- Große Klebflächen notwendig (Festigkeit oft < Fügeteil)

</div>
<div>

**Nachteile:**
- Ausgeprägte **Spannungsspitzen** an Überlappungsenden
- Geringe Querzugfestigkeit → **Schälspannungen vermeiden**
- Temperatur + Feuchte reduzieren Festigkeit
- Streuung der Klebfestigkeit
- Aufwändige Fügeteilvorbehandlung
- Qualitätssicherung nur per ZfP möglich

**Klebstoffklassen:**

| Typ | $G_K$ [N/mm²] | Bruchdehnung |
|-----|--------------|--------------|
| Strukturkleber | > 10 | bis 70 % |
| Elastischer Kleber | 1–10 | 70–300 % |
| Dichtstoff | 0,1–1 | 300–700 % |

</div>
</div>

---

# Spannungsanalyse – Schäftung

Die **Schäftung** (scarfed joint) ist konstruktiv besonders günstig.

<div class="zwei-spalten">
<div>

**Spannungstransformation** am schrägen Schnitt (Winkel $\alpha$):

<div class="eq">

$$\sigma_\alpha = \sigma_x \cos^2\alpha$$

$$\tau_\alpha = \frac{1}{2}\,\sigma_x \sin 2\alpha$$

</div>

**Fünf Vorteile der Schäftung:**
1. Vergrößerte Klebfläche → Spannungsreduktion
2. Bei flacher Schäftung: Fast nur Schub, kaum Querzug
3. Gleichförmige Spannungsverteilung (keine Spitzen bei gleichen Fügeteilen)
4. Kein Biegemoment → keine Schälspannungen
5. Leichtbaugerecht (keine Materialdopplung)
6. Glatte Oberfläche (aerodynamisch nutzbar)

</div>
<div>

**Sinnvoller Schäftungswinkel:** $\alpha \approx 3°{-}10°$

<div class="loesung">

Bei ausreichend flachem $\alpha$ ist Versagen in den Fügeteilen **außerhalb** der Schäftung erreichbar – die Klebung ist nicht mehr dimensionierend!

</div>

**Nachteil:** Hoher Fertigungsaufwand für konstante Klebschichtdicke. Zinkung als Alternative bei großen Dicken.

</div>
</div>

---

# Spannungsanalyse – Überlappungsklebung (Volkersen)

**Modell:** Längsgurt-Scheibe (Fügeteile = Gurte, Kleber = Scheibe)

<div class="zwei-spalten">
<div>

**Annahmen:**
- Fügeteile: nur Längskräfte $N$
- Kleber: nur Schubfluss $n_{xy}$, dehnschlaff
- Haftung: ideal (kein Schlupf)
- Lineares Elastizitätsgesetz

**DGL für Schubspannungsverteilung:**

<div class="eq">

$$\frac{1}{E_1 t_1} + \frac{1}{E_2 t_2} \biggr) \tau_K - \frac{t_K}{G_K}\,\tau_K'' = 0$$

</div>

→ Homogene DGL 2. Ordnung, Lösung über Hyperbelfunktionen.

</div>
<div>

**Spannungsspitze** am Überlappungsende:

<div class="eq">

$$\frac{\tau_{K,\max}}{\bar{\tau}_K} = \frac{\rho}{2}\left[\coth\frac{\rho}{2} + \frac{1-\psi}{1+\psi}\tanh\frac{\rho}{2}\right]$$

$$\rho^2 = \left(1+\psi\right)\frac{G_K\,l_\ddot{u}^2}{E_1 t_1\,t_K} \qquad \psi = \frac{E_1 t_1}{E_2 t_2}$$

</div>

Für $\rho \geq 5$ vereinfacht (Spitze **unabhängig** von $l_\ddot{u}$!):

<div class="eq">

$$\tau_{K,\max} = \bar{\tau}_K \cdot \sqrt{\frac{l_\ddot{u}\,G_K}{E_1 t_1\,t_K\,(1+\psi)}}$$

</div>

</div>
</div>

---

# Parameterdiskussion – Überlappungsklebung

Für gleiche Fügeteile ($\psi = 1$) vereinfacht sich die Spannungsspitze zu:

<div class="eq">

$$\tau_{K,\max} = \frac{F_{10}}{b} \cdot \frac{1}{2} \sqrt{\frac{G_K}{E\,t\,t_K}}$$

</div>

<div class="zwei-spalten">
<div>

**Reduktion der Spannungsspitze durch:**

| Maßnahme | Effekt | Anmerkung |
|----------|--------|-----------|
| Breite $b$ ↑ | $\tau_{K,\max}$ ↓ | **Wirksamste Maßnahme!** |
| Dehnsteifigkeit $Et$ ↑ | $\tau_{K,\max}$ ↓ | Steife Fügeteile günstiger |
| Schubmodul $G_K$ ↓ | $\tau_{K,\max}$ ↓ | Aber: weichere Fügung |
| Kleberdicke $t_K$ ↑ | $\tau_{K,\max}$ ↓ | Optimum 0,1–0,2 mm! |
| Überlappung $l_\ddot{u}$ ↑ | Wirkung begrenzt | Nur bis $\tilde{l}_\ddot{u}$ wirksam |

</div>
<div>

**Kritische Erkenntnis:**

<div class="aufgabe">

Ab der Grenz-Überlappungslänge $\tilde{l}_\ddot{u}$ sind die Spannungsspitzen von der Überlappungslänge **unabhängig**! Eine weitere Verlängerung hilft nicht.

$$\tilde{l}_\ddot{u} = 5\sqrt{\frac{E_1 t_1 t_K}{G_K(1+\psi)}}$$

</div>

**Konsequenz für Auslegung:**
- Nicht $l_\ddot{u}$ verlängern, sondern **Breite $b$ vergrößern**
- Plastizität: Spannungsumlagerung → $l_\ddot{u} \geq 2\,\tilde{l}_\ddot{u}$ empfohlen

</div>
</div>

---

# Kleberplastizität und Langzeitverhalten

<div class="zwei-spalten">
<div>

**Kleberplastizität:**

Kleber mit ideal elastisch-plastischem Verhalten und **hoher Bruchschiebung** können Spannungsspitzen abbauen → Umlagerung in den Mittenbereich.

- Flexible Klebstoffe erreichen im Zug-Scherversuch oft **höhere Festigkeiten** als hartelastische Kleber
- Bedingung: ausreichend lange Überlappung für Umlagerung

**Langzeitverhalten:**
- Temperatur + Feuchte → Festigkeitsreduktion
- Kriechen/Relaxation: Spannungen vergleichmäßigen sich über Zeit
- Nach sehr langen Zeiten: konstante Schubspannung über $l_\ddot{u}$

</div>
<div>

**Schwingfestigkeit:**

- Ausreichend große Überlappungslänge ermöglicht Spannungsumlagerung
- Häufig versagen bei Ermüdungsversuchen die **Fügeteile**, nicht die Klebung

**Optimale Klebschichtdicke:**

<div class="loesung">

Eindeutiges Optimum liegt bei $t_K = 0{,}05{-}0{,}15$ mm (gut merkbar: **0,1 mm**). Sowohl Statik als auch Zeitstand bestätigen diesen Wert.

</div>

**Oberflächenvorbehandlung:**
- Entfetten (Aceton, Dampfentfettung)
- Schleifen / Sandstrahlen / Abreißgewebe
- Chemische Behandlung (Beizen) bei Al für Luftfahrtqualität
- Primer gegen Unterwanderung bei Feuchte

</div>
</div>

---

# Konstruktive Verbesserungen von Klebverbindungen

<div class="zwei-spalten">
<div>

**Maßnahme 1: Querdruck überlagern**
- Querdruckspannungen $\sigma^-$ steigern ertragbare Schubspannung erheblich
- Realisierbar durch Presssitze, Klemmverbindungen

**Maßnahme 2: Gradientenklebung**
- Weicher Kleber ($G_K$ klein) an den Enden → Spitzen reduziert
- Harter Kleber ($G_K$ groß) in der Mitte → Mittenbereich wird stärker belastet
- Spannungsverteilung vergleichmäßigt sich

**Maßnahme 3: Keilförmige Klebfuge**
- Größere Kleberdicke $t_K$ an den Enden → lokale Schubnachgiebigkeit ↑
- Anfasung der Fügeteilenden reicht bereits aus

</div>
<div>

**Maßnahme 4: Kleber-Kehle**
- Herausgequetschter Kleber bildet Kehlnaht → Spannungsspitze reduziert
- Ermüdungsfestigkeit: Bruchlastzahl ×7 gegenüber ohne Kehle
- Kanten der Fügeteile **stark verrunden** – scharfe Kanten in Kleber = Kerbwirkung!

**Maßnahme 5: Angstniete gegen Schälung**
- Niete am Überlappungsende nehmen Schälkräfte auf (auf Kopfzug dimensioniert)
- Alternativ: Falz, lokale Aufdickung

<div class="hinweis">

Schälspannungen sind die **größte Gefahr** für Klebungen – konstruktiv immer ausschließen, nicht nur rechnerisch nachweisen!

</div>

</div>
</div>

---

# Zusammenfassung – Auswahl des Fügeprinzips

| Kriterium | Schlaufe | Bolzen | Klebung |
|-----------|----------|--------|---------|
| **Lastgröße** | Sehr hoch, punktuell | Hoch, flächig | Mittel, flächig |
| **Fügeteildicke** | – | Dick | Dünn |
| **Lösbarkeit** | Nein | Ja | Nein |
| **Qualitätssicherung** | Schwierig | Einfach | ZfP notwendig |
| **Temperaturempfindlichkeit** | Gering | Gering | Hoch |
| **Bevorzugter Werkstoff** | GFK (UD) | FBL-Laminat | FKV + Metall |
| **Gütegrad** | 50–80 % | 40–70 % | Hoch bei opt. Design |

<div class="loesung">

**Kombinationen nutzen:** Kleben + Bolzen verlängert Lebensdauer ×3. Schlaufe + Laminat durch Verspreizen in der Fläche. Hybridschlaufe GFK/CFK bei großen Radienverhältnissen.

</div>

---

# Gestaltungsregeln – Zusammenfassung

<div class="zwei-spalten">
<div>

**Schlaufenanschluss:**
- Parallelschlaufe bevorzugen
- $r_a/r_i$ klein halten → Breite $b$ vergrößern
- Orthotropiegrad $E_\parallel/E_\perp$ klein (GFK günstiger)
- Seitliche Stützung immer vorsehen
- Dünne Streifen oder Kaskade für große Querschnitte
- PTFE-Folie zwischen Strängen
- Bolzen eng / vorgespannt

**Bolzenverbindungen:**
- $d \approx t$ (Fügeteildicke)
- $e \geq 3d$, $w \geq 5d$, $p \geq 4d$
- Laminataufbau $(0/{\pm}45/90)_{50/40/10}$
- Lochleibungsversagen anstreben
- Senkköpfe wenn möglich vermeiden
- ≥ 2 Bolzen setzen (Momentenaufnahme)

</div>
<div>

**Klebverbindungen:**
- Schälspannungen konstruktiv ausschließen
- Breite $b$ ist Hauptdimensionierungsgröße
- Überlappungslänge $\geq 2\,\tilde{l}_\ddot{u}$
- Klebschichtdicke $t_K \approx 0{,}1$ mm
- Zweischnittige Fügung bevorzugen
- Oberflächenvorbehandlung nicht vernachlässigen
- Kehle stehen lassen, Kanten verrunden
- Gradientenklebung bei hohen Anforderungen

<div class="hinweis">

Für sicherheitsrelevante Anwendungen gilt in allen drei Fügekategorien: Analytische Rechnung liefert Vorauslegung – der **experimentelle Nachweis** am Prototypen ist immer erforderlich.

</div>

</div>
</div>

---

# Literatur

<div style="font-size: 18px;">

**Grundlagenwerke:**

Heslehurst, R. B.: *Defects and Damage in Composite Materials and Structures*. CRC Press, 2014.

Wiedemann, J.: *Leichtbau. Bd. 2: Konstruktion*. Springer-Verlag, Berlin, 1989.

**Schlaufenanschluss:**

Conen, H.: Deformation und Versagen von GFK-Strangschlaufen. *Kunststoffe* 56 (1966).

Winistörfer, A.: Development of non-laminated advanced composite straps. Diss. Warwick, 1999.

Wörndle & Daschner: Rechnerische Untersuchung von FVW-Strangschlaufen. *Z. Flugwiss.* 4 (1980).

**Bolzenverbindungen:**

Kraft & Schelling: Statische Tragfähigkeit von Nietverbindungen aus CFK/GFK. DLR IB 435-81/1, 1981.

Fink, A.: Metalllaminate für verstärkte Verbindungen. *SAMPE Symposium*, Braunschweig, 2006.

**Klebverbindungen:**

Volkersen, O.: Die Nietkraftverteilung in zugbeanspruchten Nietverbindungen. *Luftfahrtforschung* (1938).

Habenicht, G.: *Kleben*. Springer-Verlag, Berlin, 1990.

</div>