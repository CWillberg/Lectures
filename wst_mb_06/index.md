---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Vorlesung Gusseisen und Stahl
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
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>


## Vorlesung Werkstofftechnik - Phasen- und Gefüge im System-Eisen-Kohlenstoff
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](https://wiki.arnold-horsch.de/images/6/6e/EKD-1.jpg)

Kontakt: christian.willberg@h2.de




---

<!--paginate: true-->

![bg right 70%](../assets/QR/wst_mb_08.png)

[Molekulardynamische Simulation](https://youtu.be/oBjEbDyoIaQ?si=vFq98n2SPjwydCGd&t=115)

---

# Realdiagramme

---

## Realdiagramme
- die bisherigen Digramme waren Idealdigramme und treten so nicht wirklich auf
- Eisen-Kohlenstoff-Diagramm (EKD) ist das wichtigste Realdiagramm
- Grundmetall ist Eisen -> Stahl oder Eisenguss
- das EKD setzt sich aus den Idealdiagrammen - dem peritektischen, eutektischen und eutektoiden Teildiagramm - zusammen

---




# Eisen-Kohlenstoffdiagramm (EKD)

- wichtigstes ZSD
- Eisen ist der wichtigste Werkstoff im Maschinenbau. 

Gründe sind
- geringe Kosten
- hohe Festigkeit und elastische Steifigkeit
- Vielzahl von möglichen Legierungen
- Verfügbarkeit
- Gießbarkeit, Schweißbarkeit, etc.

[Erklärvideo für das Eisen Kohlenstoff Diagramm](https://www.youtube.com/watch?v=oJqvnKhnsg0&t=1s)



---


- Man kann je nach Erscheinungsform des Kohlenstoffs zwischen dem stabilen System Fe-C, in dem Kohlenstoff als Graphit, und dem metastabilen System Fe-Fe$_3$C, in dem Kohlenstoff gebunden als Fe$_3$C (intermediäre Phase Zementit) vorliegt, unterscheiden

---

![bg 70%](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

---
## Wichtige Gleichgewichtslinien

ABCD 	Liquiduslinie			
AHJECF 	Soliduslinie			
ECF 		Eutektikale			
PSK 		Eutektoide			
ES, PQ		Sättigungslinien				MOSK		Curie-Linie
QPSECD 	Bildung/Auflösung Fe$_3$C	
![bg right fit](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

---

## Punkte im Zustandsdiagramm
S - eutektoider Punkt
C - eutektischer Punkt
G -	$\alpha$ / $\gamma$ - Umwandlungspunkt des reinen Eisens
E -	Punkt max. C-Löslichkeit im $\alpha$ - MK
P - Punkt max. C-Löslichkeit im $\gamma$ - MK
u. a. m. (vgl. Fe-Fe$_3$C - Diagramm)

![bg right fit](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)



---

# Phasen- und Gefüge im System-Eisen-Kohlenstoff
# Mischkristalle

---


![bg fit](https://www.tec-science.com/wp-content/uploads/2021/02/de-legierungstypen-einteilung-loeslich-unloeslich.jpg)

![bg  fit](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

---

![bg fit](https://www.tec-science.com/wp-content/uploads/2021/02/de-legierungstypen-einteilung-loeslich-unloeslich.jpg)

![bg  fit](../assets/Figures/EKD_farbe.png)


---
## $\alpha$-Mischkristall (krz)
- Gefügebezeichnung Ferrit ($\alpha$-Ferrit)
- rein ferritisches Gefüge besitzt geringe Härte/Festigkeit, aber hohe Duktilität (Zähigkeit)
- Max. C-Löslichkeit: nur 0,02 % 
![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/b/be/Ductility.svg)

---

## Härte / Festigkeit

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

![bg right fit](../assets/Figures/EKD_farbe.png)

---

## $\gamma$-Mischkristall (kfz)

- Gefügebezeichnung Austenit
- scheidet sich oberhalb der G-S-E-Linie  aus; 
  - durch Legierungszusätze (Ni, Mn) und Abschrecken auch bei Raumtemperatur beständig (austenitische Stähle)

![bg right fit](../assets/Figures/EKD_farbe.png)

---

- unmagnetisch, zäh und durch Kaltverfestigung härtbar (Mangan-, Nickel-, Chrom-Nickel-Stähle)
- hohe Warmfestigkeit, gute Korrosions- und Zunderbeständigkeit
- Max. C-Löslichkeit: 2.06 %

![bg right fit](../assets/Figures/EKD_farbe.png)

---
## Austenit

- bezeichnet die kubisch-flächenzentrierte Modifikation (Phase) des reinen Eisens und seiner Mischkristalle
- eine hohe Löslichkeit von Kohlenstoffatomen 

![bg right fit](../assets/Figures/EKD_farbe.png)

---

## Intermediäre Phase
Zementit (Eisencarbid Fe$_3$C); 6.67 Masse-% C-Gehalt


![bg right fit](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

---

## Metastabile Systeme

- meta-stabil ist Fe$_3$C
- Stabil ist Graphit


![](../assets/Figures/meta-stabil.png)

![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/5/54/GraphitGitter4.png)

---

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
  - die Kohlenstoffatome sind relativ unregelmäßig von acht Eisenatomen umgeben

---

- Zementit ist hart und spröde
- überwiegende Zahl der technischen Eisen-Kohlenstoff-Legierungen erstarrt unter Bildung von Zementit

![bg right 80%](../assets/Figures/Zementit.png)

---

![bg 60%](https://upload.wikimedia.org/wikipedia/commons/a/ac/Primaerzementit.jpg)

---

# Phasengemische/Gemische von Mischkristallen

---

## Perlit 
- Gefüge aus Zementit und Ferrit (= Phasengemisch)
- entsteht durch den "eutektoiden" Zerfall des Austenits ($\gamma$-Mischkristall) mit 0.8% C bei 723°C
- eutektoider Punkt S: hier liegen 100% Perlit vor
- relativ hohe Härte, relativ hohe Festigkeit, schlechte Umformbarkeit, geringe Zähigkeit

![bg right fit](https://upload.wikimedia.org/wikipedia/de/c/c8/Perlit.png)

---

- lamellenartiger Aufbau (Schichten von $\alpha$-Mk und Fe$_3$C-Kristallen) .
- häufig spricht man von einer "Perlitstufe", die - gemessen am Lamellenabstand - in Perlit, fein-streifigen  und feinststreifigen Perlit unterteilt wird. 


![bg right](../assets/Figures/perilitisches_gefuege.png)

---

## Ledeburit

- Gefüge aus Austenit und Zementit bzw. „zerfallenem“ Austenit und Zementit (= Phasengemisch), Kohlenstoffgehalt 4,3 %, Schmelztemperatur 1147°C 
- Eutektischer Punkt C: hier liegen 100% Ledeburit vor
- Unterscheidung zwischen Ledeburit I (dicht unterhalb 1.147 °C)
  -  um ein Gefüge aus Austenit und Zementit handelt

---

- Ledeburit II (Raumtemperatur)
  - aus Zementit I mit ankristallisiertem Sekundärzementit (aus dem Austenit bei sinkender Temperatur ausgeschieden) und (bei langsamer Abkühlung) aus Perlit
  -  Der Perlit entsteht durch den eutektoiden Zerfall des Austenits aus dem Ledeburit I bei 723 °C. 

---

- bei schnellerer Abkühlung kann anstelle des Perlit auch Bainit bzw. bei sehr schneller Abkühlung Martensit vorliegen. 
- Ledeburit ist schlecht umformbar, hat sehr geringe Duktilität. 
 - bei Raumtemperatur  feines Gemenge von Fe$_3$C-Kristalliten und Perlitbereichen im Auflichtmikroskop als charakteristische Pantherfellstruktur sichtbar.

![bg right](../assets/Figures/ledeburit_gefuege.png)



---

# Phasen- und Gefüge im Ungleichgewichtszustand

- Gleichgewichtszustände sind durch Diffusionsvorgänge dominiert
- bei schnelleren Temperaturänderungen wird die Kohlenstoffdiffusion, die zur Entmischung des Austenits erforderlich ist, behindert 
- Dadurch entstehen auch neuartige Gefügebestandteile, die nicht mehr dem Gleichgewichtszustand entsprechen
- führt zu "zwangsgelöstem" Kohlenstoff

## Tauchen nicht im Phasendiagramm auf!

---

## Martensit
- raumzentriertes Gitter tetragonal verzerrt („verspanntes Ferritgitter“)
- meist feinnadeliges, sehr hartes und sprödes Gefüge
- der im krz-Gitter des $\alpha$-Fe zwangsgelöste Kohlenstoff verzerrt das Gitter und weitet es tetragonal auf („diffusionsloses Umklappen“). 

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/f/fa/Steel_035_water_quenched.png)

---


- wird bei sehr schneller Abkühlung gebildet
- Kohlenstoffatome haben keine Zeit für Diffusion und können keine Fe$_3$C bilden

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/5/54/Bain%27sches_Modell_der_marten-sitischen_Umwandlung.gif)


---

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/2/20/Martensit_-_Oberfl%C3%A4chenreliefbildung.gif)

[Formgedächtnislegierungen](https://www.youtube.com/watch?v=1goaBtgZqDY)

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

![bg fit](../assets/Figures/Eisen_Kohlenstoff_Diagramm_Deutsch.svg)

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

# Stahl

[Normen](https://moodle2.hs-magdeburg.de/moodle/mod/resource/view.php?id=332129)



- Mit zunehmendem C-Gehalt steigen die Festigkeit und Härtbarkeit des Stahles, wogegen seine Dehnung, Schmiedbarkeit, Schweißbarkeit und Bearbeitbarkeit (durch spanabhebende Werkzeuge) verringert werden
- Der Korrosionswiderstand gegenüber Wasser, Säuren und heißen Gasen wird durch den Kohlenstoff praktisch nicht beeinflusst. 
- Für Kohlenstoffgehalte unter 0.25 Masse-% sind Stähle gut schweißbar

---


# Gusseisen

---

Es wird unterschieden zwischen:

- grauem Gusseisen (Grauguss), in dem der Kohlenstoff in Form von Graphit vorkommt. _Die Bruchflächen erscheinen grau_
- weißem Gusseisen, in dem der Kohlenstoff als Carbid in Form von Zementit (Fe$_3$C) vorkommt. _Die Bruchflächen sind weiß_

![bg right 100%](https://www.tec-science.com/wp-content/uploads/2021/02/de-eisen-kohlenstoff-diagramm-anteile-vollstaendig.jpg)

---




![bg ](https://www.tec-science.com/wp-content/uploads/2021/03/de-druckversuch-druckspannung-stauchungs-diagramm.jpg)

---

# Einteilung und Eigenschaften

---

## Gusseisen mit Lamellengraphit

- einfachste und häufigste Gusseisen-Sorte ist Gusseisen mit Lamellengraphit 
![bg right fit](https://www.giessereilexikon.com/uploads/tx_d3ency/189-01.png)
- Graphit liegt in Form von dünnen, unregelmäßig geformten Lamellen vor


---


## Gusseisen mit Lamellengraphit

![bg right fit](https://www.giessereilexikon.com/uploads/tx_d3ency/189-01.png)
-  Lamellen wirken bei Zugbelastung als Kerben, daher ist die Zugfestigkeit infolge der Kerbwirkung relativ gering
-  Druckfestigkeit liegt etwa um den Faktor 4 höher als die Zugfestigkeit

---

![bg right 70%](https://www.gsl-metallhandel.de/images/gusseisen-mit-lamellengraphit-maschinengeformt.jpg)

- spröder Werkstoff
- gute Wärmeleitfähigkeit
-  vorteilhafte Selbstschmiereigenschaften
  - wenn durch Bearbeitung die Lamellen angeschnitten und der Graphit selbst oder an dessen Stelle andere Schmiermittel in den Hohlräumen „bevorratet“ werden können. 

---

## Gusseisen mit Kugelgraphit

- Bessere mechanische Eigenschaften als Gusseisen mit Lamellengraphit
- zeigt duktiles Verhalten 

![bg right 80%](https://matdania.com/wp-content/uploads/2017/04/Nodular_Iron.jpg)

---



## Gusseisen mit [Vermiculargraphit](https://www.giessereilexikon.com/giesserei-lexikon/Encyclopedia/show/gusseisen-mit-vermiculargrafit-190/?cHash=57ba0f0209983c2de8ccc8e299b07616)
![bg right 80%](https://www.giessereilexikon.com/uploads/tx_d3ency/190-07.png)
- Eigenschaften zwischen Gusseisen mit Lamellengraphit und denen des Gusseisens mit Kugelgraphit
-  Herstellung ist jedoch schwieriger und erfordert eine in engen Toleranzen geführte Schmelzbehandlung

---

- höhere Festigkeit und Bruchdehnung und Bruchzähigkeit
- geringere Wanddickenabhängigkeit der Eigenschaften
Gusseisen mit Vermiculargrafit zeichnet sich gegenüber Gusseisen mit Lamellengrafit durch folgende Eigenschaften aus:

- höhere Festigkeit und Bruchdehnung
- höhere Bruchzähigkeit
- geringere Wanddickenabhängigkeit der Eigenschaften

---

Gegenüber Gusseisen mit Kugelgrafit bietet Gusseisen mit Vermiculargrafit folgende Vorteile:

- niedrigerer thermischer Ausdehnungskoeffizient
- höhere Wärmeleitfähigkeit
- niedrigerer E-Modul
- geringeres thermisch induziertes Eigenspannungsniveau
- bessere Temperaturwechselbeständigkeit und geringere Verzugsneigung aufgrund der zuvor genannten Eigenschaften
- besseres Dämpfungsvermögen
- bessere gießtechnische Eigenschaften (geringere Lunkerneigung, besseres Formfüllungs- und Fließvermögen)

---

## Vergleich Gusseisen und Stahl 

[Qualitativ zum Lesen](https://capablemachining.com/de/Blog/Stahl-vs.-Gusseisen-ein-umfassender-Vergleich/)

- Dichte $7.2\frac{g}{cm^3}$ vs. $7.85\frac{g}{cm^3}$ 
- Schmelztemperatur $1150 °C$
- korrosionsbeständiger als Stahl
- spröder als Stahl
- Schwindmaß ist nur ca 1%

[Quantitativ](https://www.schweizer-fn.de/festigkeit/festigkeitswerte/guss/stahlguss_start.php)

---

## Stahl vs. Gusseisen 

- Massenanteil von Kohlenstoff weniger als 2.06 %
- hohe Zugfestigkeit
- teurer als Gusseisen
- Duktiler und zäher als Gusseisen
- Schweißbar
- höhere Schmelzpunkt als Gusseisen

---

## Stahl vs. Gusseisen 

- Massenanteil von Kohlenstoff über 2.06 %
- gute Gießbarkeit auf (geringer Schmelzpunkt, dünnflüssige Schmelze, …)
- hart und spröde ist
- Die Zerspanbarkeit von Gusseisen hängt von der genauen Sorte ab; 
  - bei Gusseisen mit Lamellengraphit - der häufigsten Sorte - ist sie gut
  - Festigkeit ist geringer als die von Stahlguss, die Dämpfung ist höher
- Viele Sorten enthalten zusätzlich noch Silicium, das die Gießbarkeit verbessert, sowie weitere Legierungsanteile wie Mangan, Chrom oder Nickel

