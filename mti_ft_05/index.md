---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: MTI - Legierungsbildung
author: Christian Willberg
---



<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
  mermaid.initialize({ startOnLoad: true });
</script>

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
</style>

<style>
footer {
    font-size: 14px; /* Ändere die Schriftgröße des Footers */
    color: #888; /* Ändere die Farbe des Footers */
    text-align: right; /* Ändere die Ausrichtung des Footers */
}
</style>


## Vorlesung MTI - Legierungsbildung
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](https://wiki.arnold-horsch.de/images/6/6e/EKD-1.jpg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen



---

<!--paginate: true-->

# Inhalte
- Grundbegriffe
- Kristallbildung
- Zustandsdiagramme
![bg right 70%](../assets/QR/mti_ft_05.png)

---

# Begriffe

## Legierung
- von "ligare" - zusammenbinden, verbinden, vereinigen
- Gemisch aus mehreren Atomsorten (_Komponenten_) mit _metallischem Charakter_
- Komponenten
  - meist metallisch (Cu, Ni)
  - nicht metallisch (C, P, S, N, O)
- Variationen
  - welche Komponenten
  - Zahl der Komponenten
  - Konzentration der Komponenten
---

## Chemische Zusammensetzung oder Konzentration
**Massenanteil, Gewichtsanteil, Massenprozent (Synonym)**
$\frac{m_1}{\sum_i m_{i}}\cdot 100 = m_{1-rel}$ in [%]
Bsp. $m_{Cu-rel}=\frac{m_{Cu}}{m_{Cu}+m_{Fe}}\cdot 100$

Massen $m$ von Komponenten sind unterschiedlich

**Atomanteil**

$\frac{n_1}{\sum_i n_{i}}\cdot 100 = n_{1-rel}$ in [%]
Bsp. $n_{Cu-rel}=\frac{n_{Cu}}{n_{Cu}+n_{Fe}}\cdot 100$

Wenn Massen $m$ von Komponenten ähnlich sind, dann sind $n_{rel}$ und $m_{rel}$ gleich. 

---

## Übung

1 kg Legierung 25% Ni - 75% Cu.

Wieviel Masse hat Cu und Ni für den Massenanteil und den Atomanteil?

---
## Lösung

<details>
<summary>Massenanteil</summary>
<div>

$m_{Ni}=0.75\cdot 1kg = 0.75 kg$
$m_{Cu}=0.25\cdot 1kg = 0.25 kg$
</div>
</details>

<details>
<summary>Atomanteil</summary>
<div>

$A_{Cu}= 63.54 u$ - Atomare Masseneinheit $u = 1.66\cdot 10^{-27}kg$
$A_{Ni}= 58.69 u$
$m = n_{Cu}A_{Cu}+n_{Ni}A_{Ni}$
$n_{Cu} = 0.25n$, $n_{Ni} = 0.75n$
$m=(0.25A_{Cu}+0.75A_{Ni})n$
$n = \frac{m}{0.25A_{Cu}+0.75A_{Ni}}=1.00565E+25$
$m_{Cu}=n_{Cu}A_{Cu}=0.2449kg$
$m_{Ni}=n_{Ni}A_{Ni}=0.7551kg$
</div>
</details>

---

## Phase

- Bekannt im Bezug auf den Aggregatzustand (fest, flüssig, gasförmig, plasmaförmig)

**Allgemeine Definition**
Unter Phase versteht man einen chemisch und physikalisch gleichartigen homogenen Bestandteil einer Legierung oder von Materie überhaupt.

---


<details>
<summary>Einphasigkeit</summary>
<div>
- reines Aluminium
- reines Eisen
- Wasser
</div>
</details>


<details>
<summary>Zweiphasigkeit</summary>
<div>
- Nebel
- übersättigte Lösungen
</div>
</details>
<details>
<summary>Mischkristall</summary>
<div>
Ein Mischkristall ist ein chemisch homogener, gleichartiger Kritall, der aus mehreren Atomsorten aufgebaut ist.
</div>
</details>

![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/a/a8/114_once_an_iceberg_now_a_Growler_and_a_scupture_V-P_%28cropped%29.jpg)

![bg vertical 60%](https://upload.wikimedia.org/wikipedia/commons/4/4e/Nuclear_Power_Plant_Cattenom.jpg)

---

## Mischkristalle - Arten

![bg right fit](http://anorganik.chemie.vias.org/img/mischkristalle.png)

Subsitutionsmischkristall
- ähnlicher chemischer Charakter
- ähnlicher Durchmesser
- gleiches Kritallgitter

Einlagerungsmischkristall
- kleinere Atome
- in Lücken des Kristallgitters eingelagert (Einlagerungs- oder Zwischengitteratome) 
- zweite Komponente ist gelöst

_Beide Arten sind einphasig._

---

## Intermetallische Phase

-	meist komplizierter Gitteraufbau, unabhängig von Ausgangsgittern
- geordnete Einlagerungsstrukturen
- keine Verbindung im chemischen Sinne (Gesetz der konstanten und multiplen Proportionen gilt nicht)
- vorherrschender Bindungstyp: Metallbindung, aber Atom- und Ionenbindungsanteile „zugemischt“

Eigenschaft: hart und sehr spröde


---


# Gefüge der Werkstoffe

- durch Art, Größe, Form und Orientierung und Anordnung der einzelnen Bestandteile (Phasen), wie Kristallite (Körner), amorphe Bereiche, Verstärkungs- bzw. Füllstoffe, charakterisiert
![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/a/a7/Vanadium-bar.jpg)
![bg vertical 60%](https://upload.wikimedia.org/wikipedia/commons/5/5e/AlubronzeCuAl20v500.png)

---

## Entstehung des Gefüges

Schmelze  → Abkühlung / Unterkühlung
↓
Keimbildung (homogen + heterogen)
↓
Keimwachstum → Kristallisation
↓
Kristallitbildung (Kornbildung mit Korngrenzen)
↓
∑ aller Körner und Korngrenzen 	=>    Gefüge

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/a/a7/Gefuegebildung.png)

---

## Keimbildung
- Erstarren findet nicht gleichmäßig statt -> Bildung von Keimen
- homogen (arteigenen) oder heterogen (artfremden) 
- Wachstum der Keime (Kristallwachstum)  bis gesamte Schmelze erstarrt ist
- Es bestehen Zusammenhänge zwischen der Keimzahl (KZ) und der Kristallisationsgeschwindigkeit (KG) einer-seits und der Unterkühlung ΔT andererseits.

---
## Einflussparameter auf die Ausbildung der Korngröße
![](../assets/Figures/Korngroesse.png)
a) → feinkörniges Gefüge  $\qquad$	b)  → grobkörniges Gefüge


- große Zahl von Keimen -> feinkörniges Gefüge
- schnelles Kristallwachstum und geringe KZ -> grobkörniges Gefüge

---
## Begriffe
Korn 
- Keime haben Wachstum abgeschlossen und stoßen aneinander
- Kristallorientierung zwischen benachbarten Körnern ist in der Regel unterschiedlich
- Form und Größe wird durch den Wärmfluss bestimmt
  - gleichmäßig in alle Richtungen - _globulistisch_
  - Vorzugsrichtung des Wärmeflusses - _transkristalline Erstarrung_

Korngrenze 
- Übergangsflächen zwischen Körnern


---

## Gießen oder Stranggießen

- Beim Gießen oder Stranggießen in eine Metallform (Kokille) bildet sich eine Gussstruktur in drei Zonen, meist mit einer deutlichen Abgrenzung zueinander:

---

1.	Feinkörnige globulare Randzone

- starke Unterkühlung der Schmelze an der Kokillenwand
- Ausbildung von zahlreichen Kristallkeime -> kleine, gleichmäßige Kristallite

![bg right 80%](../assets/Figures/Kokille.png)

---

2.	Transkristallisationszone mit stängelförmigen, sehr groben Kristalliten

- gerichtetes Wachstum von Kristallite (Stängelkristalle), bei denen die kristallografische Orientierung mit der Richtung des Wärmegefälles übereinstimmt;
- die dadurch aufgetretene Orientierung => Gusstextur 

![bg right 80%](../assets/Figures/Kokille.png)

---

3.	Globulare Kernzone
- Verunreinigungen, werden von den Stängelkristallen vor sich her geschoben und reichern sich  im Kern an
- hohen Anzahl von artfremden Keimen 
- globulare feinkörnige Kernzone 
- Bei sehr reinen Metallen liegt in der dritten Zone allerdings ein grobkörniges Gefüge vor

![bg right 80%](../assets/Figures/Kokille.png)

---
 
# Gefügenachweise

- Im Allgemeinen sind die einzelnen Kristallite (Körner) in einem Werkstoff nicht ohne weiteres sichtbar. 
- Für werkstoffwissenschaftliche Untersuchungen ist es jedoch notwendig, die vorhandene Mikrostruktur zu analysieren. 
- Arbeitsschritte:
  - gezielte Probenentnahme 
  - Schleifen und Polieren der Probe
  - Ätzen der Oberfläche

---

## Mikroschliffe
- sorgfältig präparierte Schlifffläche kann mittels eines Licht- oder Elektronenrastermikroskops betrachtet werden. 
- Das Elektronenrastermikroskop weist neben der wesentlich stärkeren Auflösung auch eine höhere Schärfentiefe auf.


---

## Ätzungen
Das Ätzen zur Gefügeentwicklung kann auch als ein Korrosionsvorgang bezeichnet werden.

Korngrenzenätzung
- bevorzugtes auflösen von Korngrenzen

![bg right 50%](../assets/Figures/Korngrenzenaetzung.png)

---

Kornflächenätzung
- nebeneinander liegende Kornschnittflächen werden unterschiedlich  stark aufgeraut bzw. mit Oxidschichten bedeckt
- Körner reflektieren das Licht unterschiedlich 


![bg right 60%](../assets/Figures/Kornflaechenaetzung.png)

---

## Makroschliffe

Mit Hilfe der Makroätzungen können nur Gefügeerscheinungen untersucht werden, die mit bloßem Auge oder einer Lupe zu erkennen sind. 
Folgende Nachweise sind möglich:
-	Seigerungen und deren Lokalisierung: Ätzungen nach Heyn und Oberhoffer oder Baumannabdruck
-	Güte von Schweißverbindungen: Adlerätzung
-	Entwicklung von Kraftwirkungslinien nach plastischer Verformung: Ätzung nach Fry

---

## Begriffe für die qualitative und quantitative Beschreibung von Gefügen

Metallographie - Metalle
Keramographie - Keramiken
Plastographie - Polymerwerkstoffe


---

# Zustandsdiagramme

- auch Phasendiagramm -phase diagram-
- stellt den Zustand von Legierungen und Stoffgemischen in Abhängigkeit von der chemischen Zusammensetzung, Temperatur und ggf. dem Druck dar
- Zustand meint die auftretenden Phasen (alle festen, flüssige, gasförmige)


---
## Achtung!

Zustandsdiagramme sind Gleichgewichtsdiagramme. Sie haben nur Gültigkeit bei einer sehr lang-samen Abkühlung aus dem schmelzflüssigen Zustand bis hin zur Raumtemperatur, bei der sich das Gleichgewicht zwischen den Phasen (an bzw. zwischen den Phasengrenzlinien) einstellen kann. 

---


![bg fit 70%](../assets/Figures/Zustandsdiagramm.png)
![bg fit 70%](../assets/Figures/Zustandsdiagramm_3.png)

---

## Löslichkeiten

<details>
<summary>Unlöslich</summary>
<div>
- zu große Unterschiede bei den Atomdurchmessern
- Kristallgitter weichen voneinander ab
- Komponenten sind chemisch sehr unterschiedlich
</div>
</details>


<details>
<summary>Löslich</summary>
<div>
- kaum Unterschiede bei den Atomdurchmessern
- Kristallgitter sind identisch
- Komponenten sind chemisch sehr nah beieinander
</div>
</details>

---
## Beispiel aus der eigenen Erfahrung
- Ölfilm auf Wasser ist nicht löslich und es findet eine Trennung aufgrund der unterschiedlichen Dichte statt
- Salz- / Zuckerkristalle in Wasser werden vollständig gelöst und ist nicht mehr sichtbar


---


# Zustandsdiagramme (ZSD)

---


- Die Phasen bzw. Phasengrenzlinien können als ein Zustandsdiagramm dargestellt werden
- Die Anzahl der miteinander im Gleichgewicht stehenden Phasen ist gesetzmäßig verknüpft mit der Zahl der an der Legierungsbildung beteiligten Komponenten und der Zahl der Freiheitsgrade über die Gibbsche Phasenregel
- Ein Freiheitsgrad beinhaltet die mögliche Veränderung von Zustandsvariablen, ohne das Gleichgewicht, d.h. die Anzahl der Phasen, zu ändern
- Die Anzahl der frei wählbaren Zustandsvariablen wird  nach der Phasenregel bestimmt

---


## Realdiagramme
- die bisherigen Digramme waren Idealdigramme und treten so nicht wirklich auf
- Eisen-Kohlenstoff-Diagramm (EKD) ist das wichtigste Realdiagramm
- Grundmetall ist Eisen -> Stahl oder Eisenguss
- das EKD setzt sich aus den Idealdiagrammen - dem peritektischen, eutektischen und eutektoiden Teildiagramm - zusammen

---

- Man kann je nach Erscheinungsform des Kohlenstoffs zwischen dem stabilen System Fe-C, in dem Kohlenstoff als Graphit, und dem metastabilen System Fe-Fe3C, in dem Kohlenstoff gebunden als Fe3C (intermediäre Phase Zementit) vorliegt, unterscheiden. 
- Stabil bedeutet, dass der Kohlenstoff in Form von Graphit nicht weiter zerlegt werden kann, Fe3C aber bei langzeitigem Glühen in Eisen und Temperkohle zerfällt. 
- Das metastabile System stellt gewissermaßen ein relatives Minimum der Gesamtenergie des Systems dar. Für techni-sche Belange kann es als „hinreichend stabil“ bewertet werden.

---



# Eisen-Kohlenstoffdiagramm (EKD)

- wichtigstes ZSD
- Eisenist der wichtigste Werkstoff im Maschinenbau. 

Gründe sind
- geringe Kosten
- hohe Festigkeit und elastische Steifigkeit
- Vielzahl von möglichen Legierungen
- Verfügbarkeit
- Gießbarkeit, Schweißbarkeit, etc.

[Erklärvideo für das Eisen Kohlenstoff Diagramm](https://www.youtube.com/watch?v=oJqvnKhnsg0&t=1s)

---

![bg 70%](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

---


# Phasen- und Gefüge im System-Eisen-Kohlenstoff
# Mischkristalle

---

![bg 80%](https://www.tec-science.com/wp-content/uploads/2021/02/de-eisen-kohlenstoff-diagramm-anteile-vollstaendig.jpg)

---
## $\alpha$-Mischkristall (krz)
- Gefügebezeichnung Ferrit ($\alpha$-Ferrit)
- rein ferritisches Gefüge besitzt geringe Härte/Festigkeit, aber hohe Duktilität (Zähigkeit)
- Max. C-Löslichkeit: nur 0,02 % 
![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/b/be/Ductility.svg)

---
## Exkurs Härte / Festigkeit
Im Detail kommt das später.
Festigkeit 
- Maß der maximalen Beanspruchbarkeit bis Versagen
- Kraft pro Querschnittsfläche

Härte 
- mechanischer Widerstand gegen mechanisches Eindringung eines anderen Körpers 
- Maß für die Verschleißbeständigkeit


---

## $\delta$-Mischkristall (krz)
 - $\delta$-Ferrit ist nur oberhalb von 1392°C stabil  
 - technisch von untergeordneter Bedeutung
 - Max. C-Löslichkeit: 0.12 %

---

## $\gamma$-Mischkristall (kfz)

- Gefügebezeichnung Austenit
- scheidet sich oberhalb der G-S-E-Linie  aus; 
  - durch Legierungszusätze (Ni, Mn) und Abschrecken auch bei Raumtemperatur beständig (austenitische Stähle)
- unmagnetisch, zäh und durch Kaltverfestigung härtbar (Mangan-, Nickel-, Chrom-Nickel-Stähle)
- hohe Warmfestigkeit, gute Korrosions- und Zunderbeständigkeit
- Max. C-Löslichkeit: 2.06 %


---

## Intermediäre Phase
Zementit (Eisencarbid Fe3C); 6.67 Masse-% C-Gehalt

- Primärzementit:	
primäre Kristallisation aus der Schmelze (Linie CD)

- Sekundärzementit: 
Ausscheidung aus dem Austenit (Linie ES)

- Tertiärzementit:	
Ausscheidung aus dem Ferrit (Linie PQ)


![bg right fit](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

---

## Kristallstruktur

![bg right 80%](../assets/Figures/Zementit.png)

- orthorhombischen Elementarzelle 
  -  zwölf Eisen- und vier Kohlenstoffatome
  - die Kohlenstoffatome sind relativ unregelmäßig (zweifach überkappt trigonal-prismatisch) von acht Eisenatomen umgeben

---

- Zementit ist hart und spröde
- überwiegende Zahl der technischen Eisen-Kohlenstoff-Legierungen erstarrt unter Bildung von Zementit

![bg right 80%](../assets/Figures/Zementit.png)

---

# Phasengemische/Gemische von Mischkristallen

## Perlit (Eutektoid)
- Gefüge aus Zementit und Ferrit (= Phasengemisch)
- entsteht durch den "eutektoiden" Zerfall des Austenits ($\gamma$-Mischkristall) mit 0.8% C bei 723°C
- eutektoider Punkt S: hier liegen 100% Perlit vor
- relativ hohe Härte, relativ hohe Festigkeit, schlechte Umformbarkeit, geringe Zähigkeit

---

- lamellenartiger Aufbau (Schichten von $\alpha$-Mk und Fe3C-Kristallen) .
- häufig spricht man von einer "Perlitstufe", die - gemessen am Lamellenabstand - in Perlit, fein-streifigen  und feinststreifigen Perlit unterteilt wird. 


![bg right](../assets/Figures/perilitisches_gefuege.png)

---

## Ledeburit (Eutektikum) 

- Gefüge aus Austenit und Zementit bzw. „zerfallenem“ Austenit und Zementit (= Phasengemisch), Kohlenstoffgehalt 4,3 %, Schmelztemperatur 1147°C 
- Eutektischer Punkt C: hier liegen 100% Ledeburit vor
- Unterscheidung zwischen Ledeburit I (dicht unterhalb 1.147 °C)
  -  um ein Gefüge aus Austenit und Zementit handelt

- Ledeburit II (Raumtemperatur)
  - aus Zementit I mit ankristallisiertem Sekundärzementit (aus dem Austenit bei sinkender Temperatur ausgeschieden) und (bei langsamer Abkühlung) aus Perlit
  -  Der Perlit entsteht durch den eutektoiden Zerfall des Austenits aus dem Ledeburit I bei 723 °C. 

---
- bei schnellerer Abkühlung kann anstelle des Perlit auch Bainit bzw. bei sehr schneller Abkühlung Martensit vorliegen. 
- Ledeburit ist schlecht umformbar, hat sehr geringe Duktilität. 
 - bei Raumtemperatur  feines Gemenge von Fe3C-Kristalliten und Perlitbereichen im Auflichtmikroskop als charakteristische Pantherfellstruktur sichtbar.

![bg right](../assets/Figures/ledeburit_gefuege.png)


---

Die Eigenschaften der Legierung (z.B. Stahl, Gusseisen) wird durch die Art der beteiligten Phasen (z.B. $\alpha$-Mk, Fe3C), ihren mengenmäßigen Anteil (z. B. abhängig vom C-Gehalt) und die Art ihrer Verteilung im Gefüge bestimmt.

---
# Phasen- und Gefüge im Ungleichgewichtszustand

- Gleichgewichtszustände durch Diffusionsvorgänge dominiert
- bei schnelleren Temperaturänderungen wird die Kohlenstoffdiffusion, die zur Entmischung des Austenits erforderlich ist, behindert 
- Dadurch entstehen auch neuartige Gefügebestandteile, die nicht mehr dem Gleichgewichtszustand entsprechen
- führt zu "zwangsgelöstem" Kohlenstoff
---

## Martensit
- raumzentriertes Gitter tetragonal verzerrt („verspanntes Ferritgitter“)
- meist feinnadeliges, sehr hartes und sprödes Gefüge
- der im krz-Gitter des $\alpha$-Fe zwangsgelöste Kohlenstoff verzerrt das Gitter und weitet es tetragonal auf („diffusionsloses Umklappen“). 

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/f/fa/Steel_035_water_quenched.png)

---

## Bainit  

- anders als bei der Bildung von Martensit sind hier Umklappvorgänge im Kristallgitter und Diffusionsvorgänge gekoppelt
-  bildet sich im Temperaturbereich zwischen der Perlit- und der Martensitstufe bei Abkühlungsgeschwindigkeiten (für Martensitbildung zu niedrig; für die Perlitbildung zu hoch)


![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/0/00/522OB80Si10_450.jpg)

---
 ## Bainit  

- reiner Bainit lässt sich nur durch isotherme Abkühlung, z.B. beim Warmbadhärten, erzielen. 
- Vorteilhaft, wo bei einer Vergütung durch Abschrecken und Anlassen eine Härterissgefahr besteht. 
- Es hat sehr gute Festigkeits- und Zähigkeitseigenschaften.

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/0/00/522OB80Si10_450.jpg)

---

# Eisen-Kohlenstoff-Legierungsbezeichnungen

| Kohlenstoffgehalt (Masse-%) | Bezeichnung               | Typ                                  |
|-----------------------------|---------------------------|--------------------------------------|
| 0.02 < C < 0.8              | (Kohlenstoff-) Stahl       | untereutektoide Stähle               |
| C = 0.8                     | (Kohlenstoff-) Stahl       | eutektoide Stähle                    |
| 0.8 < C < 2.06              | (Kohlenstoff-) Stahl       | übereutektoide Stähle                |
| 2.06 < C < 4.3              | Gusseisen                 | untereutektische Gusseisen           |
| C = 4.3                     | Gusseisen                 | eutektische Gusseisen                |
| 4.3 < C < 6.67              | Gusseisen                 | übereutektische Gusseisen            |

---

![bg fit](../assets/Figures/Technische%20Werkstoffe%20des%20Systems%20Eisen-Eisencarbid_Seidel.png)


---

- Weiterhin wird unterschieden zwischen dem schwarzen Gusseisen (Grauguss), in dem der überschüssige Kohlenstoff in Form von Graphit, und dem weißen Gusseisen, in dem der Kohlenstoff in Form von Zementit vorkommt 
- Mit zunehmendem C-Gehalt steigen die Festigkeit und Härtbarkeit des Stahles, wogegen seine Dehnung, Schmiedbarkeit, Schweißbarkeit und Bearbeitbarkeit (durch spanabhebende Werkzeuge) verringert werden
- Der Korrosionswiderstand gegenüber Wasser, Säuren und heißen Gasen wird durch den Kohlenstoff praktisch nicht beeinflusst. 
- Für Kohlenstoffgehalte unter 0.25 Masse-% sind Stähle gut schweißbar


---

## Referencen
<a id="Referenzen"></a>

Rainer Schwab: Werkstoffkunde und Werkstoffprüfung für Dummies, 2019; ISBN-10 352771538X
[Grundlagen der Metallkunde](https://wiki.arnold-horsch.de/index.php/Grundlagen_der_Metallkunde)




