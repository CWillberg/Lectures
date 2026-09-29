---
marp: true

theme: h2
header: ''
footer: ''

title:  Grundlagen - Werkstofftechnik
author: Christian Willberg
---


<style>
.container{
  display: flex;
  }
.col{
  flex: 1;
  }
</style>

<style scoped>
.column-container {
    display: flex;
    flex-direction: row;
}

.column {
    flex: 1;
    padding: 0 20px; /* Platzierung der Spalten */
}

.centered-image {
    display: block;
    margin: 0 auto;
}

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


##  Grundlagen - Werkstofftechnik
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
Hochschule Magdeburg-Stendal

![bg right](../../assets/Figures/IWES_test.jpg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Bildreferenz</a>
</div>


---

<!--paginate: true-->

## Vorlesung

**Rahmen**


- Essen oder Trinken sind okay, aber leise
- Probleme:
    - bei der Kinderbetreuung
    - Nachteilsausgleich
    - Diskriminierung
    - sprachlich
    - ...
- Fragen

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Werkstofftechnik_1/wst_mb_01/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---
## Organisation
- [2 Praktika](https://moodle2.hs-magdeburg.de/moodle/course/view.php?id=4605)
    - Zugprüfung
    - Härteprüfung
    - Teilnahme ist Zulassungsvorraussetzung zur Prüfung
- Prüfung 40 Minuten
- Fragen per E Mail; Konsultationen bei Bedarf

---

## Inhalte nach Modulhandbuch

- Einteilung von Werkstoffen
- Materialeigenschaften
- Werkstoffstruktur, Gefüge, Legierungen, Gitterbaufehler
- ideale und reale Zustandsdiagramme, Gleichgewichts- und
Ungleichgewichtszustände
- Wärmebehandlung, Härteverfahren
- Labor: Zugversuch, Härteprüfung

---

# Einordnung
## Warum Werkstofftechnik gerade jetzt?
Klima, Nachhaltigkeit und was das für Ingenieurinnen und Ingenieure bedeutet


---

## Das Klima - globale Lage

- **2024**: erstes Kalenderjahr mit mehr als **1,5 °C** über dem vorindustriellen Niveau (Copernicus)
- Die letzten zehn Jahre sind die wärmsten seit Beginn der Messungen
- Pariser Abkommen: Erwärmung deutlich unter 2 °C, möglichst 1,5 °C

![bg right fit](https://assets.weforum.org/editor/O0kfISVKT3B1KgiiJecM2jpNSGbWr4ZEFo8s4huwCFs.png)

<div style="position: absolute; bottom: 10px; left: 10px; font-size: 14px;">
Quellen: <a href="https://climate.copernicus.eu/global-climate-highlights-2024">Copernicus Global Climate Highlights</a> |
<a href="https://www.ipcc.ch/report/ar6/syr/">IPCC AR6</a> |
Warming Stripes: <a href="https://showyourstripes.info/">showyourstripes.info</a>
</div>

---

## Das Klima - Deutschland

- Jahresmitteltemperatur seit 1881: **ca. +1,8 °C** - also stärker als der globale Mittelwert
- Rekord: **41,2 °C** (Lingen, Juli 2019)
- Heiße Tage (≥ 30 °C): von ca. 3 pro Jahr (1950er) auf rund 10 pro Jahr heute
- Mehr Starkregen, längere Trocken- und Hitzeperioden
- Weniger Frosttage, aber weiterhin Frost-Tau-Wechsel

<!-- Tipp: Warming Stripes Deutschland von showyourstripes.info als Hintergrundbild einbinden -->

<div style="position: absolute; bottom: 10px; left: 10px; font-size: 14px;">
Quellen: <a href="https://www.dwd.de/DE/klimaumwelt/klimawandel/klimawandel_node.html">Deutscher Wetterdienst</a> |
<a href="https://www.umweltbundesamt.de/themen/klima-energie/klimafolgen-anpassung">Umweltbundesamt - Klimafolgen</a>
</div>

---

## Extremwetter - Beispiele aus Deutschland

| Ereignis | Folgen mit Werkstoffbezug |
|:---|:---|
| Elbehochwasser 2002 und 2013 (u. a. Magdeburg) | Deiche, Brücken, Gebäude, Korrosion und Durchfeuchtung |
| Hitze- und Dürresommer 2018, 2019, 2022 | Gleisverwerfungen, Straßenschäden, Niedrigwasser |
| Niedrigwasser am Rhein 2018 | Transportprobleme, Produktionsdrosselung in der Chemie |
| Ahrtal-Flut 2021 | Zerstörte Brücken und Infrastruktur, mehr als 180 Tote |
| Hagelunwetter | Schäden an PV-Modulen, Fahrzeugen, Fassaden |
---

## Zwei Seiten derselben Medaille

**1. Werkstoffproduktion verursacht den Klimawandel mit und erzeugt ökologische und soziale Schäden**
- Herstellung von Stahl, Zement, Aluminium, Kunststoffen ist extrem energie- und CO₂-intensiv
- Wer Werkstoffe auswählt, entscheidet über Emissionen
- Rohstoffgewinnung oft unter menschenunwürdigen Bedingungen, z. B. Kinderarbeit im Kobalt-Kleinbergbau (DR Kongo)

---

**2. Der Klimawandel verändert die Anforderungen an Werkstoffe**
- Höhere Temperaturen, mehr Extremwetter
- Werkstoffe müssen mit den geänderten Bedingungen klarkommen - Bauteile, die heute ausgelegt werden, sind 2050 bis 2080 noch im Einsatz
- Technische Normen und Kennwerte von gestern passen nicht automatisch zum Klima von morgen und bilden soziale Aspekte nicht ab

![bg right](https://bahnblogstelle.com/wp-content/uploads/2026/06/2026-06-SN-Leipzig-Hitze-Sommer-Strassenbahn-Schaeden-Bitumen-verfluessigt__c__dpa-Heiko-Rebsch-1024x576.jpg)

![bg vertical](https://i0.gmx.net/image/280/32993280,pd=2/hitze-beschaedigt-betonplatten-autobahn-a10.jpg)

---

## Die soziale und ökologische Seite der Rohstoffe

| Rohstoff | Verwendung | Problem |
|:---|:---|:---|
| Kobalt (DR Kongo) | Batterien, Superlegierungen | Kinderarbeit und fehlender Arbeitsschutz im Kleinbergbau |
| Lithium (z. B. Atacama) | Batterien | Wasserverbrauch in Trockengebieten, Konflikte mit indigenen Gemeinschaften |
| Bauxit / Aluminium | Leichtbau | Rotschlamm, Flächenverbrauch |
| Eisenerz | Stahl | Dammbrüche von Absetzbecken (Brumadinho, Brasilien 2019: rund 270 Tote) |
| Seltene Erden | Magnete (Windkraft, E-Motoren) | radioaktive und chemische Rückstände |

**Regulierung - erst im Aufbau**
- Lieferkettensorgfaltspflichtengesetz (LkSG) in Deutschland, EU-Lieferkettenrichtlinie (CSDDD)
- Sorgfaltspflichten für Rohstoffe in der EU-Batterieverordnung
- Umfang und Zeitpläne werden derzeit teils abgeschwächt bzw. verschoben

<div style="position: absolute; bottom: 10px; left: 10px; font-size: 14px;">
Quellen: <a href="https://www.amnesty.org/en/documents/afr62/3183/2016/en/">Amnesty International (2016): This is what we die for</a> |
<a href="https://www.bafa.de/DE/Lieferketten/lieferketten_node.html">BAFA - LkSG</a>
</div>



---

## Europa und Deutschland - politischer Rahmen

**EU**
- **2030**: -55 % Treibhausgase (gegenüber 1990)
- **2050**: Klimaneutralität
- CO₂-Grenzausgleich **CBAM**: seit 2026 zahlungspflichtig für Stahl, Aluminium, Zement, Dünger u. a.
- Ökodesign-Verordnung (ESPR): Haltbarkeit, Reparierbarkeit, Rezyklatanteile, digitaler Produktpass
- Batterieverordnung: Batteriepass ab 2027, Recyclingquoten

**Deutschland (Klimaschutzgesetz)**
- **2030**: -65 %, **2040**: -88 %, **2045**: Klimaneutralität

<div style="position: absolute; bottom: 10px; left: 10px; font-size: 14px;">
Quellen: <a href="https://climate.ec.europa.eu/">EU Climate Action</a> |
<a href="https://taxation-customs.ec.europa.eu/carbon-border-adjustment-mechanism_en">EU CBAM</a> |
<a href="https://www.bundesregierung.de/breg-de/aktuelles/klimaschutzgesetz-2197410">Bundesregierung - KSG</a>
</div>

---

## CO₂-Fußabdruck von Werkstoffen

| Werkstoff | CO₂-Äquivalent je kg (Primär, grob) | Mit Recycling |
|:---|:---|:---|
| Stahl (Hochofen) | ca. 2 kg | Elektrostahl aus Schrott: ca. 0,4-0,7 kg |
| Aluminium | ca. 8-16 kg (stark strombabhängig) | Sekundäraluminium: ca. 0,5-1 kg |
| Zement | ca. 0,6-0,9 kg | - |
| Kunststoffe (PE, PP) | ca. 2-3 kg | mechanisches Recycling deutlich weniger |
| Kohlenstofffasern | ca. 20-40 kg | rezyklierte Fasern deutlich weniger |



<div style="position: absolute; bottom: 10px; left: 10px; font-size: 14px;">
Quellen: <a href="https://www.ipcc.ch/report/ar6/wg3/chapter/chapter-11/">IPCC AR6 WGIII Kap. 11</a> |
<a href="https://www.worldsteel.org/">worldsteel</a> |
<a href="https://european-aluminium.eu/">European Aluminium</a>
</div>

---


# Was bedeutet Wärme für Werkstoffe?
Wesentlich Materialkennwerte sind **temperaturabhängig**

---

## Temperatur verändert (fast) alle Eigenschaften

- **E-Modul und Festigkeit** sinken mit steigender Temperatur
- **Kriechen**: bleibende Verformung unter konstanter Last - bei Kunststoffen schon bei Raumtemperatur, bei Metallen bei hohen Temperaturen
- **Glasübergangstemperatur $T_g$**: Kunststoffe werden oberhalb weich (z. B. PVC ca. 80 °C)
- **Wärmeausdehnung**: behinderte Dehnung erzeugt Spannungen
- **Alterung und Korrosion** laufen schneller ab



---

## Wie heiß wird es wirklich?

Lufttemperatur ≠ Bauteiltemperatur

| Bauteil | Luft 35 °C, Sonne | Konsequenz |
|:---|:---|:---|
| Schiene | über 60 °C | Gleisverwerfung |
| Asphalt | 50-70 °C | Spurrinnen, Aufweichen |
| PV-Modul | 60-80 °C | Wirkungsgrad- und Lebensdauerverlust |
| Autoinnenraum (Armaturenbrett) | 80-100 °C | Kunststoffe nahe $T_g$, Ausgasen |
| Batteriezelle ohne Kühlung | kritisch ab ca. 45-60 °C | beschleunigte Alterung |

---


## Nicht nur Klima: alternde Infrastruktur

**Einsturz der Carolabrücke Dresden (September 2024)**
- Ursache laut Gutachten: **Spannungsrisskorrosion** im Spannstahl, begünstigt durch Chlorideintrag
- Viele Brücken in Deutschland aus den 1960er-80er Jahren mit ähnlichen Werkstoffen
- Werkstoffversagen kündigt sich oft **nicht sichtbar** an

Fragen für die Zukunft:
- Wie verändern Hitze, Feuchte und Salz die Lebensdauer?
- Wie überwachen wir Bauteile (Monitoring, zerstörungsfreie Prüfung)?

---

## Wo geht die Reise hin?

**Werkstoffauswahl wird mehrdimensional**
- ~~nur Festigkeit und Kosten~~ → Festigkeit + Kosten + **CO₂** + **Kreislauffähigkeit** + **Klimaresilienz**

**Technologische Trends**
- Grüner Stahl, Sekundäraluminium, CO₂-reduzierter Zement
- Leichtbau (Faserverbund, hochfeste Stähle) für Mobilität und Windenergie
- Wasserstofftechnik: Werkstoffe gegen **Wasserstoffversprödung**
- Werkstoffe für höhere Temperaturen und längere Lebensdauer
- Recyclinggerechte Konstruktion, digitaler Produktpass
- Simulation und Digitale Zwillinge zur Lebensdauervorhersage

---

## Was heißt das für Sie?

- Kennwerte immer mit **Randbedingungen** lesen: Temperatur, Feuchte, Zeit, Belastungsgeschwindigkeit
- Auslegung für die **gesamte Lebensdauer** - und für das Klima, in dem das Bauteil dann steht
- Der Werkstoff entscheidet über einen großen Teil des CO₂-Fußabdrucks eines Produkts
- Genau diese Grundlagen lernen Sie in dieser Vorlesung: Eigenschaften, Gefüge, Wärmebehandlung, Prüfung

---


## Werkstoffe



Was sind Werkstoffe?


[Werkstoffe im engeren Sinne nennt man Materialien im festen Aggregatzustand, aus denen Bauteile und Konstruktionen hergestellt werden können.](https://de.wikipedia.org/wiki/Werkstoff)



---
## Anwendunggebiete

- Metalle
  - Eisen, Stahl, Gusseisen
  - Nicht Eisen
- Kunststoffe
- Keramiken
- Verbundwerkstoffe

---

![bg fit](../../assets/Figures/material_verbrauch.png)

---

## Gußeisen - Stahl

![bg 60% right](https://upload.wikimedia.org/wikipedia/commons/b/bf/Gu%C3%9Fteil_2007.gif)

![bg 60% vertical](https://upload.wikimedia.org/wikipedia/commons/2/2e/LPD_22_MAR_2010.jpg)

---

## Nicht Eisen Metalle

- Kupfer ist ein sehr guter elektrischer und thermischer Leiter

![bg right 70%](https://images-of-elements.com/copper.jpg)

---

- Magnesium findet im Leichtbau Anwendung 
- Titan und Titanlegierungen 
    - hohe Festigkeit und Warmfestigkeit
    - Korrosionsbeständig
- Nickel
    - Korrosionsbeständigkeit
    - hohe Warmfestigkeit

![bg right 30%](https://images-of-elements.com/magnesium.jpg)
![bg right 30% vertical](https://images-of-elements.com/titanium-crystal.jpg)
![bg right 30%](https://images-of-elements.com/nickel.jpg)

---

## Keramiken

![bg right](https://upload.wikimedia.org/wikipedia/commons/c/ca/Langstab-Isolator_110_kV.jpg)


---

## Gläser

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/1/15/Magnifying_Glass_Photo.jpg)

---

## Faserverbundwerkstoffe

![bg right fit](../../assets/Figures/FKV_Beispiele.png)

---

# Eigenschaften von Werkstoffen
**Welche gibt es?**

---



![bg fit](../../assets/Figures/werkstoffeigenschaften.png)

---

## Mechanische Eigenschaften

Verhalten unter mechanischer Belastung

- Festigkeit, Steifigkeit, Härte
- Duktilität, Zähigkeit
- Ermüdungs- und Verschleißverhalten



---

## Thermische Eigenschaften

Verhalten bei Temperatureinwirkung

- Wärmeleitfähigkeit, Wärmeausdehnung
- spezifische Wärmekapazität
- Schmelz- und Glasübergangstemperatur

---

## Elektrische und magnetische Eigenschaften

- elektrische Leitfähigkeit / spezifischer Widerstand
- Dielektrizität
- magnetische Permeabilität (z. B. ferromagnetisch, paramagnetisch)

---

## Chemische Eigenschaften

- Korrosionsbeständigkeit
- Reaktivität, Beständigkeit gegenüber Medien (Säuren, Laugen, Lösemittel)
- Oxidationsverhalten

---

## Technologische Eigenschaften

Wie gut lässt sich ein Werkstoff verarbeiten?

- Umformbarkeit, Zerspanbarkeit
- Schweißbarkeit, Gießbarkeit
- Härtbarkeit

---

## Ökologische Eigenschaften

- CO₂-Fußabdruck bei Herstellung und Recycling
- Ressourcenverbrauch, Kreislauffähigkeit
- Umweltverträglichkeit über den Lebenszyklus



---

## Soziale Eigenschaften

- Herkunft und Abbaubedingungen der Rohstoffe
- Arbeitsbedingungen in der Lieferkette
- Konfliktrohstoffe, Menschenrechte



---

# Mechanische Eigenschaften
Was sind wichtige Eigenschaften aus Sicht einer Ingenieurin / eines Ingenieurs?


---

# Mechanische Eigenschaften
Was sind wichtige Eigenschaften aus Sicht einer Ingenieurin / eines Ingenieurs?
- Materialverhalten ohne Schädigung
- Ermüdungsverhalten
- Verschleißverhalten
- Temperaturfestigkeit
- Festigkeit
- wann tritt eine Schädigung auf
- Beständigkeit gegen Umwelteinflüsse (Feuchte, UV, Korrosion)
- CO₂-Fußabdruck und Recyclingfähigkeit
- ...

---

## Konzept Spannung - Dehnung
- Detaliert in der technischen Mechanik
$\varepsilon$ - Dehnung
$\sigma$ - Mechanische Spannung

---

## Dehnungen 1D
$$\varepsilon = \frac{\Delta l}{l}$$

Beispiel:
$l_0 = 1m$
$l_1 = 1.01m$
$$\varepsilon = \frac{l_1-l_0}{l_0}=0.01\rightarrow 1\%$$

---

## Thermische Dehnung

$$\varepsilon_{th} = \alpha \cdot \Delta T$$

$$\varepsilon_{gesamt} = \varepsilon_{mechanisch} + \varepsilon_{th}$$

| Werkstoff | $\alpha$ [$10^{-6}$/K] |
|:---|:---|
| Stahl | 12 |
| Aluminium | 23 |
| Beton | 10-12 |
| Thermoplaste | 50-150 |
| CFK (in Faserrichtung) | ca. 0 |

- Unterschiedliche $\alpha$ in Verbunden und Fügestellen → Spannungen bei jedem Temperaturwechsel

---
## Spannungen 1D

$$\sigma = \frac{F}{A}$$

Beispiel:
$F = 100N$
$A = 20mm^2$
$$\sigma = \frac{F}{A} = \frac{100 N}{20 mm^2} = 5 \frac{N}{mm^2}$$

---

# Mehr Dimensionalität

---

## Symmetrien
- isotropie
- transversale isotropie
- orthotropie
- ...
- anisotropie
![bg right 80%](../../assets/Figures/xyz.png)

<!---
- Diskussion; Eigenschaften können richtungsabhängig sein
- Praxisbeispiele
-->

---

## Mechanische Eigenschaften

- die **reversible** Verformung, bei der sofort bzw. eine bestimmte Zeit nach dem Einwirken der äußeren Belastung der verformte Werkstoff seine ursprüngliche Form zurückerhält: elastische und viskoelastische Verformung;

- die **irreversible (bleibende)** Verformung, bei der die Formänderung auch nach dem Einwirken der äußeren Belastung erhalten bleibt: plastische und viskose Verformung;

- der Bruch, d.h. eine durch Entstehen und Ausbreiten von Rissen bewirkte Trennung des Werkstoffes.

---
## Beispiel Stahl

![bg fit right:50%](../../assets/Figures/Stress_strain_ductile.svg)

[Kurvenbestimmung](https://youtu.be/WWAb7Q5DAYw?si=fcnLckvNurSh0LC5)

[Datenblatt Stahl](https://www.stauberstahl.com/fileadmin/Downloads/werkstoffe/Werkstoff-1.2842-Datenblatt.pdf)

<div style="position: absolute; bottom: 10px; right: 0px; color: blue; font-size: 20px;"> 
    <a href="https://commons.wikimedia.org/w/index.php?curid=89891144" style="color: blue;">By Nicoguaro - Own work, CC BY 4.0</a>
</div>

---
# Materialverhalten - reversibel
## Elastizität
- reversibel, energieerhaltend
- Hooksches Gesetz 1D
Normalspannung $\sigma = E\varepsilon$
Schubspannung $\tau = G\gamma$

---

## Grundlagen

- Normaldehnung [-]
$\varepsilon_{mechanisch} = \frac{l - l_0}{l_0}$

- Normalspannung $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\sigma = \frac{F}{A}=E\varepsilon$
E - Elastizitätsmodul, Young's modulus $\left[\frac{N}{m^2}\right]$

- Relevant bspw. bei Verformungsanalysen

![bg right:25%](../../assets/Figures/Normalspannung.gif)


---


## Grundlagen - Querkontraktion

- Querkontraktionszahl [-]
- $\nu = -\frac{\varepsilon_y}{\varepsilon_x}$
für homogene Werkstoffe $0\leq\nu\leq 0.5$
für heterogene Werkstoffe sind anderen Konstellationen denkbar

![bg fit right:25%](https://upload.wikimedia.org/wikipedia/commons/6/65/Querkontraktion_am_einachsig_gezogenen_Stab.png)

- Relevant bspw. bei Pressverbindungen

---

## Grundlagen - Schub

- Schubdehnungen [-]
$\varepsilon = \frac12(\frac{u_x}{l_0}+\frac{u_y}{b_0})=\frac{\gamma}{2}$

- Schubspannung $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\tau = \frac{F_s}{A}= G\gamma$

- Normal- und Schubspannungen sind nicht kompatibel; daher die Vergleichsspannungen 
- G - [Schub-](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper)-, Gleitmodul, Shear modulus $\left[\frac{N}{m^2}\right]$
$G = \frac{E}{2(1+\nu)}$


![bg right:25%](../../assets/Figures/Schubspannung.gif)


- Relevant bspw. bei Torsion (Antriebsstränge, Drehfedern)

---

## Grundlagen - Kompression

$\sigma_h = p = -K \cdot \frac{\Delta V}{V_0}$

$\varepsilon_v = \frac{\Delta V}{V_0} = \varepsilon_1 + \varepsilon_2 + \varepsilon_3$

[Kompressionsmodul](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper) $K = \frac{E}{3(1-2\nu)}$

- Relevant bspw. bei Hydrauliken

![bg right:25%](../../assets/Figures/Kompression.gif)


---


| Werkstoff                         | E [GPa]   | G [GPa] | ν [-]     |
|:----------------------------------|:----------|:--------|:----------|
| Stahl unlegiert                   | 200       | 77      | 0.30      |
| Titan                             | 110       | 40      | 0.36      |
| Kupfer                            | 120       | 45      | 0.35      |
| Aluminium                         | 70        | 26      | 0.34      |
| Magnesium                         | 45        | 17      | 0.27      |
| Wolfram                           | 360       | 130     | 0.35      |
| Gusseisen mit lamellarem Graphit  | 120       | 60      | 0.25      |
| Thermoplaste/Duromere             | 2-5       | 1-2     | ca. 0.35  |
| Elastomere                        | 0.1       | 0.03    | 0.45-0.49 |
| Sperrholz                         | 4-16      | -       | -         |

Achtung: Werte gelten bei **Raumtemperatur**. Bei Kunststoffen kann E zwischen 20 °C und 60 °C deutlich abfallen.

---


## Steifigkeiten
<details>
<summary>Wie Materialeigenschaften den Steifigkeiten zusammen?</summary>

- Material $\cdot$ Querschnitte = Steifigkeit
- Dehn-, Normalsteifigkeit = $EA$
- Biegesteifigkeit = $EI$
- Torsionssteifigkeit = $GI_P$

</details>

![bg fit right:50%](../../assets/Figures/IWES_test.jpg)
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Bildreferenz</a>
</div>


---


## Viskoses Verhalten

- irreversibel
- zeitabhängig, dehnratenabhängig

Federmodel $\sigma = E\epsilon$ 
 - Elastischer Anteil
 - Dargestellt durch Federlemente
<div style="position: absolute; bottom: -10px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../../assets/Figures/spring.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<div style="position: absolute; bottom: -150px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../../assets/Figures/damper.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>


Dämpfer  $\sigma = \eta\dot{\epsilon}=\eta\frac{\partial \epsilon}{\partial t}$ 
- Viskoser Anteil
- Dargestellt durch Dämpferelemente


---
- schnelle Belastung -> Verhalten ist elastisch
- langsame Belastung -> Material fließt
- [schnelle Belastung](https://en.wikipedia.org/wiki/File:Sillyputty.ogv)
- Die Viskosität $\eta$ sinkt mit steigender Temperatur → im Sommer fließt es schneller (Asphalt, Kunststoffbauteile, Klebeverbindungen)



![bg right:30% fit](https://upload.wikimedia.org/wikipedia/commons/f/f3/Silly_putty_dripping.jpg)

---

## Härte

Widerstand eines Werkstoffs gegen das Eindringen eines härteren Prüfkörpers

**Abhängigkeit von:**
- Bindungsart und Bindungsstärke
- Kristallstruktur
- Gefüge und Korngröße
- Legierungselemente
- Wärmebehandlung

**Bedeutung:**
- Verschleißbeständigkeit
- Bearbeitbarkeit

---

# Materialverhalten - irreversibel

---

## Festigkeit

[Die Festigkeit eines Werkstoffes beschreibt die Beanspruchbarkeit durch mechanische Belastungen, bevor es zu einem Versagen kommt, und wird angegeben als mechanische Spannung $\left[N/m^2\right]$. Das Versagen kann eine **unzulässige Verformung** sein, insbesondere eine **plastische (bleibende) Verformung** oder auch ein **Bruch**.](https://de.wikipedia.org/wiki/Festigkeit)


>Wichtig: Festigkeit $\neq$ Steifigkeit

---



## Plastizität

- [Schmieden](https://youtu.be/AxLszR6fkLM?si=k6A9aOVfQceOK9v0&t=80)
- [Walzen](https://www.youtube.com/watch?v=WOTO64HgnXc)


---


## Duktilität

### Brucheinschnürung

$$Z = \frac{A_0 - A_f}{A_0} \cdot 100\%$$


- A₀ = Ausgangsquerschnittsfläche [mm²]
- A_f = Querschnittsfläche bei Bruch [mm²]
- Z = Brucheinschnürung [%]

Die Brucheinschnürung beschreibt die **relative Querschnittsverringerung** eines Materials bei Zugbelastung bis zum Bruch.

---

## Duktilitätsbewertung

### Interpretation der Brucheinschnürung

| Z-Wert | Duktilität | Materialverhalten |
|--------|------------|-------------------|
| Z < 5% | Spröde | Keramiken, Gusseisen |
| 5% ≤ Z < 20% | Mäßig duktil | Hochfeste Stähle |
| 20% ≤ Z < 50% | Duktil | Baustähle |
| Z ≥ 50% | Sehr duktil | Reinkupfer, Aluminium |

---

## Bedeutung

**Hohe Brucheinschnürung (Z > 40%)** bedeutet:
- Material kann große plastische Verformungen ertragen
- Gute Umformbarkeit (Schmieden, Tiefziehen)
- Bruchwarnung durch sichtbare Einschnürung
- Hohe Energieabsorption vor dem Versagen

**Niedrige Brucheinschnürung (Z < 10%)** bedeutet:
- Sprödes Versagen ohne Vorwarnung
- Geringe Umformbarkeit
- Wenig Energieabsorption

---

## Zähigkeit (Brucharbeit)

![bg fit right:50%](../../assets/Figures/Stress_strain_ductile.svg)


**Wahre Dehnung und Spannung**

$$\varepsilon_{true} = \ln\left(\frac{L}{L_0}\right) = \ln(1 + \varepsilon_{nom})$$

$$\sigma_{true} = \sigma_{nom} \cdot (1 + \varepsilon_{nom}) = \frac{F}{A}$$

- F = Kraft
- A = aktuelle Querschnittsfläche

---

### Zähigkeit als Energieabsorption

$$U = \int_0^{\varepsilon_f} \sigma_{true} \, d\varepsilon_{true}$$

- U = spezifische Zähigkeit [J/m³]
- ε_f = Bruchdehnung

![bg fit right:50%](../../assets/Figures/Stress_strain_ductile.svg)

<div style="position: absolute; bottom: 10px; right: 0px; color: blue; font-size: 20px;"> 
    <a href="https://commons.wikimedia.org/w/index.php?curid=89891144" style="color: blue;">By Nicoguaro - Own work, CC BY 4.0</a>
</div>


---


Ein zäher Werkstoff kombiniert:
- **Hohe Festigkeit** (σ) → widersteht hohen Spannungen
- **Hohe Duktilität** (ε) → verformt sich stark vor dem Bruch

**Zähigkeit = Überlebensfähigkeit eines Materials unter extremen Bedingungen**

---

## Zähigkeitswerte typischer Materialien

| Material | Zähigkeit [MJ/m³] | Charakteristik |
|----------|-------------------|----------------|
| Glas | 0.01 | Extrem spröde |
| Gusseisen | 1-3 | Spröde |
| Hochfester Stahl | 50-100 | Fest, mäßig duktil |
| Baustahl | 100-200 | Optimal zäh |
| Aluminium | 70-200 | Leicht und zäh |
| Kupfer | 200-400 | Sehr duktil |
| Gummi | 10-100 | Elastisch-duktil |

---

## Rückblick: Klima und Kennwerte

- Steifigkeit, Festigkeit, Duktilität und Zähigkeit hängen von **Temperatur** und **Zeit** ab
- Hitze → Kriechen, Erweichen, schnellere Alterung
- Kälte → Versprödung (z. B. Stähle unterhalb der Übergangstemperatur)
- Temperaturwechsel → Wärmespannungen und Ermüdung
- Nachhaltige Konstruktion = **richtiger Werkstoff + lange Lebensdauer + Kreislauffähigkeit**

---

## Referencen
<a id="Referenzen"></a>

Rainer Schwab: Werkstoffkunde und Werkstoffprüfung für Dummies, 2019; ISBN-10 352771538X

Deutscher Wetterdienst: Klimawandel in Deutschland, https://www.dwd.de

Copernicus Climate Change Service: Global Climate Highlights 2024, https://climate.copernicus.eu

IPCC (2022): AR6 WGIII, Kapitel 11 - Industry, https://www.ipcc.ch/report/ar6/wg3/

Umweltbundesamt: Klimafolgen und Anpassung, https://www.umweltbundesamt.de