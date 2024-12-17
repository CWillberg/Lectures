---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Vorlesung Zerstörende Prüfung
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


## Vorlesung Werkstofftechnik - Zerstörende Prüfung
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Vickers-path-2.svg/1024px-Vickers-path-2.svg.png)

Kontakt: christian.willberg@h2.de




---

<!--paginate: true-->


## Charakterisierung
Mathematische Modelle werden im Ingenieurswesen genutzt, um Vorhersagen über das Verhalten von Bauteilen und Strukturen zu machen. Die Bestimmung der für das Modell notwendingen Parameter nennt man Charakterisierung.

---

## Modelle


Was sind Modelle und wozu braucht man sie?

---


![bg fit 60%](https://upload.wikimedia.org/wikipedia/commons/6/62/Ratte-Vache.jpeg)

---

![bg fit 45%](https://upload.wikimedia.org/wikipedia/commons/c/cb/Paramecium.jpg)

---

![bg fit 70%](https://espirituracer.com/archivos/2018/06/crash-test-volvo-855x463.jpg)

---

![bg fit 60%](../assets/Figures/KIC.png)

---



<iframe src="https://perilab-results.nimbus-extern.dlr.de/models/ForgedCT?step=65&variable=von%20Mises%20Stress&displFactor=20" width="920" height="600"></iframe>



---

![bg fit 60%](../assets/Figures/FEM.png)

---

## 


![bg fit 60%](../assets/Figures/Testpyramide.png)


---

## Beispiele

- Bestimmung $E$ und $\nu$ in einem isotropen Material
- Verschiedene Wege skizzieren
- Probleme diskutieren

## Hinweis
- Es gibt Beziehungen zwischen dem Schubmodul $G$ und $E$ und $\nu$

---

# Messdatenerfassung
Typische Sensoren
- Dehnungssensoren
  - Dehnungsmessstreifen (DMS)
  - Fibre Bragg
  - Kamerasysteme
- Wegsensoren
  - Lasertriangulation
  - Maßband
  - Laufzeitmessung
- Kraftaufnehmer

---
## DMS
- Funktionsweise

![bg right fit 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Strain_gauge_-.jpg/1024px-Strain_gauge_-.jpg)

- elektrischer Widerstand
$R=\rho\frac{l}{A} = \frac{U}{I}$
$\frac{\Delta R}{R}=k\varepsilon$
---

## Kompensation


- Temperaturkompensation
  - auf einem lastfreien Bauteil messen
  - Ausnutzen einer Brückenschaltung von DMS
- Normaldehnungskompensation
  - Ausnutzen einer Brückenschaltung von DMS

![bg right 80%](https://sp-ao.shortpixel.ai/client/to_webp,q_lossy,ret_img,w_442/https://clm-engineering.com/wp-content/uploads/2020/06/Unbenannt2.jpg)

$\frac{U_m}{U_B}=\frac k4 (\varepsilon_1-\varepsilon_2+\varepsilon_3-\varepsilon_4)$


---

## Analog-Digital

- Analogssignale
- Digitale Signale
- A-D-Wandler

$dt<\frac{1}{2f_{max}}$

- wenn nicht eingehalten, dann kommt es zu Informationsverlusten

[Beispiel](https://www.youtube.com/watch?v=ByTsISFXUoY)


---

# Datenanalyse - Grundlagen

---

## Streuungen
- Messunsicherheiten
- Materialunsicherheiten
- Fertigungsunsicherheiten

Sonderfall
- Modellunsicherheiten -> werden nicht durch mehr Messungen kleiner

---

## Umgang mit Streuungen

_Mittelwert_
$sample_{mean}=\sum_{i=1}^{n}\frac{samples_i}{n}$

_Median_
50% der Werte liegen oberhalb und 50% unterhalb dieses Werts; Robuster gegen Ausreißer

_Standardabweichung_
Ist ein Maß für die Streuung der Daten
$s=\sqrt{\frac{1}{n-1}\sum_{i=1}^{n}(samples_i-sample_{mean})^2}$

_Korrelationskoeffizient_
Beschreibt wie gut zwischen Daten ein linearer Zusammenhang besteht (zwischen -1 und +1)

---

## Fitting
Methode der kleinsten Fehlerquadrate

$\text{min}||\mathbf{y}_m(\mathbf{x}) - \mathbf{y} ||$

um eine beliebige fitting Funktion zu bestimmen.

Wahl der Funktion:
Polynome - können bei hohen Polynograde zu Überschwingen führen
Splines, B-Splines - komplexer

---

## Fourier Transformation

- Jede Signal / Funktion kann in eine Summe aus Sinus Kurven zusammengesetzt werden
- Zeitfunktionen -> in Frequenzdarstellungen

![](https://de.mathworks.com/discovery/fft/_jcr_content/mainParsys/image.adapt.full.medium.jpg/1680761244598.jpg)

---

## Filter
- Tiefpass
  - Signale unterhalb eine definierten Frequenz werden erlaubt
- Hochpass  
  - Signale oberhalb eine definierten Frequenz werden erlaubt 
- Bandpass
  - Signale zwischen zwei definierten Frequenzen werden erlaubt 
- Bandstopfilter
  - Signale außerhalb zweier definierten Frequenzen werden erlaubt 

---

![bg 70%](../assets/Figures/filter.png)

---






## Übung

- Erstellen eines Datensatzes
- Plotten des Datensatzes
- Fitting
- Statistisch Bewertung von Daten
- Überschwingen von Signalen
- FFTs
- Gradientenbestimmung

---

# Zerstörende Prüfung

Bestimmte Kennwerte oder Aussagen über ein Material oder ein Bauteil können nur getroffen werden, wenn bis zum Versagen belastet wird.

---

## Exkurs Bruchmechanik

- Brüche lassen sich in diese Moden unterteilen
- Es gibt spezifische Energiefreisetzungraten

![](https://wiki.polymerservice-merseburg.de/images/thumb/d/df/Rissoeffnungsmoden.jpg/600px-Rissoeffnungsmoden.jpg)

[Liste von Experimente zur Bestimmung dieser Energien](https://wiki.polymerservice-merseburg.de/index.php/Pr%C3%BCfk%C3%B6rper_f%C3%BCr_bruchmechanische_Pr%C3%BCfungen)

---


## Bestimmung der Zähigkeit

- Widerstand eines Werkstoffs gegen Bruch oder Rissausbreitung
- Fähigkeit zur Absorption von mechanischer Energie bei plastischer Verformung

$Z = \int_0^{\varepsilon_{B}}\sigma d \varepsilon$ 

- Energiefreisetzungrate $G = \frac{Z}{A_{Bruch}}$
- Einfluss der Belastungs-geschwindigkeit 

![bg right 90%](../assets/Figures/varying_storedElastic_energy.svg)


<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s00466-021-02017-1" style="color: blue;">Bildreferenz</a>
</div>

---

## Zugversuch
- Bestimmung von 
  - elastischen Steifigkeiten
  - Festigkeiten
  - Streckgrenze
  - in einer Richtung
![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Tensile_testing_on_a_coir_composite.jpg/800px-Tensile_testing_on_a_coir_composite.jpg)

- es wird von konstaten Spannungen im Querschnitt ausgegangen
$\sigma = \frac{F}{A} = E\varepsilon = E\frac{\Delta l}{l}$
$F = \frac{\Delta l E A }{l}$



---

## Probengeometrie

![](https://www.zwickroell.com/fileadmin/_processed_/2/7/csm_ASTME8_Probenkoerper_mit_Massen_a69594facc.jpg)

[Video 1](https://eng.libretexts.org/Bookshelves/Materials_Science/TLP_Library_II/5%3A_Mechanical_Testing_of_Metals/5.5%3A_Tensile_Testing_-_Practical_Basics)

![bg right fit ](https://upload.wikimedia.org/wikipedia/commons/0/09/Cruciform.png)

---

## Parameter Zug

Bruchdehnung
  - bleibende Verlängerung der Zugprobe nach Bruch

Bruchdehnung A11

Streckgrenze
  - Grenze bis zu der ein Werkstoff elastisch verformbar ist

technische Elastiztätsgrenze
  - $R_{0.2}$ bei Werkstoffen wo die Streckgrenze nicht ausgeprägt ist

E Modul
  - Proportialnalitätsfaktor zwischen Spannung und Dehnung

---

Gleichmaßdehnung
  - Probe dehnt sich gleichmäßig bis zur Maximalkraft

Brucheinschnürrung $Z=\frac{\Delta A}{A_0}$
  - ein Maß für die Duktilität eines Werkstoffs 
![bg right 60%](https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Deroulement_rupture_ductile.svg/1920px-Deroulement_rupture_ductile.svg.png)

Einschnürdehnung
  - Probe dehnt sich nur noch in der Einschnürung

---

## Parameter Druck

Quetschgrenze
  - Oberhalb der Grenze setzt plastische Verformung ein (duktiles Material)
  - bei sprödem Material entstehen Risse und dann [Bruch](https://youtu.be/Fjgpvi8igbE?si=ptlpAR_vQfDV_qYW&t=36)

Stabilität 
  - Knicken
  - [Beulen](https://www.youtube.com/watch?v=ZYfLLozCNbw)
Verformungszonen einer gestauchten Probe (Abb3.16)

---

## Druckverformung

![bg left 80%](../assets/Figures/Verformungszonen_Druck.svg)

I - geringe Verformung (Reibbehinderung)
II - mäßige Zugverformung
III - hohe Schubverformung

---

## Anisotrope Messungen
Anisotropie
- Messungen unter verschiedenen Winkeln

Einflussgrößen
  - Schlupf bei der Einspannung
  - Temperatur
  - Geometrie
  - Probeneinspannung
---

## Biegeversuch

- in der Regel Flachproben mit einem Rechteckprofil 
- meist besser für sprödes Material
- Annahmen der Bernoulli Balkentheorie müssen gelten 
- eher für spröde Werkstoffe

$l>20*h$.

$F$ - Prüfkraft

$u$ - resultierende Verschiebung

$a$ - Höhe des rechteckigen Profils

$b$ - Breite des rechteckigen Profils

$l_b$ - Länge der Probe

---

## 2 Punkt Biegeversuch
![](../assets/Figures/kragbalken.svg)

$E=\frac{4l_b^2 F}{ubh^3}$

---

## 3 Punkt Biegeversuch

![](../assets/Figures/3Punktbiege.svg)

$E=\frac{l_b^3 F}{4ubh^3}$

---

## 4 Punkt Biegeversuch

![](../assets/Figures/4Punktbiege.svg)

Ziel ist ein querkraftfreier Bereich und daraus resultierend ein konstantes Biegemoment

$E=\frac{l_a^2(2l_a+3l_b) F}{ubh^3}$; 

$l_a$ Abstand zwischen Auflagepunkt und näher gelegenem Druckpunkt des Prüfstempels


---

## Spannungsverläufe

[Video](https://www.tec-science.com/wp-content/uploads/2021/03/de-animation-biegeversuch-spannungsverlauf-mit-verfestigung.mp4)


- Biegespannung 
  - $\sigma_b = \frac{M_b}{I_{xx}y}$
  - Spannungsnullinie

- ENF (End-Notched Flexure) Versuch nutzt die Spannungsnulllinie gezielt aus


![](../assets/Figures/ENF.svg)

---

## Dauerschwingversuch nach Wöhler
- Versuchsaufbau
  - Biegeversuch
  - Torsionsversuch
  - Zug-/Druckversuch

![](../assets/Figures/Whoehlerversuch.svg)

---

## Dauerschwingversuch nach Wöhler
Einflussgrößen
- Temperatur
- Korossive Medien
- Kerben
- Oberflächenbeschaffenheit
  - glatte Oberflächen sind günstiger
- Wärmebehandlung

---

## Strukturermüdungsversuch

[Video](https://youtu.be/BOpBzKanX9k?si=icWRiGPNs-8H9qXo)


<details>
<summary>Herausforderungen?</summary>
<div>

- repräsentative Lasten
- Erwärmung durch zu schnelle Belastung
- die Reihenfolge der Lasten beeinflusst die Lebensdauer

</div>
</details>


---

## Kerbschlagbiegeversuch

- Bestimmung der Kerbschlagenergie und  Kerbschlagzähigkeit $\frac{E}{A_{Nenn}}$
  - hat keine technische Bedeutung mehr
- Energie ist ausreichend für die Bestimmung der Werkstoffgüte
- Aufteilung in Hochlage (Verformugsbrüche, duktile), Tieflage (Trennbrüche, Sprödbruch) und Bereich des Steilabfalls (Mischbrüche)
- Kennwerte zur Bestimmung der Festigkeit nicht geeignet


[Versuch](https://youtu.be/mpUdV2WHiEE?si=5jwBppXbsEsnqHsc&t=86)

[Erklärvideo](https://www.youtube.com/watch?v=Ll69bzegoNY)

---

## Weitere Versuche

- Berstversuche
- Scherversuche
- Ausziehversuch
- Korrosionsversuche
- Brennproben

---

## Härteprüfung

- Probe oder Bauteil wird nicht vollständig zerstört
- Bedingt zerstörungsfreie Werkstoffprüfung
- am verbreitesten Rockwell (HR), Brinell, Vickers und Shore
- Härteeigschaften der Bauteiloberfläche beeinflussen die Ermüdung und den Verschleiß

---

## Rockwell

- die Eindringtiefe $t$ mit verschiedenen normierten Prüfkörpern vermessen
- Ablauf der Messung ist vorgeben

$\text{Rockwellh\"arte}=a-\frac{t}{d}$
- Skalen A, C, D; $a=100$, $d=0.002mm$
- Skalen B, E-H, K; $a=130$, $d=0.002mm$
- Skalen N, T; $a=100$, $d=0.001mm$

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Duret%C3%A9_rockwell.svg/1920px-Duret%C3%A9_rockwell.svg.png)

---

## Brinell

- mit einer Hartmetallkugel wird mit einer festgelegten Kraft auf die Oberfläche gedrückt

- wird ein mittlere Durchmesser bestimmt 

![bg right 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/BrinellHardness.svg/1024px-BrinellHardness.svg.png)

$\text{Brinellh\"arte}=\frac{0.204F}{\pi D \sqrt{D-\sqrt{D^2-d^2}}}$
mit $d=\frac{d_1+d_2}{2}$


---

## Vickers
- ähnlich zu Brinell, aber es wird statt einer Kugel eine gleichseitige Diamantpyramide verwendet
- kleinere Fläche nötig gegenüber Brinell
![bg right 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Vickers-path-2.svg/1024px-Vickers-path-2.svg.png)

$\text{Vickersh\"arte}=\frac{0.204F\cos 22°}{d^2}$

mit $d=\frac{d_1+d_2}{2}$
