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


## Vorlesung Werkstofftechnik - Vorlesung Reale Strukturen und Eigenschaften
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](https://upload.wikimedia.org/wikipedia/commons/d/d7/Gold-crystals.jpg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen

---

## Inhalte
- Fehler in Kristallen
- Plastizität
- Grundlagen mechanischer Eigenschaften

![bg right 70%](../assets/QR/wst_mb_02.png)




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
## Versetzungsarten

- Stufenversetzung
$E \approx \frac34 G b^2$
![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/9/99/Dislocation_edge_d2.svg)

- Schraubenversetzungen 
$E \approx \frac12 G b^2$

![bg vertical 60%](https://upload.wikimedia.org/wikipedia/commons/5/52/Dislocation_screw_e.svg)

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


## Konzept Spannung - Dehnung

- Geometriefreie Kennwerte
- Diskussion: Wie kann man einen Kennwert bestimmen, der nur durch das Material bestimmt ist?
- Beispiel: Dichte

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

## Kriechen
- Zeitabhängige Verformung bei konstanter Belastung
![bg right fit](https://leichtbau.dlr.de/wp-content/uploads/2022/03/boom_blank_be.png)

- Beispiel [entfalltbare Raumfahrtstrukturen](https://youtu.be/vMMc7-VUUtM?si=5uYx40b4eWGl7j0G&t=77)

---

- findet bei Metallen oberhalb einer Übergangstemperatur statt ($~0.3-0.4 \cdot T_S$)

- auch bei geringen mechanischen Spannungen unterhalb der Streckgrenze $R_e$ findet eine irreversible plastische Verformung, die langsam, aber stetig voranschreitet statt 

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/2/26/Kriechen-Werkstoffvorgaenge.jpg)


---

- temperatur-, spannungs-, zeit- und werkstoffabhängig

- **Ursache**: Versetzungsbewegungen, Leerstellendiffusion, Korngrenzengleiten, Korngrenzendiffusion

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/2/26/Kriechen-Werkstoffvorgaenge.jpg)

---

## Kriechen in Kunststoffen
- bestehen aus Molekülketten 
- diese gleiten bzw. entknäueln sich diese unter äußerer 
- Sekundärbindungne zwischen den Makromolekülen werden neu gebildet und Deformation bleibt erhalten
