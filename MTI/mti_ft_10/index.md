---
marp: true

theme: h2
header: ''
footer: ''

title: MTI - Ermüdung und Verschleiß
author: Christian Willberg
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
.container{
  display: flex;
  gap: 1.5em;
  }
.col{
  flex: 1;
  }
.merke {
  border-left: 4px solid #d4a017;
  background-color: #fdf6e3;
  padding: 10px 15px;
  margin: 10px 0;
  border-radius: 4px;
}
.hinweis {
  border-left: 4px solid #2e86c1;
  background-color: #eaf2f8;
  padding: 10px 15px;
  margin: 10px 0;
  border-radius: 4px;
}
.aufgabe {
  border: 2px solid #e67e22;
  background-color: #fdf2e9;
  padding: 10px 15px;
  margin: 10px 0;
  border-radius: 8px;
}
.loesung {
  border-left: 4px solid #27ae60;
  background-color: #eafaf1;
  padding: 10px 15px;
  margin: 10px 0;
  border-radius: 4px;
}
.eq {
  border: 2px solid #c39bd3;
  background-color: #f4ecf7;
  padding: 10px 15px;
  margin: 10px 0;
  border-radius: 8px;
  text-align: center;
}
.box-a {
  background-color: #eafaf1;
  border: 2px solid #27ae60;
  border-radius: 8px;
  padding: 10px 15px;
}
.box-b {
  background-color: #fdf2e9;
  border: 2px solid #e67e22;
  border-radius: 8px;
  padding: 10px 15px;
}
table th {
  background-color: var(--accent-color);
  color: white;
}
table tr:nth-child(even) {
  background-color: var(--light-accent-color);
}
</style>


## Vorlesung MTI - Ermüdung und Verschleiß
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](https://upload.wikimedia.org/wikipedia/commons/b/bd/Smith2.svg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen

<div style="position: absolute; bottom: 10px; left: 520px; font-size: 16px;">
  <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Bildreferenz</a>
</div>

---

<!--paginate: true-->

# Inhalte
- Ermüdung: Ablauf, Bruchfläche, Beanspruchungsgrößen
- Wöhlerlinie und Lebensdauer
- Mittelspannung und Kerben
- Lastkollektive und Miner-Regel
- Verschleiß: Mechanismen und Verschleißarten
- Verschleißrechnung nach Archard
- Rechenübungen

<div style="position: absolute; top: 200px; left: 850px;">
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/MTI/mti_ft_10/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

<!--
Zeitplan (130 min):
  5 min  Einstieg, Schadensfälle
 20 min  Ermüdung: Ablauf, Bruchfläche, Beanspruchung, Übung 1
 20 min  Wöhlerlinie, Übung 2, Mittelspannung, Übung 3
 10 min  Kerben, Übung 4, Gegenmaßnahmen
 25 min  Lastkollektiv, Miner, Übung 5 (Hauptübung)
 35 min  Verschleiß inkl. Übung 6
  5 min  Zusammenfassung
 10 min  Puffer / Pause
-->

---

# Ermüdung

<details>
<summary>Was ist Ermüdung?</summary>

<img src="https://upload.wikimedia.org/wikipedia/commons/7/7e/Sleeping_students.jpg" alt="Alternative text" width="500">

</details>

---

## Ermüdung - Definition

<div class="merke">

**Ermüdung** ist die Schädigung eines Werkstoffs unter **zyklischer (wiederholter) Belastung**, die zum Bruch führt - obwohl die Spannung **deutlich unter der Zugfestigkeit**, oft sogar unter der Streckgrenze liegt.

</div>

- Tritt typischerweise bei zyklischer Belastung auf
  - Isotherme mechanische Ermüdung
    - [Oszillierende Last](https://www.youtube.com/watch?v=_qVXkAWtH60)
    - Flugzeugrümpfe (Druckaufbau und -abfall)
  - Thermische Ermüdung: Öfen, Heizelemente
  - Thermomechanische Ermüdung: Hochdruckbehälter, Turbinen
  - Elektrothermische Ermüdung: Stromleiter (Glühfäden)

---

![bg 60%](https://leichtbau.dlr.de/wp-content/uploads/2021/11/Abbildung-2_Innovationsbericht_Wasserstofftank_CG06.png)

---

## Warum ist Ermüdung so gefährlich?

<style scoped>section{font-size:23px;}</style>

<!-- _class: cols-2 -->

<div class="ldiv">

- ein Großteil (oft genannt: **rund 80 %**) aller Schadensfälle an Maschinenbauteilen sind Ermüdungsbrüche
- Bruch kommt **ohne Vorwarnung** - keine sichtbare plastische Verformung
- Lebensdauer **streut** stark

**Bekannte Schadensfälle**
- **de Havilland Comet (1954):** Risse an Fensterecken des Druckrumpfs
- **Aloha Airlines 243 (1988):** Rumpfdach abgerissen (→ Seminar MTI 17)
- **ICE Eschede (1998):** Ermüdungsbruch eines gummigefederten Radreifens, 101 Tote

</div>

<div class="rdiv">

![](https://upload.wikimedia.org/wikipedia/commons/9/96/Pedalarm_Bruch.jpg)

<div style="font-size:14px; color:#666;">Ermüdungsbruch eines Pedalarms. Wikimedia Commons</div>

</div>

---

## Ermüdung - was passiert im Werkstoff?

- Die Belastung liegt unterhalb der Streckgrenze $R_{p0,2}$
  - _Erinnerung: Was bedeutet $R_{p0,2}$?_
- Spannungs-Konzentrationen entstehen an Materialfehlern (Poren, Einschlüsse, Mikrorisse) oder an Kerben
- Unter wechselnder Last bilden sich dort lokal **kleine plastische Zonen** - Versetzungen bewegen sich hin und her, aber nicht vollständig zurück
- An der Oberfläche entstehen **Gleitbänder** (Extrusionen/Intrusionen) → Mikroriss
- Der Riss wächst mit jedem Lastzyklus ein kleines Stück

[Erklärvideo](https://www.youtube.com/watch?v=o-6V_JoRX1g)

---

## Die drei Stadien des Ermüdungsbruchs

<!-- _class: cols-2 -->

<div class="ldiv">

**1. Rissinitiierung**
- meist an der **Oberfläche** oder an Kerben
- kann den größten Teil der Lebensdauer ausmachen

**2. Stabiles Risswachstum**
- Riss wächst pro Zyklus um nm ... µm
- **Rastlinien** (Muschellinien) markieren Laststillstände

**3. Restbruch (Gewaltbruch)**
- Restquerschnitt kann die Last nicht mehr tragen
- schlagartiges Versagen

</div>

<div class="rdiv">

![](../../assets/Figures/Ermuedungsriss_10.1007978-3-658-36151-8.png)

<div style="font-size:14px; color:#666;">Bild: <a href="https://doi.org/10.1007/978-3-658-36151-8">doi:10.1007/978-3-658-36151-8</a></div>

</div>

---

## Die Bruchfläche lesen

<div class="container">
<div class="col">

<div class="box-a">

**Dauerbruchfläche**
- glatt, oft matt
- Rastlinien, die vom Rissursprung weg laufen
- zeigt, **wo** der Riss gestartet ist

</div>
</div>
<div class="col">

<div class="box-b">

**Restbruchfläche**
- zerklüftet, rau
- bei duktilen Werkstoffen mit Scherlippen

</div>
</div>
</div>

<div class="merke">

**Faustregel:** **Großer** Restbruchanteil → hohe Nennspannung. **Kleiner** Restbruchanteil → geringe Nennspannung, der Riss konnte lange wachsen.

</div>

---

## Beanspruchungsgrößen

<!-- _class: cols-2 -->

<div class="ldiv">

| Größe | Formel |
|---|---|
| Oberspannung | $\sigma_o$ |
| Unterspannung | $\sigma_u$ |
| Mittelspannung | $\sigma_m=\frac{\sigma_o+\sigma_u}{2}$ |
| Spannungsamplitude | $\sigma_a=\frac{\sigma_o-\sigma_u}{2}$ |
| Spannungsverhältnis | $R = \frac{\sigma_u}{\sigma_o}$ |

</div>

<div class="rdiv">

![](../../assets/Figures/sinuskurven_mit_offset.png)

</div>

---

## Belastungsfälle

| Fall | Spannungsverhältnis | Mittelspannung | Beispiel |
|---|---|---|---|
| ruhend (statisch) | $R = 1$ | $\sigma_m = \sigma_o$ | Eigengewicht |
| schwellend (Zug) | $R = 0$ | $\sigma_m = \sigma_a$ | Schraube, Druckbehälter (Druck auf/ab) |
| wechselnd | $R = -1$ | $\sigma_m = 0$ | umlaufende Welle unter Biegung |
| allgemein | $-1 < R < 1$ | $\sigma_m \neq 0$ | Fahrwerk, Feder mit Vorspannung |

<div class="hinweis">

Die **Amplitude** $\sigma_a$ treibt die Ermüdung. Die **Mittelspannung** $\sigma_m$ verschiebt, wie viel Amplitude ertragen wird.

</div>

---

## Übung 1: Beanspruchung beschreiben

<div class="aufgabe">

In einer Antriebswelle wird mit Dehnmessstreifen gemessen:
- größte Spannung $\sigma_o = 250$ MPa
- kleinste Spannung $\sigma_u = -50$ MPa

Bestimmen Sie $\sigma_m$, $\sigma_a$ und $R$. Um welchen Belastungsfall handelt es sich?

</div>

*Zeit: 3 Minuten*

---

## Lösung Übung 1

<div class="loesung">

$$\sigma_m = \frac{250 + (-50)}{2} = 100 \text{ MPa} \qquad \sigma_a = \frac{250 - (-50)}{2} = 150 \text{ MPa}$$

$$R = \frac{-50}{250} = -0{,}2$$

Allgemeiner Fall zwischen wechselnd ($R=-1$) und schwellend ($R=0$), mit **Zug-Mittelspannung**.

</div>

Die Werte $\sigma_a = 150$ MPa und $\sigma_m = 100$ MPa brauchen wir in Übung 3 wieder.

---

# Wöhlerlinie

---

## Der Wöhlerversuch

<style scoped>section{font-size:24px;}</style>

<!-- _class: cols-2 -->

<div class="ldiv">

**August Wöhler** (1819-1914) untersuchte Brüche von Eisenbahnachsen

**Ablauf**
1. viele gleiche Proben
2. jede Probe mit **konstanter** Amplitude $\sigma_a$ belasten
3. Schwingspielzahl $N$ bis zum Bruch zählen
4. Ergebnisse doppelt-logarithmisch auftragen

Ergebnisse **streuen** - die Wöhlerlinie gilt für eine Überlebenswahrscheinlichkeit (meist 50 %)

</div>

<div class="rdiv">

![](https://upload.wikimedia.org/wikipedia/commons/1/1c/Woehlerlinie.png)

</div>

---

## Bereiche der Wöhlerlinie

<style scoped>section{font-size:23px;}</style>

<!-- _class: cols-2 -->

<div class="ldiv">

| Bereich | Schwingspiele |
|---|---|
| **K**urzzeitfestigkeit (LCF) | $N < 10^4$ |
| **Z**eitfestigkeit (HCF) | $10^4 ... N_D$ |
| **D**auerfestigkeit | $N > N_D$ |

- $N_D$ = Ecklastspielzahl, bei Stahl $10^6 ... 10^7$
- $\sigma_D$ = Dauerfestigkeit
- Faustwert Stahl: $\sigma_W \approx 0{,}4 ... 0{,}5 \cdot R_m$ (wechselnd, glatte Probe)

<div class="hinweis">

**Achtung:** Al- und Cu-Legierungen haben **keine echte Dauerfestigkeit** - die Linie fällt weiter ab. Auch Korrosion hebt die Dauerfestigkeit von Stahl auf.

</div>
</div>

<div class="rdiv">

![](./assets/woehler_basquin.png)

</div>

---

## Zeitfestigkeit rechnen (Basquin)

Im Zeitfestigkeitsbereich ist die Wöhlerlinie im doppelt-logarithmischen Diagramm eine **Gerade**:

<div class="eq">

$$N = N_D \cdot \left(\frac{\sigma_a}{\sigma_D}\right)^{-k} \qquad \text{für } \sigma_a > \sigma_D$$

</div>

- $k$ = **Neigungsexponent** - je größer $k$, desto flacher die Linie
- typische Werte: Schweißverbindungen $k = 3$, gekerbte Bauteile $k \approx 5$, glatte Proben $k \approx 8 ... 15$

<div class="merke">

**Merke:** Wegen des Exponenten wirkt sich eine kleine Spannungserhöhung **stark** aus: bei $k = 6$ halbieren schon **12 % mehr** Spannung die Lebensdauer ($1{,}12^6 \approx 2$).

</div>

---

## Übung 2: Lebensdauer berechnen

<div class="aufgabe">

Für einen Vergütungsstahl ist bekannt:
- Dauerfestigkeit $\sigma_D = 240$ MPa bei $N_D = 2 \cdot 10^6$
- Neigungsexponent $k = 6$

a) Wie viele Schwingspiele erträgt ein Bauteil bei $\sigma_a = 300$ MPa?
b) ... und bei $\sigma_a = 360$ MPa?
c) Um welchen Faktor sinkt die Lebensdauer, wenn die Amplitude von 300 auf 360 MPa steigt (+20 %)?

</div>

*Zeit: 5 Minuten, Taschenrechner*

---

## Lösung Übung 2

<div class="loesung">

a) $N = 2 \cdot 10^6 \cdot \left(\frac{300}{240}\right)^{-6} = \frac{2 \cdot 10^6}{1{,}25^6} = \frac{2 \cdot 10^6}{3{,}81} \approx 5{,}2 \cdot 10^5$

b) $N = \frac{2 \cdot 10^6}{1{,}5^6} = \frac{2 \cdot 10^6}{11{,}39} \approx 1{,}76 \cdot 10^5$

c) $\frac{5{,}24 \cdot 10^5}{1{,}76 \cdot 10^5} = 1{,}2^6 \approx 3$

</div>

**20 % mehr Spannung → nur noch ein Drittel der Lebensdauer.** Deshalb sind Spannungsspitzen an Kerben so gefährlich.

---

## Einfluss der Mittelspannung

<!-- _class: cols-2 -->

<div class="ldiv">

- **Zug-Mittelspannung** öffnet Risse → ertragbare Amplitude **sinkt**
- **Druck-Mittelspannung** schließt Risse → ertragbare Amplitude steigt (Grund für Kugelstrahlen!)

**Haigh-Diagramm:** ertragbare Amplitude $\sigma_a$ über Mittelspannung $\sigma_m$

**Einfachste Abschätzung - Goodman-Gerade:**

<div class="eq">

$$\sigma_{a,zul} = \sigma_W \cdot \left(1 - \frac{\sigma_m}{R_m}\right)$$

</div>

$\sigma_W$: Wechselfestigkeit ($R = -1$)

</div>

<div class="rdiv">

![](https://www.tec-science.com/wp-content/uploads/2021/03/de-dauerschwingversuch-haigh-diagramm-erstellung.jpg)

<div style="font-size:14px; color:#666;">Bild: tec-science.com</div>

</div>

---

## Smith-Diagramm

<!-- _class: cols-2 -->

<div class="ldiv">

- gleiche Information wie das Haigh-Diagramm, andere Darstellung
- aufgetragen: $\sigma_o$ und $\sigma_u$ über $\sigma_m$
- im deutschsprachigen Maschinenbau (Normen, Tabellenbücher) verbreitet
- nach oben begrenzt durch die Streckgrenze

</div>

<div class="rdiv">

![](https://upload.wikimedia.org/wikipedia/commons/b/bd/Smith2.svg)

</div>

---

## Übung 3: Ist die Welle dauerfest?

<div class="aufgabe">

Die Welle aus Übung 1 ($\sigma_a = 150$ MPa, $\sigma_m = 100$ MPa) besteht aus einem Stahl mit
- Wechselfestigkeit $\sigma_W = 240$ MPa
- Zugfestigkeit $R_m = 600$ MPa

a) Welche Amplitude ist nach Goodman bei $\sigma_m = 100$ MPa dauerhaft ertragbar?
b) Ist die Welle dauerfest? Wie groß ist die Sicherheit?
c) Wie ändert sich das Ergebnis, wenn die Mittelspannung auf 150 MPa steigt?

</div>

---

## Lösung Übung 3

<div class="loesung">

a) $\sigma_{a,zul} = 240 \cdot \left(1 - \frac{100}{600}\right) = 240 \cdot 0{,}833 = 200$ MPa

b) $\sigma_a = 150 \text{ MPa} < 200$ MPa → **dauerfest**, Sicherheit $S = \frac{200}{150} \approx 1{,}33$

c) $\sigma_{a,zul} = 240 \cdot \left(1 - \frac{150}{600}\right) = 180$ MPa → $S = 1{,}2$

</div>

Ohne Berücksichtigung der Mittelspannung hätte man $S = 240/150 = 1{,}6$ gerechnet - **zu optimistisch**.

---

## Einflussfaktoren auf die Bauteil-Dauerfestigkeit

Die Werte aus dem Wöhlerversuch gelten für **glatte, polierte Proben**. Das Bauteil ist fast immer schwächer:

| Einfluss | Wirkung |
|---|---|
| **Kerben** (Absätze, Bohrungen, Nuten, Gewinde) | Spannungsspitze → oft der wichtigste Faktor |
| **Oberfläche** (Rauheit) | Riefen wirken wie Mikrokerben |
| **Größe** | größeres Volumen → mehr Fehlstellen |
| **Umgebung** (Korrosion) | keine Dauerfestigkeit mehr |
| **Temperatur** | Festigkeit sinkt, Kriechen |
| **Eigenspannungen** | Druck günstig, Zug ungünstig |

---

## Kerbwirkung

<!-- _class: cols-2 -->

<div class="ldiv">

An einer Kerbe ist die örtliche Spannung höher als die Nennspannung:

<div class="eq">

$$\sigma_{max} = K_t \cdot \sigma_n$$

</div>

$K_t$ = **Formzahl**, hängt nur von der Geometrie ab

| Kerbe | $K_t$ (ca.) |
|---|---|
| Wellenabsatz mit großem Radius | 1,3 ... 1,6 |
| Wellenabsatz mit kleinem Radius | 2 ... 3 |
| Querbohrung in Platte (Zug) | ~3 |
| Gewindegrund | 3 ... 5 |

</div>

<div class="rdiv">

<div class="hinweis">

Bei Schwingbelastung wirkt die Kerbe meist etwas schwächer als $K_t$ (**Stützwirkung**): Kerbwirkungszahl $\beta_k \leq K_t$. Für eine sichere Abschätzung rechnet man mit $K_t$.

</div>

<div class="aufgabe">

**Übung 4:** Eine Welle mit Absatz ($K_t = 2{,}5$) hat eine Nennspannungsamplitude von 100 MPa. Der Werkstoff hat $\sigma_D = 240$ MPa. Hält der Absatz dauerhaft?

</div>

</div>

---

## Lösung Übung 4

<div class="loesung">

$$\sigma_{max,a} = K_t \cdot \sigma_{n,a} = 2{,}5 \cdot 100 = 250 \text{ MPa} > \sigma_D = 240 \text{ MPa}$$

→ **nicht dauerfest** (konservativ gerechnet mit $K_t$)

</div>

**Was hilft?**
- größerer Übergangsradius → $K_t$ von 2,5 auf z. B. 1,8: $\sigma_{max,a} = 180$ MPa → dauerfest
- Absatz polieren oder festwalzen
- Werkstoff mit höherer Festigkeit

<div class="merke">

Die Geometrie zu ändern ist oft **billiger und wirksamer** als ein besserer Werkstoff.

</div>

---

## Gegenmaßnahmen gegen Ermüdung

<div class="container">
<div class="col">

**Konstruktion**
- Kerben vermeiden, große Radien
- Kraftfluss „glätten"
- Schweißnähte aus hochbelasteten Zonen heraus

**Werkstoff**
- hohe Reinheit (wenig Einschlüsse)
- feines Korn

</div>
<div class="col">

**Oberfläche**
- polieren, feinschleifen
- **Kugelstrahlen, Festwalzen** → Druckeigenspannungen
- Einsatz-/Randschichthärten

**Betrieb**
- regelmäßige **Inspektionen** (Risse finden, bevor sie kritisch sind)
- Korrosionsschutz

</div>
</div>

---

# Lastkollektive und Schadensakkumulation

---

## Reale Belastung ist nicht konstant

<!-- _class: cols-2 -->

<div class="ldiv">

- Wöhlerversuch: **eine** konstante Amplitude
- Realität: Fahrbahn, Wind, Wellengang, Start/Landung ... → **viele verschiedene** Amplituden

**Lastkollektiv**
- gemessene Belastung wird in **Klassen** eingeteilt
- für jede Klasse: Amplitude $\sigma_{a,i}$ und Anzahl $n_i$
- Zählverfahren: z. B. **Rainflow-Zählung**

</div>

<div class="rdiv">

| Stufe | $\sigma_{a,i}$ [MPa] | $n_i$ pro Jahr |
|---|---|---|
| 1 | 360 | 1 000 |
| 2 | 300 | 20 000 |
| 3 | 200 | 1 000 000 |

*Beispiel: wenige große, viele kleine Lasten - typisch für fast alle Bauteile*

</div>

---

## Lineare Schadensakkumulation nach Palmgren-Miner

<div class="eq">

$$D = \sum_i \frac{n_i}{N_i} \qquad \text{Versagen bei } D = 1$$

</div>

- $n_i$ = tatsächlich aufgebrachte Schwingspiele auf Stufe $i$
- $N_i$ = ertragbare Schwingspiele auf Stufe $i$ (aus der Wöhlerlinie)
- jede Stufe „verbraucht" einen Anteil $n_i / N_i$ der Lebensdauer - wie ein **Konto**, das abgebucht wird

<div class="merke">

**Beispiel:** 50 % der Schwingspiele bei Stufe A ($n_A/N_A = 0{,}5$) und 50 % bei Stufe B ($n_B/N_B = 0{,}5$) → $D = 1$ → Bruch.

</div>

**Lebensdauer:** Wenn ein Jahr die Schädigung $D_{Jahr}$ erzeugt, hält das Bauteil $L = 1 / D_{Jahr}$ Jahre.

---

## Was passiert unterhalb der Dauerfestigkeit?

<style scoped>section{font-size:24px;}</style>

<!-- _class: cols-2 -->

<div class="ldiv">

| Variante | Amplituden unter $\sigma_D$ |
|---|---|
| **Miner original** | schädigen **nicht** ($N = \infty$) |
| **Miner elementar** | Wöhlerlinie läuft mit $k$ weiter |
| **Miner modifiziert** (Haibach) | flacher weiter, mit $2k-1$ |

**Warum schädigen kleine Lasten doch?**
Große Lasten erzeugen Risse - ein vorhandener Riss wächst dann **auch** unter kleinen Lasten weiter.

</div>

<div class="rdiv">

![](./assets/woehler_miner.png)

</div>

---

## Grenzen der Miner-Regel

- **Reihenfolge** wird ignoriert: hoch → niedrig ist meist schädlicher als niedrig → hoch
- reale Bruchsummen streuen stark ($D$ = 0,1 ... 10)
- deshalb in Richtlinien oft eine **zulässige Schadenssumme** $D_{zul} < 1$, z. B. 0,3 ... 0,5

<div class="hinweis">

Trotzdem ist Miner **das** Standardwerkzeug in der Praxis (Fahrzeugbau, Windenergie, Luftfahrt, Kranbau) - einfach, nachvollziehbar und mit $D_{zul}$ ausreichend sicher.

</div>

---

## Übung 5: Wie lange hält das Bauteil?

<style scoped>section{font-size:23px;}</style>

<div class="aufgabe">

Ein Bauteil aus dem Stahl von Übung 2 ($\sigma_D = 240$ MPa, $N_D = 2 \cdot 10^6$, $k = 6$) erfährt pro Jahr das Lastkollektiv:

| Stufe | $\sigma_{a,i}$ [MPa] | $n_i$ pro Jahr |
|---|---|---|
| 1 | 360 | 1 000 |
| 2 | 300 | 20 000 |
| 3 | 200 | 1 000 000 |

a) Berechnen Sie $N_1$ und $N_2$ (Ergebnisse aus Übung 2 nutzen!).
b) Berechnen Sie die Schädigung pro Jahr nach **Miner original** und die Lebensdauer in Jahren.
c) Wiederholen Sie b) nach **Miner elementar** (Stufe 3 mit $k = 6$ weiterrechnen).
d) Welche Lebensdauer würden Sie angeben?

</div>

*Zeit: 15 Minuten, in Gruppen*

---

## Lösung Übung 5 a), b)

<div class="loesung">

a) aus Übung 2: $N_1 = 1{,}76 \cdot 10^5$ (360 MPa), $N_2 = 5{,}24 \cdot 10^5$ (300 MPa)

b) **Miner original:** Stufe 3 liegt unter $\sigma_D$ → keine Schädigung

$$D_{Jahr} = \frac{1\,000}{1{,}76 \cdot 10^5} + \frac{20\,000}{5{,}24 \cdot 10^5} + 0 = 0{,}0057 + 0{,}0381 = 0{,}0438$$

$$L = \frac{1}{0{,}0438} \approx 22{,}8 \text{ Jahre}$$

</div>

Auffällig: Die **mittlere** Stufe schädigt am meisten - nicht die höchste. Viele mittlere Lasten wiegen schwerer als wenige große.

---

## Lösung Übung 5 c), d)

<div class="loesung">

c) **Miner elementar:** $N_3 = 2 \cdot 10^6 \cdot \left(\frac{200}{240}\right)^{-6} = 2 \cdot 10^6 \cdot 2{,}99 \approx 5{,}97 \cdot 10^6$

$$D_{Jahr} = 0{,}0438 + \frac{10^6}{5{,}97 \cdot 10^6} = 0{,}0438 + 0{,}1674 = 0{,}211 \quad\Rightarrow\quad L \approx 4{,}7 \text{ Jahre}$$

</div>

| Variante | $D_{Jahr}$ | Lebensdauer |
|---|---|---|
| Miner original | 0,044 | 22,8 Jahre |
| Miner modifiziert ($k_2 = 11$) | 0,111 | 9,0 Jahre |
| Miner elementar | 0,211 | 4,7 Jahre |

d) Die Varianten unterscheiden sich um den **Faktor 5**. Original ist hier gefährlich optimistisch - die vielen kleinen Lasten tragen viel bei. Mit $D_{zul} = 0{,}5$ und Miner modifiziert: $L \approx 4{,}5$ Jahre.

---

# Verschleiß

---

## Verschleiß - Definition

- infolge Reibung eintretende bleibende Form- und Stoffveränderung an der Oberfläche von Festkörpern
- ist technologisch nicht beabsichtigt und eine Form des funktionellen Versagens
- Beeinflusst durch
  - Reibkörperpaarung
  - Beschaffenheit der Grenzschichten und des Zwischenstoffes
  - Art des Bewegungsablaufes
  - Höhe der Belastung

<div class="hinweis">

Verschleiß verursacht in Industrieländern Kosten in der Größenordnung von **einigen Prozent des Bruttoinlandsprodukts** (Ersatzteile, Stillstand, Energie).

</div>

---

## Das tribologische System

<!-- _class: cols-2 -->

<div class="ldiv">

**Struktur**
1. **Grundkörper** (z. B. Welle)
2. **Gegenkörper** (z. B. Lagerschale)
3. **Zwischenstoff** (Schmierstoff, Partikel)
4. **Umgebungsmedium** (Luft, Wasser, Staub)

**Beanspruchung**
- Normalkraft, Geschwindigkeit
- Bewegungsart (Gleiten, Rollen, Stoßen, Strömen)
- Temperatur, Dauer

</div>

<div class="rdiv">

<div class="merke">

**Merke:** Verschleiß ist eine **Systemeigenschaft**, keine Werkstoffeigenschaft. Derselbe Werkstoff kann in einem System kaum verschleißen und in einem anderen sehr schnell.

</div>

**Reibung** ($F_R = \mu \cdot F_N$) und **Verschleiß** hängen zusammen, sind aber **nicht** dasselbe: Ein System kann hohe Reibung und geringen Verschleiß haben (z. B. Bremse mit gutem Belag).

</div>

---

## Reibungszustände

| Zustand | Was passiert? | Reibungszahl $\mu$ (ca.) | Verschleiß |
|---|---|---|---|
| Festkörperreibung | direkter Kontakt, kein Schmierstoff | 0,1 ... 1 | hoch |
| Grenzreibung | nur molekulare Schmierschicht | 0,05 ... 0,15 | mittel |
| Mischreibung | Rauheitsspitzen berühren sich teilweise | 0,01 ... 0,1 | gering - mittel |
| Flüssigkeitsreibung | Schmierfilm trennt die Flächen vollständig | 0,001 ... 0,01 | ~0 |

<div class="hinweis">

Beim **Anfahren** einer Maschine läuft jedes Gleitlager durch Festkörper- und Mischreibung - deshalb verschleißen Lager vor allem bei vielen Start-Stopp-Zyklen.

</div>

---

## Verschleißmechanismen

<div class="container">
<div class="col">

<div class="box-a">

**Adhäsion**
Mikroverschweißen von Rauheitsspitzen, Abscheren

</div>

<div class="box-b">

**Abrasion**
Ritzen, Furchen, Mikrozerspanen durch harte Teilchen

</div>

</div>
<div class="col">

<div class="box-a">

**Oberflächenzerrüttung**
Ermüdung der Randschicht durch wechselnde Kontaktspannungen

</div>

<div class="box-b">

**Tribochemische Reaktion**
Reaktionsschichten (Oxide) bilden sich und werden abgetragen

</div>

</div>
</div>

---

## Adhäsiver Verschleiß

<style scoped>section{font-size:23px;}</style>

<!-- _class: cols-2 -->

<div class="ldiv">

- tritt bei mangelnder Schmierung auf
- bei hoher Flächenpressung haften Rauheitsspitzen aneinander („Mikroverschweißung")
- bei Gleiten werden Randschichtteilchen herausgerissen
- es entstehen Löcher und schuppenartige Teilchen, die oft am **härteren** Partner haften bleiben
- Extremfall: **Fressen** (Kolben im Zylinder)

**Gegenmaßnahmen:** Schmierung, ungleiche Werkstoffpaarung (nicht Stahl auf Stahl gleicher Härte), Beschichtungen

</div>

<div class="rdiv">

![](https://upload.wikimedia.org/wikipedia/commons/3/31/Rt%2BRv%2BRp.gif)

<div style="font-size:14px; color:#666;">Rauheitsprofil: nur die Spitzen tragen. Wikimedia Commons</div>

</div>

---

## Abrasiver Verschleiß

<style scoped>section{font-size:23px;}</style>

<!-- _class: cols-2 -->

<div class="ldiv">

- harte Teilchen (Sand, Abrieb, Zunder) oder Rauheitsspitzen eines härteren Partners dringen in die Randschicht ein
- es kommt zu **Ritzen, Furchen und Mikrozerspanen**
- Furchungs- oder Erosionsverschleiß

**Gegenmaßnahmen**
- Oberfläche **härter** als das abrasive Teilchen
- Filter, Dichtungen
- Werkstoffpaarung: Metall-Kunststoff, Metall-Keramik

</div>

<div class="rdiv">

**Beispiel Windenergie:**
- Sand und Regen im Wind „schmirgeln" die Vorderkante der Rotorblätter ab
- Wirkungsgrad sinkt

![](https://encyclopedia.pub/media/item_content/202209/6333de2d03ef5energies-15-05672-g008.png)

</div>

---

## Oberflächenzerrüttung und Tribooxidation

<div class="container">
<div class="col">

**Oberflächenzerrüttung**
- wechselnde oder schwellende Kontaktspannungen an der Oberfläche
- **Ermüdung** der Randschicht → Risse unter der Oberfläche → Ausbrüche
- typisch: Zahnflanken, Wälzlager (**Pittings**)
- Gegenmaßnahme: Härte, Reinheit, Oberflächengüte, Schmierfilm

</div>
<div class="col">

**Tribochemische Reaktion / Tribooxidation**
- Bildung von Zwischenschichten (Oxide) durch chemische Reaktion und ihre mechanische Zerstörung durch Bewegung
- tritt fast immer zusammen mit adhäsivem Verschleiß auf
- Beispiel: **Passungsrost** an Wellen
- Gegenmaßnahme: Relativbewegung verhindern (Passung, Vorspannung)

</div>
</div>

---

## Verschleißarten (nach Bewegung)

<style scoped>section{font-size:23px;}</style>

| Verschleißart | Erscheinung | Primäres Vorkommen |
|---|---|---|
| Gleitverschleiß | Rillen oder Riefen durch Abrieb, Materialübertragung oder lokales Schmelzen | ungeschmierte Lager, Kupplungen, Bremsen |
| Rollverschleiß | Abblättern durch Ermüdungsrisse | Rad/Schiene, Wälzlager |
| Pittings | Grübchenbildung | Wälzkörper, speziell Zahnräder |
| Abrasivverschleiß | Plastische Verformung, Erosion | Bagger, Schüttguttransport, Partikelaufprall |
| Kavitation | Oberflächenschädigung durch implodierende Dampfblasen | Wasserturbinen, Pumpen, Schiffsschrauben |
| Tribooxidation (Reibkorrosion) | loses Oxidationsprodukt | Maschinenelemente mit form- oder kraftschlüssigen Verbindungen |

---

## Wälzverschleiß

- [Wälzen](https://link.springer.com/chapter/10.1007/978-3-658-17851-2_6) ist eine Beanspruchungsart, bei der Gleitanteile (Schlupf) den reinen Rollvorgang überlagern
- kleine Kontaktfläche; hohe Flächenpressung
- Oberflächenzerrüttung (plastische Verformung, Gefügeänderungen, usw.)
- durch Schmierung deutlich reduzierbar $\rightarrow$ spezifische Schmierfilmdicke $\lambda$

![bg right fit 70%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig1_HTML.gif?as=webp)

![bg fit vertical 60%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-658-17851-2_6/MediaObjects/299062_3_De_6_Fig10_HTML.gif?as=webp)

---

## Kavitation

[Video](https://www.youtube.com/watch?v=J0H0Nw44oA4)

<details>
<summary>Physikalische Ursache?</summary>
<div>

- statischer Druck ist abhängig von der Geschwindigkeit eines Fluids
- bei Unterschreitung des Verdampfungsdrucks bilden sich Dampfblasen
- diese Blasen laufen in Bereiche mit höherem Druck und kondensieren schlagartig
- Druck- und Temperaturspitzen treten auf
</div>
</details>

---

## Kavitation - Folgen

- lokale Belastungen an der Oberfläche
- diese Bereiche ermüden und platzen ab
- Beeinträchtigt die Oberfläche
  - Wirkungsgradreduktion
  - Korrosion
  - Bereiche wo Risse initiieren können

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/b/bf/Cavitation.jpg)

---

## Reibkorrosion

- Gleitbewegungen im µm-Bereich zwischen zwei hochbelasteten Bauteilen
- meist bei zu geringem Übermaß $\rightarrow$ Passungen
- gefährlich: Reibkorrosion ist oft der **Startpunkt eines Ermüdungsrisses**

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/2/27/Corrosion_de_contact_sur_un_bout_d%27arbre_01.jpg)

---

## Verschleißverlauf über die Zeit

<!-- _class: cols-2 -->

<div class="ldiv">

1. **Einlaufphase:** Rauheitsspitzen werden abgetragen, hoher Verschleiß am Anfang
2. **Stationäre Phase:** konstante, geringe Verschleißrate - der eigentliche Betrieb
3. **Progressive Phase:** Verschleiß beschleunigt sich (Spiel, Schwingungen, Schmierfilm reißt) → Ausfall

**Konsequenz:** Bauteile tauschen, **bevor** Phase 3 beginnt → Verschleißgrenze, Wartungsintervalle

</div>

<div class="rdiv">

![](./assets/verschleiss_verlauf.png)

</div>

---

## Verschleiß berechnen: Gleichung nach Archard

<style scoped>section{font-size:24px;}</style>

Für Gleitverschleiß (stationäre Phase) gilt näherungsweise:

<div class="eq">

$$V = k \cdot F_N \cdot s$$

</div>

| Größe | Bedeutung | Einheit |
|---|---|---|
| $V$ | Verschleißvolumen | mm³ |
| $k$ | spezifischer Verschleißkoeffizient (aus Versuch, systemabhängig!) | mm³/(N·m) |
| $F_N$ | Normalkraft | N |
| $s$ | Gleitweg | m |

Verschleißhöhe: $h = V / A$ (Volumen verteilt auf die Kontaktfläche)

Typisch: geschmierte Metallpaarungen $k \approx 10^{-8} ... 10^{-6}$, ungeschmiert $k \approx 10^{-5} ... 10^{-3}$ mm³/(N·m)

---

## Übung 6: Wann muss die Lagerbuchse getauscht werden?

<div class="aufgabe">

Eine Welle ($d = 40$ mm, $n = 300$ min⁻¹) läuft in einer geschmierten Bronze-Gleitbuchse (Breite $b = 40$ mm).
- Lagerkraft $F_N = 500$ N
- Verschleißkoeffizient $k = 1 \cdot 10^{-7}$ mm³/(N·m)
- zulässige Verschleißhöhe der Buchse: $h_{zul} = 0{,}2$ mm
- vereinfachend: Verschleiß verteilt sich auf die projizierte Fläche $A = d \cdot b$

a) Wie groß ist die Gleitgeschwindigkeit $v$ und der Gleitweg pro Stunde?
b) Welches Verschleißvolumen entsteht pro Stunde?
c) Nach wie vielen Betriebsstunden muss die Buchse getauscht werden?

</div>

*Zeit: 10 Minuten*

---

## Lösung Übung 6

<div class="loesung">

a) $v = \pi \cdot d \cdot n = \pi \cdot 0{,}04 \text{ m} \cdot \frac{300}{60 \text{ s}} = 0{,}628$ m/s → $s = 0{,}628 \cdot 3600 \approx 2\,262$ m pro Stunde

b) $V = k \cdot F_N \cdot s = 10^{-7} \cdot 500 \cdot 2\,262 \approx 0{,}113$ mm³ pro Stunde

c) $A = 40 \cdot 40 = 1\,600$ mm² → $h = \frac{0{,}113}{1\,600} \approx 7{,}1 \cdot 10^{-5}$ mm pro Stunde

$$t = \frac{0{,}2}{7{,}1 \cdot 10^{-5}} \approx 2\,800 \text{ h}$$

</div>

Bei 8 h/Tag sind das gut **ein Jahr**. Steigt $k$ durch schlechte Schmierung um den Faktor 10, sind es nur noch ~280 h - **die Schmierung entscheidet**.

---

## Gegenmaßnahmen gegen Verschleiß

<style scoped>section{font-size:24px;}</style>

| Mechanismus | Maßnahme |
|---|---|
| Adhäsion | Schmierung, ungleiche Werkstoffpaarung, Beschichtung (z. B. DLC), glatte Oberflächen |
| Abrasion | Oberfläche härter als Abrasivteilchen, Härten/Hartauftrag, Filter, Dichtungen |
| Oberflächenzerrüttung | hohe Härte und Reinheit (Einsatzhärten, 100Cr6), Oberflächengüte, ausreichender Schmierfilm |
| Tribooxidation | Mikrobewegungen verhindern (Übermaß, Vorspannung), Beschichtung |
| Kavitation | Druckabfall vermeiden (Strömungsführung), zähe/harte Werkstoffe |

<div class="merke">

Die Verbindung zu MTI 07: **Einsatzstähle, Wälzlagerstähle und Werkzeugstähle** sind genau für Verschleiß und Oberflächenzerrüttung gemacht.

</div>

---

## Zusammenfassung

<div class="container">
<div class="col">

**Ermüdung**
- Bruch unter zyklischer Last weit unter $R_m$, in 3 Stadien
- Kennwerte: $\sigma_a$, $\sigma_m$, $R$
- Wöhlerlinie: $N = N_D (\sigma_a / \sigma_D)^{-k}$
- Zug-Mittelspannung und Kerben senken die ertragbare Amplitude
- Palmgren-Miner: $D = \sum n_i / N_i$, Versagen bei $D = 1$ (bzw. $D_{zul}$)

</div>
<div class="col">

**Verschleiß**
- Systemeigenschaft des tribologischen Systems
- 4 Mechanismen: Adhäsion, Abrasion, Zerrüttung, Tribochemie
- Archard: $V = k \cdot F_N \cdot s$
- Schmierung, Härte und Werkstoffpaarung sind die wichtigsten Stellschrauben

</div>
</div>

---

## Referenzen

- Haibach, E.: Betriebsfestigkeit. Springer
- FKM-Richtlinie: Rechnerischer Festigkeitsnachweis für Maschinenbauteile. VDMA
- Radaj, D.; Vormwald, M.: Ermüdungsfestigkeit. Springer
- Sommer, K.; Heinz, R.; Schöfer, J.: Verschleiß metallischer Werkstoffe. Springer Vieweg, [doi:10.1007/978-3-658-17851-2](https://doi.org/10.1007/978-3-658-17851-2)
- Czichos, H.; Habig, K.-H.: Tribologie-Handbuch. Springer Vieweg
- [BASF: Reibung und Verschleiß bei Polymerwerkstoffen](https://download.basf.com/p1/8a8081c57fd4b609017fd66047f138c3/de/Reibung_und_Verschlei%25C3%259F%250Abei_Polymerwerkstoffen)
- Vorlesung Werkstofftechnik II: Ermüdung und Rissbildung
