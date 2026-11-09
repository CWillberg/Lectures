---
marp: true

theme: h2
header: ''
footer: ''

title: MTI - Fertigungstechnik - Trennen
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


## Vorlesung MTI - Trennen
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](https://upload.wikimedia.org/wikipedia/commons/9/90/SchlichtenDrehen.jpg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen

---

<!--paginate: true-->

# Inhalte
- Einordnung nach DIN 8580
- Spanen: Schneidkeil, Spanbildung, Schnittgrößen
- Schnittkraft, Leistung, Hauptzeit
- Schneidstoffe und Werkzeugverschleiß
- Zerspanbarkeit der Werkstoffe
- Verfahren: Drehen, Fräsen, Bohren, Schleifen
- Zerteilen, Abtragen, Zerlegen
- Rechenübungen

<div style="position: absolute; top: 200px; left: 850px;">
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/MTI/mti_ft_08/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

<!--
Zeitplan (90 min):
 10 min  Einordnung, Grundlagen Spanen
 25 min  Schneidkeil, Spanbildung, Schnittgrößen, Übung 1
 20 min  Schneidstoffe, Standzeit (Taylor), Übung 2, Zerspanbarkeit
 20 min  Verfahren (Videos auswählen)
 10 min  Zerteilen, Abtragen, Übung 3
  5 min  Zusammenfassung
-->

---

# Einordnung

---

## Trennen nach DIN 8580

<style scoped>section{font-size:22px;}</style>

Trennen ist das Herstellen geometrisch bestimmter fester Körper mittels Werkzeugen durch Formänderung und **Stoffverminderung** - der Zusammenhalt wird örtlich aufgehoben. Geometrisch bestimmte feste Körper sind Halbzeuge, montagefähige Einzelteile oder Werkzeuge.

| Gruppe | Beispiele |
|---|---|
| 3.1 Zerteilen | Scheren, Stanzen, Brechen, Reißen |
| 3.2 Spanen mit geometrisch **bestimmten** Schneiden | Drehen, Fräsen, Bohren, Sägen |
| 3.3 Spanen mit geometrisch **unbestimmten** Schneiden | Schleifen, Honen, Läppen |
| 3.4 Abtragen | Funkenerosion, Laser, Ätzen |
| 3.5 Zerlegen | Demontieren, Lösen von Verbindungen |
| 3.6 Reinigen | Strahlen, Waschen, Entfetten |

---

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/IU7ehp13Z_g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

# Spanen

---

## Warum spanen?

<style scoped>section{font-size:22px;}</style>

<!-- _class: cols-2 -->

<div class="ldiv">

**Vorteile**
- hohe Fertigungsgenauigkeit (IT6 und besser, Rauheit bis $R_z < 1$ µm)
- hohe Reproduzierbarkeit der Qualität
- hohe Flexibilität bei den geometrischen Bearbeitungsmöglichkeiten
- hohe stückzahl- und auftragsbezogene Fertigungsflexibilität

**Nachteile**
- Werkstoff wird zu Spänen - Materialverlust
- Faserverlauf wird durchtrennt (vgl. Schmieden, MTI 05)
- zeit- und energieintensiv bei großen Spanvolumina

</div>

<div class="rdiv">

<div class="hinweis">

**Typische Prozesskette:** Urformen oder Umformen für die Grobform → **Spanen** für Passflächen, Bohrungen, Gewinde → ggf. Wärmebehandlung → **Schleifen** für die Endmaße

</div>

</div>

---

## Klassifizierung
- Automatisierungsgrad
  - maschinell - automatisiert
  - manuell - unbestimmte Relativbewegung zwischen Werkzeug und Werkstück
- geometrische Art der Schneide
  - geometrisch bestimmt
  - geometrisch unbestimmt
- nach Art der zu erzeugenden Flächen (Formelement)
  - Plan-, Rund-, Schrauben-/Gewinde-, Profil-, Freiformflächen

---

![bg 80%](https://upload.wikimedia.org/wikipedia/commons/1/1e/L%C3%A4ngs-Rund-Drehen.jpg)
![bg 90%](https://upload.wikimedia.org/wikipedia/commons/4/43/Fraisage_surfacage.svg)
![bg 95%](https://upload.wikimedia.org/wikipedia/commons/c/cc/Unbestimmte_Schneide.svg)

---

## Der Schneidkeil

<style scoped>section{font-size:22px;}</style>

<!-- _class: cols-2 -->

<div class="ldiv">

Jede Schneide ist im Kern ein **Keil**:

| Winkel | Bedeutung | Wirkung |
|---|---|---|
| Freiwinkel $\alpha$ | zwischen Freifläche und Werkstück | verhindert Reiben |
| Keilwinkel $\beta$ | Winkel der Schneide selbst | Stabilität der Schneide |
| Spanwinkel $\gamma$ | zwischen Spanfläche und Senkrechter | Spanablauf, Schnittkraft |

<div class="eq">

$$\alpha + \beta + \gamma = 90°$$

</div>

</div>

<div class="rdiv">

**Faustregeln**
- **weicher, zäher** Werkstoff (Al, Baustahl): großer Spanwinkel $\gamma$ → kleine Kräfte
- **harter, spröder** Werkstoff (gehärteter Stahl, GJL): kleiner oder negativer $\gamma$, großer Keilwinkel $\beta$ → stabile Schneide
- großer $\gamma$ = „scharf", aber bruchempfindlich

</div>

---

![bg 80%](https://upload.wikimedia.org/wikipedia/commons/d/db/Spanbildung.png)

![bg 80%](https://media.springernature.com/full/springer-static/image/chp%3A10.1007%2F978-3-642-19772-7_2/MediaObjects/978-3-642-19772-7_2_Fig3_HTML.jpg?as=webp)

---

## Spanarten

<style scoped>section{font-size:24px;}</style>

| Spanart | Entstehung | Folge |
|---|---|---|
| **Reißspan** | spröde Werkstoffe (GJL), kleiner Spanwinkel, niedrige Schnittgeschwindigkeit | Werkstoff reißt vor der Schneide, schlechte Oberfläche |
| **Scherspan** | zäher Werkstoff, mittlerer Spanwinkel, niedrige Schnittgeschwindigkeit | schuppenförmige Spanteile, die teilweise wieder miteinander verschweißen |
| **Fließspan** | zäher Werkstoff, großer Spanwinkel, hohe Schnittgeschwindigkeit | sehr gute Oberfläche, aber lange Späne → Störungen |

![bg right:35% fit](https://d2wg98g6yh9seo.cloudfront.net/users/274851/274851_NicudaRomaFeziRi5386415885862914.jpg)

<div class="hinweis">

Lange Fließspäne wickeln sich um Werkzeug und Werkstück. Abhilfe: **Spanbrecher** am Werkzeug oder Werkstoffe mit MnS-Einschlüssen (**Automatenstahl**, MTI 07).

</div>

---

## Schnittgrößen beim Drehen

<style scoped>section{font-size:23px;}</style>

<!-- _class: cols-2 -->

<div class="ldiv">

| Größe | Symbol | Einheit |
|---|---|---|
| Schnittgeschwindigkeit | $v_c$ | m/min |
| Drehzahl | $n$ | 1/min |
| Vorschub pro Umdrehung | $f$ | mm |
| Schnitttiefe | $a_p$ | mm |

<div class="eq">

$$v_c = \pi \cdot d \cdot n$$

$$A = a_p \cdot f \qquad Q = a_p \cdot f \cdot v_c$$

</div>

$A$: Spanungsquerschnitt, $Q$: Zeitspanvolumen

**Einheiten:** $d$ in mm, $v_c$ in m/min → $n = \frac{1000 \cdot v_c}{\pi \cdot d}$

</div>

<div class="rdiv">

![](https://upload.wikimedia.org/wikipedia/commons/1/1e/L%C3%A4ngs-Rund-Drehen.jpg)


</div>

---

## Schnittkraft, Leistung und Hauptzeit

**Schnittkraft** über die spezifische Schnittkraft $k_c$ (Werkstoffkennwert aus Tabellen):

<div class="eq">

$$F_c = k_c \cdot A = k_c \cdot a_p \cdot f$$

</div>

| Werkstoff | $k_c$ [N/mm²] (ca., für $f \approx 0{,}2$ mm) |
|---|---|
| Aluminiumlegierung | 700 - 900 |
| EN-GJL-250 | 1 200 - 1 500 |
| Baustahl S235 | 2 000 - 2 300 |
| Vergütungsstahl C45, 42CrMo4 | 2 300 - 2 800 |
| austenitischer Stahl X5CrNi18-10 | 2 500 - 3 000 |

**Schnittleistung:** $P_c = F_c \cdot v_c$ (mit $v_c$ in m/s) &nbsp;&nbsp; **Hauptzeit:** $t_h = \frac{L}{f \cdot n}$

---

## Übung 1: Welle drehen

<div class="aufgabe">

Eine Welle aus C45 ($d = 50$ mm, Drehlänge $L = 150$ mm) wird mit einer Hartmetallplatte längsgedreht.
- Schnittgeschwindigkeit $v_c = 200$ m/min
- Vorschub $f = 0{,}2$ mm, Schnitttiefe $a_p = 2$ mm
- spezifische Schnittkraft $k_c = 2\,500$ N/mm², Maschinenwirkungsgrad $\eta = 0{,}8$

a) Welche Drehzahl muss eingestellt werden?
b) Wie groß sind Schnittkraft und Schnittleistung?
c) Welche Antriebsleistung braucht die Maschine?
d) Wie lange dauert ein Schnitt (Hauptzeit)?

</div>

*Zeit: 8 Minuten*

---

## Lösung Übung 1

<div class="loesung">

a) $n = \frac{1000 \cdot 200}{\pi \cdot 50} \approx 1\,273$ min⁻¹

b) $A = 2 \cdot 0{,}2 = 0{,}4$ mm² → $F_c = 2\,500 \cdot 0{,}4 = 1\,000$ N
$\quad P_c = 1\,000 \text{ N} \cdot \frac{200}{60} \frac{\text{m}}{\text{s}} \approx 3{,}3$ kW

c) $P_{an} = \frac{P_c}{\eta} = \frac{3{,}3}{0{,}8} \approx 4{,}2$ kW

d) $t_h = \frac{150}{0{,}2 \cdot 1\,273} \approx 0{,}59$ min $\approx 35$ s

</div>

Zeitspanvolumen: $Q = 2 \cdot 0{,}2 \cdot 200 = 80$ cm³/min - in 35 s werden ca. 47 cm³ (≈ 370 g Stahl) zu Spänen.

---

## Schneidstoffe

<style scoped>section{font-size:20px;}</style>

| Schneidstoff | Aufbau | Warmhärte bis ca. | Einsatz |
|---|---|---|---|
| Werkzeugstahl | C110, unlegiert | 200 °C | Handwerkzeuge |
| **Schnellarbeitsstahl (HSS)** | HS6-5-2 (W, Mo, V, Co) | 600 °C | Bohrer, Fräser, Gewindebohrer |
| **Hartmetall** | WC-Körner in Co-Matrix, oft beschichtet (TiN, Al₂O₃) | 1000 °C | Wendeschneidplatten - Standard in der Serie |
| Cermet | TiC/TiN in Ni-Matrix | 1000 °C | Schlichten von Stahl |
| Schneidkeramik | Al₂O₃, Si₃N₄ | 1200 °C | Gusseisen, harte Werkstoffe |
| CBN | kubisches Bornitrid | 1400 °C | gehärteter Stahl (> 55 HRC) |
| PKD (Diamant) | polykristalliner Diamant | 700 °C | Al, Cu, Faserverbunde - **nicht** Stahl |

**Zielkonflikt:** härter und warmfester → höhere Schnittgeschwindigkeit möglich, aber **spröder**

---

## Werkzeugverschleiß

<style scoped>section{font-size:22px;}</style>

<!-- _class: cols-2 -->

<div class="ldiv">

Hohe Schnittgeschwindigkeit → hohe Temperatur → höherer Verschleiß (Verschleißmechanismen: MTI 10)

| Verschleißform | Ursache |
|---|---|
| Freiflächenverschleiß | Abrasion an der Freifläche |
| Kolkverschleiß | Diffusion, hohe Temperatur auf der Spanfläche |
| Aufbauschneide | Adhäsion: Werkstoff klebt auf der Schneide (Al, Baustahl, kleine $v_c$) |
| Schneidkantenbruch | zu spröder Schneidstoff, unterbrochener Schnitt |

</div>

<div class="rdiv">

**Standzeit $T$:** Zeit, bis die Schneide gewechselt werden muss (z. B. Verschleißmarke 0,3 mm)

**Taylor-Gleichung:**

<div class="eq">

$$v_c \cdot T^{\,n} = C$$

</div>

- $n \approx 0{,}1 ... 0{,}15$ (HSS), $\approx 0{,}2 ... 0{,}3$ (Hartmetall)
- $C$: Konstante für Werkstoff/Schneidstoff-Paarung

</div>

---

## Übung 2: Schneller drehen?

<div class="aufgabe">

Für eine Hartmetallschneide gilt die Taylor-Gleichung mit $n = 0{,}25$. Bei $v_c = 200$ m/min beträgt die Standzeit $T = 20$ min.

a) Welche Standzeit ergibt sich, wenn die Schnittgeschwindigkeit um **20 %** auf 240 m/min erhöht wird?
b) ... und wenn sie **verdoppelt** wird?
c) Was bedeutet das für die Wirtschaftlichkeit?

**Tipp:** $T_2 = T_1 \cdot \left(\frac{v_{c1}}{v_{c2}}\right)^{1/n}$

</div>

---

## Lösung Übung 2

<div class="loesung">

a) $T_2 = 20 \cdot \left(\frac{200}{240}\right)^{4} = 20 \cdot 0{,}48 \approx 9{,}6$ min

b) $T_2 = 20 \cdot \left(\frac{1}{2}\right)^{4} = 20 \cdot \frac{1}{16} = 1{,}25$ min

</div>

c) +20 % Geschwindigkeit halbiert die Standzeit, doppelte Geschwindigkeit lässt nur noch ein Sechzehntel übrig. Schneller ist also nicht automatisch billiger: Werkzeugkosten und Wechselzeiten steigen stark. Es gibt eine **wirtschaftlich optimale** Schnittgeschwindigkeit.

<div class="merke">

Gleiches Muster wie bei der Wöhlerlinie (MTI 10): ein **Potenzgesetz** - kleine Änderungen der Belastung haben große Wirkung auf die Lebensdauer.

</div>

---

## Zerspanbarkeit der Werkstoffe

<style scoped>section{font-size:21px;}</style>

Zerspanbarkeit = wie gut sich ein Werkstoff spanen lässt (Standzeit, Schnittkraft, Oberfläche, Spanform)

| Werkstoff | Zerspanbarkeit | Grund |
|---|---|---|
| Automatenstahl (11SMnPb30) | sehr gut | MnS (+ Pb) brechen den Span |
| Gusseisen GJL | gut | Graphit schmiert und bricht den Span, kurze Späne |
| Aluminiumlegierungen | gut | geringe Kräfte, hohe $v_c$; Gefahr der Aufbauschneide |
| Baustahl, Vergütungsstahl (vergütet) | mittel | lange Späne bei niedrigem C-Gehalt |
| austenitischer Stahl X5CrNi18-10 | schlecht | Kaltverfestigung, zäh, schlechte Wärmeleitung |
| Titan, Ni-Basis-Legierungen | sehr schlecht | Wärme bleibt in der Schneide, hohe Festigkeit |
| gehärteter Stahl (> 55 HRC) | nur mit CBN / Schleifen | sehr hart |

---

## Kühlschmierstoffe

<style scoped>section{font-size:22px;}</style>

- **Kühlen:** Wärme aus der Schnittzone abführen → höhere Standzeit, Maßhaltigkeit
- **Schmieren:** Reibung zwischen Span und Schneide senken → bessere Oberfläche, weniger Aufbauschneide
- **Späne abführen:** besonders beim Bohren

| Art | Einsatz |
|---|---|
| wassermischbar (Emulsion) | hohe Schnittgeschwindigkeit, Kühlen im Vordergrund |
| nichtwassermischbar (Öl) | niedrige $v_c$, Gewindeschneiden, Räumen - Schmieren im Vordergrund |
| Minimalmengenschmierung (MMS) | wenige ml/h Öl als Aerosol, umwelt- und kostenfreundlich |
| Trockenbearbeitung | GJL, beschichtetes Hartmetall |

<div class="hinweis">

Kühlschmierstoffe sind teuer (Entsorgung, Gesundheitsschutz) - daher der Trend zu MMS und Trockenbearbeitung.

</div>

---

# Verfahren mit geometrisch bestimmter Schneide

---

## Drehen

- Werkstück dreht sich (Schnittbewegung), Werkzeug macht den Vorschub
- erzeugt **rotationssymmetrische** Teile: Wellen, Bolzen, Flansche

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/1/1e/L%C3%A4ngs-Rund-Drehen.jpg)

---

## Plandrehen

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/GF6CwvIX1h8?start=9" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

## Runddrehen

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/19HyuH1zD8s?start=10" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

## Schrauben-/Gewindedrehen

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/D9lYGt-nL4k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

## Fräsen

- **Werkzeug** dreht sich (mehrschneidig), Werkstück oder Werkzeug macht den Vorschub
- unterbrochener Schnitt: jede Schneide tritt ein und aus → Temperatur- und Stoßwechsel
- erzeugt ebene Flächen, Nuten, Taschen, Freiformflächen

<br/>
<iframe width="350" height="380" src="https://www.youtube.com/embed/6rbNRCL8myM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

![bg 90% right](https://upload.wikimedia.org/wikipedia/commons/4/43/Fraisage_surfacage.svg)

---

## Bohren

- Spanabfuhr und Kühlung aus der Bohrung heraus sind das Hauptproblem
- Schnittgeschwindigkeit an der Spitze = 0
- Bohrungen sind meist nicht sehr genau → Reiben für Passungen

<br/>
<iframe width="350" height="380" src="https://www.youtube.com/embed/dZ4zmaVDW48" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

![bg right](http://www.matthiashertel.de/Technologien/Bohren/Bohren.jpg)

---

## Gewindebohren
<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/L6-CiLS45NY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

# Verfahren mit geometrisch unbestimmter Schneide

---

## Schleifen

<style scoped>section{font-size:22px;}</style>
- viele kleine, zufällig angeordnete Schneiden (Körner)
- sehr kleine Spanungsdicken → hohe Genauigkeit, geringe Rauheit
- auch für **gehärtete** Werkstoffe
- Schleifmittel
  - Korund - Al$_2$O$_3$: am häufigsten eingesetzt, Härte steigt mit Reinheitsgrad
  - Siliciumcarbid, Bornitrid, Diamant
- Bindung (Matrix): keramisch, Kunstharz, Metall

![bg right 95%](http://www.fachlexika.de/technik/mechatronik/schleifverfahren.jpg)

---

## Schleifscheiben

<!-- _class: cols-2 -->

<div class="ldiv">

- **Körnung** beschreibt die Größe der Schleifmittelkörner
- kleinere Körner → geringere Oberflächenrauheit
- Schleifmittelgefüge: dicht, porös, hochporös

[Bezeichnung von Schleifscheiben](http://www.fachlexika.de/technik/mechatronik/schleifen.html)

</div>

<div class="rdiv">

**Weiche** Schleifwerkzeuge für
- harte Werkstoffe
- große Berührungsflächen
- kleinen Vorschub

**Harte** Schleifwerkzeuge für
- weiche Werkstoffe
- kleinere Berührungsflächen
- größeren Vorschub

</div>

<div class="hinweis">

„Weich" heißt hier: die **Bindung** gibt stumpfe Körner leicht frei, sodass neue, scharfe Körner nachkommen (Selbstschärfung).

</div>

---

## Weitere Verfahren mit unbestimmter Schneide

| Verfahren | Prinzip | Anwendung |
|---|---|---|
| **Honen** | Honsteine mit Hub- und Drehbewegung, Kreuzschliff | Zylinderlaufbahnen (Ölrückhaltung) |
| **Läppen** | loses Korn in Paste zwischen Werkstück und Läppscheibe | Dichtflächen, Endmaße |
| **Gleitschleifen** | Werkstücke und Schleifkörper im vibrierenden Behälter | Entgraten von Massenteilen |
| **Strahlen** | Partikelstrahl | Reinigen, Aufrauen vor dem Kleben, Kugelstrahlen |

---

## Trennprozesse sind verschaltbar

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/hmmXmKqP7B4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

# Zerteilen, Abtragen, Zerlegen

---

## Zerteilen

- mechanisches Trennen **ohne Späne**
- Scheren, Brechen, Reißen, Schneiden (Stanzen)
- Schnittfläche: Kanteneinzug, Glattschnitt, Bruchzone, Grat
- Schneidkraft (Abschätzung): $F_s \approx 0{,}8 \cdot R_m \cdot L_s \cdot t$ &nbsp; ($L_s$: Schnittlinienlänge, $t$: Blechdicke)

<iframe width="350" height="380" src="https://www.youtube.com/embed/W_iKKt6783g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

## Schneiden

<br/>
<iframe width="350" height="500" src="https://www.youtube.com/embed/Vi95Z8rNX_w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Mechanisch

---

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/DEUZLEmFUgA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Wasserstrahl

---

<br/>
<iframe width="1150" height="500" src="https://www.youtube.com/embed/3lLfXX9Xu-0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Laserschneiden

---

![bg 80%](https://upload.wikimedia.org/wikipedia/commons/c/cc/Laserschema.svg)

---

## Vorteile von Lasern
- hohe Bearbeitungsgeschwindigkeit
- hohe Präzision und Bearbeitungsqualität
- es werden keine mechanischen Kräfte ausgeübt
- geringe Wärmebelastung, schmale Wärmeeinflusszone
- hohe, präzise, definierte Energiedichte
- Automatisierbarkeit, hohe Flexibilität
- verschleißfreies Werkzeug

<div class="hinweis">

Aber: Auch beim Laserschneiden entsteht eine kleine **Wärmeeinflusszone** - bei härtbaren Stählen kann die Schnittkante aufhärten (gleicher Effekt wie beim Schweißen, MTI 09).

</div>

---

## Abtragen

<!-- _class: cols-2 -->

<div class="ldiv">

**chemisch, elektrochemisch**
- Ätzen, elektrochemisches Abtragen (ECM)

**thermisch**
- **Funkenerosion** (EDM): Funken zwischen Elektrode und Werkstück schmelzen kleine Krater - für **jeden leitfähigen** Werkstoff, auch gehärtet
- Elektronenstrahl, Laser, Plasma

**mechanisch**
- Wasserstrahl (mit Abrasivmittel)

</div>

<div class="rdiv">

<div class="merke">

**Abtragen** ist unabhängig von der **Härte** des Werkstoffs - ideal für gehärtete Werkzeugstähle, Hartmetall und komplexe Formen (Spritzgussformen, Stanzwerkzeuge).

</div>

</div>

---

## Zerlegen

- Auseinandernehmen (Demontieren im engeren Sinne)
- Entleeren
- Lösen kraftschlüssiger Verbindungen
- Zerlegen von durch Urformen gefügten Teilen
- Ablöten
- Lösen von Klebeverbindungen
- Zerlegen textiler Verbindungen

<div class="hinweis">

Zerlegen ist das Gegenstück zum **Fügen** (MTI 09) - und wird für **Reparatur und Recycling** immer wichtiger: Wer beim Konstruieren an das Zerlegen denkt, spart später Kosten.

</div>

---

## Übung 3: Welches Trennverfahren?

<div class="aufgabe">

Wählen Sie ein geeignetes Trennverfahren und begründen Sie kurz.

a) 10 000 Unterlegscheiben aus 2 mm Stahlblech
b) Passbohrung $\varnothing$ 20 H7 in einem Getriebegehäuse aus GJL
c) Lagersitz einer gehärteten Welle (60 HRC), $R_z < 2$ µm
d) Spritzgießform aus gehärtetem Werkzeugstahl mit feinen Rippen
e) Zuschnitt einer 30 mm dicken Platte aus Faserverbund ohne Wärmeeinfluss
f) Einzelteil: Lagerdeckel aus Aluminium mit Taschen und Bohrungen

</div>

*Zeit: 5 Minuten*

---

## Lösung Übung 3

<style scoped>section{font-size:24px;}</style>

<div class="loesung">

| Bauteil | Verfahren | Begründung |
|---|---|---|
| a) Unterlegscheiben | **Stanzen** (Zerteilen) | große Stückzahl, kein Span, Sekunden pro Teil |
| b) Passbohrung | **Bohren + Reiben** (oder Feindrehen) | Bohren allein zu ungenau |
| c) gehärteter Lagersitz | **Schleifen** | gehärtet, geringe Rauheit |
| d) Spritzgießform | **Funkenerosion** | gehärtet, feine Konturen, kein Schnittdruck |
| e) Faserverbund-Platte | **Wasserstrahlschneiden** | kein Wärmeeintrag, keine Delamination durch Hitze |
| f) Lagerdeckel | **Fräsen + Bohren** (CNC) | flexibel, Einzelteil, Al gut zerspanbar |

</div>

---

## Zusammenfassung

- **Trennen** hebt den Zusammenhalt örtlich auf: Zerteilen, Spanen, Abtragen, Zerlegen, Reinigen
- **Schneidkeil:** $\alpha + \beta + \gamma = 90°$ - großer Spanwinkel für zähe, kleiner für harte Werkstoffe
- **Schnittgrößen:** $v_c = \pi d n$, $A = a_p f$, $F_c = k_c A$, $P_c = F_c v_c$
- **Schneidstoffe:** HSS → Hartmetall → Keramik/CBN: härter und warmfester, aber spröder
- **Taylor:** $v_c T^n = C$ - höhere Schnittgeschwindigkeit kostet überproportional Standzeit
- **Zerspanbarkeit** ist eine Werkstofffrage: Automatenstahl und GJL gut, Austenit und Titan schlecht

---

## Referenzen

- DIN 8580: Fertigungsverfahren - Begriffe, Einteilung
- DIN 8589: Fertigungsverfahren Spanen
- Awiszus, B. et al.: Grundlagen der Fertigungstechnik. Hanser
- Fritz, A. H.; Schulze, G.: Fertigungstechnik. Springer Vieweg
- Klocke, F.: Fertigungsverfahren 1 - Zerspanung mit geometrisch bestimmter Schneide. Springer Vieweg
