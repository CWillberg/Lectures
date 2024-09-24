---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Vorlesung Reale Strukturen und Eigenschaften
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


## Vorlesung Werkstofftechnik - Gefüge der Werkstoffe
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](https://wiki.arnold-horsch.de/images/6/6e/EKD-1.jpg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen



---

<!--paginate: true-->

# Realstruktur von Kristallen
## Gitterbaudefekte

-	Nulldimensionale Fehlstellen (Punktdefekte): Leerstellen, Zwischengitteratom, Zwischengitter-Fremdatome, Substitutions-Fremdatom
-	Eindimensionale Fehlstellen (Liniendefekte): Versetzungen
-	Zweidimensionale Fehlstellen (Flächendefekte): Stapelfehler, Korngrenzen, Subkorn-grenzen, Phasengrenzen

---

## Nulldimensionale Fehlstellen

![bg right 50%](../assets/Figures/ideales_gitter.png)



<details>
<summary>Was gibt es für mögliche Varianten?</summary>
<div>

- Zwischengitteratome
- Leerstellen
- Frenkeltyp (Autreten der gleichen Zahl Zwischen-gitteratome und Fehlstellen)
- Substitutions-Fremdatom
- Zwischengitter-Fremdatom 
</div>
</details>

---

## Fremdatome

<details>
<summary>Wie lassen sich Fremdatome nutzen?</summary>
<div>

-	[Dotierung](https://de.wikipedia.org/wiki/Dotierung) im Halbleiter
    - gezielte Manipulation der elektrischen Leitfähigkeit durch Einbringung zusätzlicher Atome
- Zwischengitter und Substitutionsfremdatom
    - Erhöhung der Festigkeit durch natürlichen "Rissstopp" oder lokal einfacheren Versatz und lokale Reduktion der Spannungen
</div>
</details>


---


## Versetzungen

[Versetzungen](https://de.wikipedia.org/wiki/Versetzung_(Materialwissenschaft)) enstehen
- beim Kristallwachstum
- aufgrund von Eigenspannungen
- durch plastische Verformungen

![bg right 80%](../assets/Figures/versetzung.png)
![bg 105%](https://upload.wikimedia.org/wikipedia/commons/7/77/Versetzung_im_2D-Kristall.svg)


---

## Zweidimensionale Fehlstellen - Korngrenzen
- Korngrenzen
- Phasengrenzen
- Subkorngrenzen

![bg right fit](https://www.struers.com/-/media/Struers-media-library/Knowledge/Materials/Grain-structures/FIg-0A-974x732-px.jpg?lm=20191009T054854Z&h=732&w=974&hash=4504C0AA9A9B6DEB6BDF91CC93EDF46ED9AADF75)

[Skript](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/gitterbaudefekte/)


---


## Plastizität

Gut oder Schlecht

![bg right 70%](../assets/Figures/fragezeichen.png)

---

## Beispiele

**Hohe Plastizität**:

- Knete
- feuchter Ton
- Metalle und Metalllegierungen mit geeignetem Atomgitter:
  - glühender Stahl beim Schmieden
  - Kaltumformung von Blechen 

**Geringe Plastizität**:
  - Gummi
  - Keramik
  - Faserkunstoffverbunde (Epoxid-Glasfaser oder Epoxid-Kohlefaser)
   
---

## Plastizität - Einkristall

Die plastische Verformung eines Kristalls vollzieht sich  im Wesentlichen durch Abgleiten von Atomschichten entlang bestimmter kristallographischer Ebenen und Richtungen unter Einwirken von Schubspannungen.

- Gleitsystem besteht aus Gleitebene und Gleitrichtung
- kritische Schubspannung ($\tau_{Kr}\approx G/10$ - Abschätzung oder theoretische Schubfestigkeit)
- Realtität um Faktor ~100 niedriger durch Versetzungen
---

## Bild

![](../assets/Figures/Beispiel_plast.bmp)
  
---

## Plastische Verformung des polykristallinen Werkstoffs

- Mikro- und Makroplastizität
  - Plastische Verformung beginnt bei "ungünstigen" Orientierungen
- Korngrenzen
  - Barriere für Versetzungsbewegung
  - bei hohen Temperaturen können Korngrenzen gleiten (Kriechen)
  - gezielte Fertigung kann durch Korngrenzen Zähigkeit erhöhen
- Heterogenität
  - Mehrphasigkeit
  - inhomogene Verteilung der Spannungen und Verformungen
- Anisotropie

---

## Polykristall Plastizität
[Beispiel aus einer Simulation](https://www.youtube.com/watch?v=mWanREXKLO4)

---

## Streckgrenze

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

- $R_m$ - Zugfestigkeit
- $R_e$ - Streckgrenze
- Dehngrenze oder Elastizitätsgrenze $R_{p0,2}$
  - Belastung und dann Entlastung 0.2% Dehung verbleibt
- Dehngrenze wird als Ersatzstreckgrenze verwendet

---

## Streckgrenze

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/6e/Spgs-Dehnungs-Kurve_Streckgrenze.svg)

- obere Streckgrenze $R_{eH}$
- untere Streckgrenze $R_{eL}$
>gezackter Bereich: Lüdersbereich

[Beispielvideo](https://youtu.be/E80yUNniESU?si=pqGRAWamxFQedWqw&t=95)

---

## Plastizität - Umformen
- [Tiefziehen Prinzip](https://www.youtube.com/watch?v=Zbfld_851z0)
- [Tiefziehen Real](https://www.youtube.com/watch?v=rHfepOqPVHI)

---





## Werkstoffeigenschaften

<details>
<summary>Was sind Werkstoffeigenschaften?</summary>

<!DOCTYPE html>
<html lang="en">
  <body>
    <pre align="center" class="mermaid">
    %%{init: {'theme': 'forest'}}%%
    mindmap
      root((Eigenschaften))
        Physikalisch
          Mechanisch
          Elektrisch
          Thermisch
          ...
        Chemisch
            Löslichkeit
            Elektronegativität
            ...
        Biologisch / Physiologisch
            Umweltwirkung
            Verwitterbarkeit
            Toxidität
            ...
        Sozial / Gesellschaftlich
            Wert
            Akzeptanz
            Arbeitsbedingungen
            Herkunft
            ...
    </pre>
    <script type="module">
      import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
    </script>
  </body>
</html>
</details>

<!DOCTYPE html>

---

## Symmetrien
- isotropie
- transversale isotropie
- orthotropie
- ...
- anisotropie
![bg right 80%](../assets/Figures/xyz.png)

<!---
- Diskussion; Eigenschaften können richtungsabhängig sein
- Praxisbeispiele
-->

---

## Mechanische Eigenschaften
<a id="Mechanik"></a>

- die **reversible** Verformung, bei der sofort bzw. eine bestimmte Zeit nach dem Einwirken der äußeren Belastung der verformte Werkstoff seine ursprüngliche Form zurückerhält: elastische und viskoelastische Verformung;

- die **irreversible (bleibende)** Verformung, bei der die Formänderung auch nach dem Einwirken der äußeren Belastung erhalten bleibt: plastische und viskose Verformung;

- der Bruch, d.h. eine durch Entstehen und Ausbreiten von Rissen bewirkte Trennung des Werkstoffes.


---

## Simulationsbeispiel

<iframe src="https://perilab-results.nimbus-extern.dlr.de/models/DCB?step=65&variable=Damage&displFactor=400" width="1150" height="600"></iframe>


---

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
E - Elastizitätsmodul, Young's modulus $\left[\frac{N}{m^2}\right]$\
\
\
\
\
.
<div style="position: absolute; bottom: 40px; left: 80px; color: blue; font-size: 20px;"> 
    <img src="Figures/EModul.svg" style="height:230px;width:auto;vertical-align: top;">
</div>

![bg right:25%](../assets/Figures/Normalspannung.gif)

---

## Grundlagen

- Schubdehnungen [-]
$\varepsilon = \frac12(\frac{u_x}{l_0}+\frac{u_y}{b_0})=\frac{\gamma}{2}$

- Schubspannung $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\tau = \frac{F_s}{A}= G\gamma$

- Normal- und Schubspannungen sind nicht kompatibel; daher die Vergleichsspannungen -> Technische Mechnanik

- G - Schub-, Gleitmodul, Shear modulus $\left[\frac{N}{m^2}\right]$

![bg right:25%](../assets/Figures/Schubspannung.gif)


---

## Grundlagen

- Querkontraktionszahl [-]
- $\nu = -\frac{\varepsilon_y}{\varepsilon_x}$
für homogene Werkstoffe $0\leq\nu\leq 0.5$
für heterogene Werkstoffe sind anderen Konstellationen denkbar

- [Kompressionsmodul](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper) $K = \frac{E}{3(1-2\nu)}$
- [Schubmodul](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper) $K = \frac{E}{2(1+\nu)}$

![bg right:25%](../assets/Figures/Kompression.gif)

---

## Werkstoffbeispiele

| Werkstoff                         | E [GPa]   | G [GPa] | $\nu [-]$     |
|:----------------------------------|:----------|:--------|:----------|
| Stahl unlegiert                   | 200       | 77      | 0.30      |
| Titan                             | 110       | 40      | 0.36      |
| Kupfer                            | 120       | 45      | 0.35      |
| Aluminium                         | 70        | 26      | 0.34      |
| Magnesium                         | 45        | 17      | 0.27      |
| Wolfram                           | 360       | 130     | 0.35      |
| Gusseisen mit lamellarem Graphit  | 120       | 60      | 0.25      |
| Messing                           | 100       | 35      | 0.35      |
| Thermoplaste/Duromere             | 2 … 5     | 1 … 2   | ~0.35   |
| Elastomere                        | 0.1       | 0.03    | 0.45 - 0.49|
| Sperrholz                         | 4 … 16    | -       | -         |
| Beton                             | 40 … 45   | -       | -         |


---


## Steifigkeiten
<details>
<summary>Wie Materialeigenschaften den Steifigkeiten zusammen?</summary>

- Material $\cdot$ Querschnitte = Steifigkeit
- Dehn-, Normalsteifigkeit = $EA$
- Biegesteifigkeit = $EI$
- Torsionssteifigkeit = $GI_P$

</details>

![bg fit right:50%](../assets/Figures/IWES_test.jpg)
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Bildreferenz</a>
</div>

---

## 
<!---

* 1. und 2. Eigenfrequenz ->  https://doi.org/10.3390/en14092451
* Verformung in Schlag- und Schwenkrichtung sind aber identisch
* Turmschlag ist relevant
* dynamische Stabilität
* -->

![bg fit](../assets/Figures/EF1.png)
![bg fit](../assets/Figures/EF2.png)


<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Bildreferenz</a>
</div>

---

## Festigkeit

[Die Festigkeit eines Werkstoffes beschreibt die Beanspruchbarkeit durch mechanische Belastungen, bevor es zu einem Versagen kommt, und wird angegeben als mechanische Spannung $\left[N/m^2\right]$. Das Versagen kann eine **unzulässige Verformung** sein, insbesondere eine **plastische (bleibende) Verformung** oder auch ein **Bruch**.](https://de.wikipedia.org/wiki/Festigkeit)


>Wichtig: Festigkeit $\neq$ Steifigkeit

---


## Plastische Versagen 

![bg fit right:50%](../assets/Figures/Stress_strain_ductile.svg)


<div style="position: absolute; bottom: 10px; right: 0px; color: blue; font-size: 20px;"> 
    <a href="https://commons.wikimedia.org/w/index.php?curid=89891144" style="color: blue;">By Nicoguaro - Own work, CC BY 4.0</a>
</div>

---

## Viskoses Verhalten

- reversibel
- zeitabhängig

Federmodel $\sigma = E\epsilon$ 
 - Elastischer Anteil
 - Dargestellt durch Federlemente
<div style="position: absolute; bottom: -10px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/spring.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<div style="position: absolute; bottom: -150px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/damper.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

Dämpfer  $\sigma = \eta\dot{\epsilon}=\eta\frac{\partial \epsilon}{\partial t}$ 
- Viskoser Anteil
- Dargestellt durch Dämpferelemente


---

## 

![bg fit](../assets/Figures/Spannung-Dehnung.png)
![bg fit](../assets/Figures/Spannung-Dehnrate.png)

---

## 

![bg fit](../assets/Figures/Spannung-Zeit.png)
![bg fit](../assets/Figures/Hysteresis.png)



---

## Exkurs: Modellierung von Werkstoffen
- Rheologische Modelle
- setzen sich aus vielen Federn, Dämpfern und anderen Elementen zusammen
- diese Freiheitsgrade ($E_i$, $\eta_i$) werden dann gefittet



---

## Wiederholung Kristalle und Gitter

![bg right 50%](../assets/styles/vorlesung.png)

---

## Kristalle - Kritallgitter

- Stoffe die sich in einer Kristallstruktur anordnen
- Periodische Wiederholung der "Basis"
- Die Basis kann beliebig groß sein
- Elementarzellen enthält alle Informationen
zur Beschreibung des Kristalls
- alle Metalle bilden in der Regel Kristalle 


<div style="position: absolute; bottom: 340px; left: 780px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/NaCl_polyhedra.svg" alt="https://creativecommons.org/licenses/by-sa/4.0/deed.en" style="height:250px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<div style="position: absolute; bottom: 40px; left: 780px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/Rock_salt_crystal.jpg" alt="https://creativecommons.org/licenses/by-sa/4.0/deed.en" style="height:220px;width:auto;vertical-align: top;background-color:transparent;">
</div>

---

## "Faule" Physik
- alles strebt nach engergetisch "stabilen" Zuständen

<div style="position: absolute; bottom: -360px; left: 780px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/energie.svg" alt="https://creativecommons.org/licenses/by-sa/4.0/deed.en" style="height:1320px;width:auto;vertical-align: top;background-color:transparent;">
</div>

- [Einheitszelle](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/kristalle/)

<div style="position: absolute; bottom: 40px; left: 780px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/Einheitszelle.png" alt="https://creativecommons.org/licenses/by-sa/4.0/deed.en" style="height:220px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<details>
<summary>Recherchiert wichtige Parameter der Einheitszelle?</summary>
<div>

- a$_0$, b$_0$, c$_0$ - Gitterkonstanten - Abstand der Atome
- $\alpha$, $\beta$, $\gamma$ - Achswinkel - Winkel der Elementarzellen
- 14 mögliche [Bravais Gitter](https://de.wikipedia.org/wiki/Bravais-Gitter) in 3D
- [Zahl der Atome](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/kristalle/)
- [Koordinationszahl](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/kristalle/)
- [Packungsdichte](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/kristalle/)
</div>
</details>

---

## Einfluss des Raumgitters

-	Korrosion: Angriff aggressiver Medien erfolgt an bevorzugten Ebenen
-	Verformung: Plastische Verformung erfolgt entlang bevorzugter kristallografischer Ebenen und Richtungen → Gleitsysteme
-	Ultraschall: Verwendung von Schwingquarzen mit speziellen kristallografischen Begrenzungsflächen
-	Leitfähigkeit:	Verwendung von Germanium- oder Silizium-Wafern in (1 1 1)- oder (1 0 0) - Orientierung für Halbleiterelemente
-	Magnetisierung: leichteste Magnetisierung von Eisen-Silizium-Transformatorenblechen entlang der Würfelkante [1 0 0]

---

## Gitterbaudefekte

-	Nulldimensionale Fehlstellen (Punktdefekte): Leerstellen, Zwischengitteratom, Zwischengitter-Fremdatome, Substitutions-Fremdatom
-	Eindimensionale Fehlstellen (Liniendefekte): Versetzungen
-	Zweidimensionale Fehlstellen (Flächendefekte): Stapelfehler, Korngrenzen, Subkorn-grenzen, Phasengrenzen

---

## Nulldimensionale Fehlstellen

![bg right 50%](../assets/Figures/ideales_gitter.png)



<details>
<summary>Was gibt es für mögliche Varianten?</summary>
<div>

- Zwischengitteratome
- Leerstellen
- Frenkeltyp (Autreten der gleichen Zahl Zwischen-gitteratome und Fehlstellen)
- Substitutions-Fremdatom
- Zwischengitter-Fremdatom 
</div>
</details>

---

## Fremdatome

<details>
<summary>Wie lassen sich Fremdatome nutzen?</summary>
<div>

-	[Dotierung](https://de.wikipedia.org/wiki/Dotierung) im Halbleiter
    - gezielte Manipulation der elektrischen Leitfähigkeit durch Einbringung zusätzlicher Atome
- Zwischengitter und Substitutionsfremdatom
    - Erhöhung der Festigkeit durch natürlichen "Rissstopp" oder lokal einfacheren Versatz und lokale Reduktion der Spannungen
</div>
</details>


---


## Versetzungen

[Versetzungen](https://de.wikipedia.org/wiki/Versetzung_(Materialwissenschaft)) enstehen
- beim Kristallwachstum
- aufgrund von Eigenspannungen
- durch plastische Verformungen

![bg right 80%](../assets/Figures/versetzung.png)
![bg 105%](https://upload.wikimedia.org/wikipedia/commons/7/77/Versetzung_im_2D-Kristall.svg)


---

## Zweidimensionale Fehlstellen - Korngrenzen
- Korngrenzen
- Phasengrenzen
- Subkorngrenzen

![bg right fit](https://www.struers.com/-/media/Struers-media-library/Knowledge/Materials/Grain-structures/FIg-0A-974x732-px.jpg?lm=20191009T054854Z&h=732&w=974&hash=4504C0AA9A9B6DEB6BDF91CC93EDF46ED9AADF75)

[Skript](https://cwillberg.github.io/Werkstofftechnik/dev/Skript/svw/gitterbaudefekte/)


---


## Plastizität

Gut oder Schlecht

![bg right 70%](../assets/Figures/fragezeichen.png)

---

## Beispiele

**Hohe Plastizität**:

- Knete
- feuchter Ton
- Metalle und Metalllegierungen mit geeignetem Atomgitter:
  - glühender Stahl beim Schmieden
  - Kaltumformung von Blechen 

**Geringe Plastizität**:
  - Gummi
  - Keramik
  - Faserkunstoffverbunde (Epoxid-Glasfaser oder Epoxid-Kohlefaser)
   
---

## Plastizität - Einkristall

Die plastische Verformung eines Kristalls vollzieht sich  im Wesentlichen durch Abgleiten von Atomschichten entlang bestimmter kristallographischer Ebenen und Richtungen unter Einwirken von Schubspannungen.

- Gleitsystem besteht aus Gleitebene und Gleitrichtung
- kritische Schubspannung ($\tau_{Kr}\approx G/10$ - Abschätzung oder theoretische Schubfestigkeit)
- Realtität um Faktor ~100 niedriger durch Versetzungen
---

## Bild

![](../assets/Figures/Beispiel_plast.bmp)
  
---

## Plastische Verformung des polykristallinen Werkstoffs

- Mikro- und Makroplastizität
  - Plastische Verformung beginnt bei "ungünstigen" Orientierungen
- Korngrenzen
  - Barriere für Versetzungsbewegung
  - bei hohen Temperaturen können Korngrenzen gleiten (Kriechen)
  - gezielte Fertigung kann durch Korngrenzen Zähigkeit erhöhen
- Heterogenität
  - Mehrphasigkeit
  - inhomogene Verteilung der Spannungen und Verformungen
- Anisotropie

---

## Polykristall Plastizität
[Beispiel aus einer Simulation](https://www.youtube.com/watch?v=mWanREXKLO4)

---

## Streckgrenze

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/64/Spgs-Dehnungs-Kurve_Dehngrenze.svg)

- $R_m$ - Zugfestigkeit
- $R_e$ - Streckgrenze
- Dehngrenze oder Elastizitätsgrenze $R_{p0,2}$
  - Belastung und dann Entlastung 0.2% Dehung verbleibt
- Dehngrenze wird als Ersatzstreckgrenze verwendet

---

## Streckgrenze

![bg right 90%](https://upload.wikimedia.org/wikipedia/commons/6/6e/Spgs-Dehnungs-Kurve_Streckgrenze.svg)

- obere Streckgrenze $R_{eH}$
- untere Streckgrenze $R_{eL}$
>gezackter Bereich: Lüdersbereich

[Beispielvideo](https://youtu.be/E80yUNniESU?si=pqGRAWamxFQedWqw&t=95)

---

## Plastizität - Umformen
- [Tiefziehen Prinzip](https://www.youtube.com/watch?v=Zbfld_851z0)
- [Tiefziehen Real](https://www.youtube.com/watch?v=rHfepOqPVHI)

---

