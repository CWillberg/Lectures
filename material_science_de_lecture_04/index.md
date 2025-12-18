---
marp: true

theme: h2
header: ''
footer: ''

title: Vorlesung Zerstörungsfreie Prüfung
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


## Vorlesung Werkstofftechnik
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](https://leichtbau.dlr.de/wp-content/uploads/2023/11/Strukturversuch-scaled-2560x1280.jpg)

Kontakt: christian.willberg@h2.de

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://leichtbau.dlr.de" style="color: blue;">Bildreferenz</a>
</div>


---

<!--paginate: true-->

![bg  98% fit](https://leichtbau.dlr.de/wp-content/uploads/2023/11/Strukturversuch-scaled-2560x1280.jpg)

![bg  70% fit](../assets/styles/qr-code.png)



---

# Prüfung

## Charakterisierung
## Sensoren
## Datenanalyse - Grundlagen

## Zerstörende Prüfung
## Zerstörungsfreie Prüfung


---

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

---

# Zerstörungsfreie Prüfung

Ziele der zerstörungsfreien Prüfung (ZfP)


---
## Entwicklungsstufen

ZfP 1.0 – Werkzeuge (zur Schärfung der Sinne)
ZfP 2.0 – Analoge Systeme (zur Ansicht innerhalb der Komponenten)
ZfP 3.0 – Digitale Verarbeitung und Automatisierung
ZfP 4.0 – Transparenz von Informationen, technische & digitale Hilfsmittel und autonome und dezentralisierte Entscheidungen

---

## Verfahren
- jede messbare physikalische Größe kann im Prinzip genutzt werden 

  - mechanisch (außer Ultraschallprüfung)
  - optisch
  - elektromagnetisch
  - elektrisch
  - thermisch
  - magnetisch

---


## Ausarbeiten und Vorstellen

--- 


## Probabilty of Detection

- Metrik, welche die Wahrscheinlichkeit der Detektion eines Fehlers einer bestimmten Größe angibt

![bg right 80%](https://sentin.ai/wp-content/uploads/2020/08/POD-Curve-768x768.jpg)


- Die zulässige Fehlergröße ist  bekannt
- mit einer Konfidenz von 95% angeben. D.h. zu 95% werden 90% der Fehler detektiert.

---

## Schadensgröße

- je nach Verfahren variiert die detektierbare Schadensgröße
- es gilt nicht immer _kleine Schadesgröße_ $=$ _besser_
- minimaler Schaden $l = \frac{\lambda}{2}$ -> Abstasttheorem
$c = \lambda f$
- $c$ ist die Licht- oder Schallgeschwindigkeit

$\lambda = \frac{c}{f} = \frac{6000 m/s}{10^6 1/s} = 6 mm$
![bg right fit](../assets/Figures/sandwichvarianten.png)
![bg vertical fit](https://upload.wikimedia.org/wikipedia/commons/4/44/Kohlenstofffasermatte.jpg)

---


## Sichtprüfung

- kann mit verschiedenen Werkzeugen stattfinden und ist sehr verbreitet
- direkte Sichtprüfung
  - Auge
  - Boroskope (Elastoskope, Endoskope, Spiegelrohre, ...)
- indirekte Sichtprüfung
  - Kameras
  - Drohnen


---

## Eindringprüfung


![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Ressuage_principe_2.svg/330px-Ressuage_principe_2.svg.png)
1. Reinigung, 2. Farbe auftragen und eindringen lassen, 3. Oberflächliches reinigen, 4. Entwickler auftragen

- bei Tageslicht oder im dunkeln 

---

## Durchstrahlungsprüfung

- Röntgen-, Mikrowellen-, Gammastrahlung 
- Synchrotronstrahlung (Spezialfälle, eher selten)

- auch als Computertomographie nutzbar
![bg right fit](https://www.researchgate.net/profile/Christian-Willberg/publication/258207141/figure/fig1/AS:297342013067264@1447903268377/Plate-and-actuator_W640.jpg)
![bg vertical fit](https://www.researchgate.net/profile/Christian-Willberg/publication/258207141/figure/fig3/AS:297342013067266@1447903268956/The-continues-debonding-region-A-shown-by-C-T-images-in-several-frames-see-Fig-2_W640.jpg)

---

## Thermographie
**aktive**
- Bauteil ist warm und wird vermessen
- Unterschiede in der Temperaturverteilung können zur Identifikation von Fehlern genutzt werden
- Prozessanpassungen sind möglich

**passive**
- Bauteil wird angeregt und die Reaktion wird vermessen
- induktive Erwärmung bei Kohlefaserverbundbauteilen


---

## Modalanalyse

$\mathbf{M}\ddot{\mathbf{u}}+\mathbf{Ku}=\mathbf{0}$

- Eigenformen
- Eigenfrequenzen


$(\mathbf{K}-\omega^2\mathbf{M})\hat{\mathbf{x}}=\mathbf{0}$

**Federpendel**
$m\ddot{u}+cu=0$

$c-\omega^2 m = 0$

$\omega = 2\pi f = \sqrt{\frac{c}{m}}$

---

## Modalanalyse

- Anregung mit einem Shaker oder Impulshammer
- Messpunkte mit Beschleunigungssensor oder Laser
- Ein Anregungspunkt -> viele Messpunkte
- Viele Anregungspunkte -> ein Messpunkt


![bg right 50%](https://www.researchgate.net/profile/Andrzej-Rysak/publication/291827506/figure/fig4/AS:322054793515011@1453795254691/Modal-analysis-of-the-vibrating-beam-in-the-fixed-mass-case-The-corresponding-bending_W640.jpg)

![bg vertical 50%](https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Modal_testing-detail.tif/lossy-page1-489px-Modal_testing-detail.tif.jpg)

---



## Ultraschallprüfung

**Wellenarten**
Longtitudinalwellen (P Wellen)
Transversalwellen (S Wellen)
Love Wellen
Rayleighwellen
Lambwellen, bzw. geführte Ultraschallwellen
Symmetrische, unsymmetrische und Schubwellen
Torsionswellen
Schubwellen

---

![](https://upload.wikimedia.org/wikipedia/commons/0/07/Overview_Seismic_Waves.jpg)

---

## Symmetrische Moden (Longitudinalwellen)

<video controls="constrols" width="600" scr=".../assets/Videos/asym.avi">

---

## Anti-Symmetrische Moden (Transversalwellen)

<video controls="constrols" width="600" scr=".../assets/Videos/asym.avi">

---


## Schallgeschwindigkeiten
$c_{l}=\sqrt{\frac{E(1-\nu)}{\rho(1-\nu-\nu^2)}}$
$c_{t}= \sqrt{\frac{G}{\rho}}$

![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/e/e7/Sym_asym_sigma0.27_und_0.34_edited2.svg)

Geführte Ultraschallwellen sind dispersiv
sie haben eine Gruppen und Phasengeschwindigkeit

---

## Dispersion

- Gruppengeschwindigkeit - wie schnell bewegt sich die Hüllkurve 
- Phasengeschwindigkeit - wie schnell bewegt sich die Phase (einzelne Frequenz)

- für eine Frequenz sind Gruppen und Phasengeschwindigkeiten identisch

![](https://upload.wikimedia.org/wikipedia/commons/b/bd/Wave_group.gif)

- Für frequenzabhänige Phasengeschwindigkeiten verbreitert sich die Hüllkurve -> Dispersion 

---

## Piezoelektrischer Effekt

- Aktuatoreffekt
- Sensoreffekt
- $d_{31}$; el. Spannung in 3 Richtung und Deformation in 1, bzw. 2 Richtung
- $d_{33}$; el. Spannung in 3 Richtung und Deformation in 3 Richtung

![bg right 70%](../assets/Figures/piezo.png)

![bg vertical 100%](../assets/Figures/polarization_2.png)

---

## Reflexionen an Grenzflächen
- Schallwiderstand $W = c_L\rho$

_Reflektierender Schall_
$\frac{p_{a,r}}{p_{a,e}}=\frac{W_2-W_1}{W_2+W_1}$

_Durchgehender Schall_
$\frac{p_{a,d}}{p_{a,e}}=\frac{2W_2}{W_2+W_1}$

![bg right fit](../assets/Figures/reflexion.png)

---

## Rechenaufgabe

-> Wasser - Stahl
-> Luft - Stahl
-> Wasser - Aluminium
-> Luft - Aluminium
-> Wasser - PMMA
-> Luft - PMMA


---

## Signal - Rausch Verhältnis

$SNR = \frac{P_{Signal}}{P_{Rauschen}}$

- Mehrfachmessungen reduziert den Rauschanteil

---


## Messaufbau

- 1 - 2 Wandler
- Messverstärker
- Messaufnehmer

![bg right 80%](http://std-partners.de/fileadmin/_processed_/csm_STD_HP_Ultraschall_03_18_07ef793d11.jpg)

---

## Anbindung des Prüfkopfs an die Oberfläche

Wasser
- billig
- gut automatisierbar

Motoröl, Schmierfett
- bereits vorhanden im Bauteil
- nicht optimiert auf Prüfung

---

Glycerin, Gel
- Vorteilhaft ist die hohe Viskosität und die hohe akustische Impedanz
- raue Oberflächen und stark dämpfende Materialien (Schweißnahtprüfung)

Luft
- spart Koppelmedium
- viel Rauschen
---





## Impuls-Echo Verfahren

- Zone des "Todes"
  - Zeit für Wechsel von Sender zum Empfänger

- Doppelsensorsystem
  - Messung auf beiden Seiten
  - Zugänglichkeit und Aufwand

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/UT_principe.svg/660px-UT_principe.svg.png)

---

## Messbild

![](https://upload.wikimedia.org/wikipedia/commons/0/08/Swing_shaft_spline_cracking.png)

---

## Schweißnahtprüfung

- Schrägschallung aufgrund der schwierigen Ankopplung


![bg right fit](https://www.karldeutsch.de/wp-content/uploads/2018/12/UT-2-2-DE.png)

## Klebschichten

- werden ähnlich geprüft
- es kann sogenannte "kissing bonds" geben

---

## Wanddickenmessung

![](https://www.karldeutsch.de/wp-content/uploads/2018/12/UT-2-1-DE.png)


---

## Bildgebung

- Messdaten können auf verschiedene Weise dargestellt werden

---

## A Bild (amplitude)

- Laufzeit vs. Amplitude
- bei konstanter Geschwindigkeit kann für einen Punkt eine Fehlstelle im Signal detektiert werden

![bg right fit](https://wiki.polymerservice-merseburg.de/images/4/40/A_bild.JPG)

---

## B Bild (brightness)

- Einzelpunkt ist nur eine andere Darstellung des A Bildes (Intensität des Echos wird durch Helligkeit dargestellt)
- Durch die Erfassung der Schallrichtung können 2D oder 3D Bilder erzeugt werden


![bg right 70%](https://www.spektrum.de/lexika/images/physik/fff925_w.jpg)

---


## C Bild
- ein projiziertes Bild der Größen der Fehlstellen

![](https://upload.wikimedia.org/wikipedia/de/1/1f/C-bild-2.jpg)

---

## D Bild

- flächiger Scan

![bg right 80%](https://wiki.polymerservice-merseburg.de/images/a/a7/D_Bild_Technik-4.JPG)

![](https://wiki.polymerservice-merseburg.de/images/a/af/D_Bild_Technik-1.JPG)

---

## Dickenmessung mittels Geführten Ultraschallwellen



![bg right 70%](https://upload.wikimedia.org/wikipedia/commons/e/e7/Sym_asym_sigma0.27_und_0.34_edited2.svg)

---

# Structural Health Monitoring

- Überwachung einer Struktur während des Betriebs
- Verwand mit dem Condition Monitoring
  - bspw. Getriebeüberwachung -> Detektion von Lagerschäden

---

Ziele:
Wartungskosten senken
  - weniger Reparaturen
  - einfachere Prüfung
  - rechtzeitige Wartung
- Lastanpassung bei Schäden
- Lebensdauer verlängern
- Sicherheit erhöhen

---

<details>
<summary>Stufe 1</summary>
<div>
Ein System kann feststellen, dass ein Event passiert ist
</div>
</details>

<details>
<summary>Stufe 2</summary>
<div>
Ein System kann feststellen, dass ein Event passiert ist und wo es stattfand
</div>
</details>

<details>
<summary>Stufe 3</summary>
<div>
Ein System kann feststellen, dass ein Event passiert ist, wo es stattfand und was stattgefunden hat (Typ des Events)
</div>
</details>

<details>
<summary>Stufe 4</summary>
<div>
Ein System kann feststellen, dass ein Event passiert ist, wo es stattfand, was stattgefunden und wie schädlich dieses Event für die Struktur ist
</div>
</details>

---

## Verfahren

- Modalanalyse
- Geführte Ultraschallwellen
- Akkustische Emission
- Lastpfadanalysen
  - Beispiel Parallelfeder rechnen
- Dehnungmessung
- Modellbasierte Ansätze

---


## Technische Anwendungen

Brücken
- Second Penang Bridge - Penang, Malaysia
  ![](https://www.geosig.com/images/page_image_111.png)

---
Pipelines

![](https://journals.sagepub.com/cms/10.1177/1475921719837718/asset/images/large/10.1177_1475921719837718-fig17.jpeg)

--- 

## Technische Anwendungen

Flugzeug
- Lastpfadanalyse
- Überwachung von Anbindungen
- Sicherheit ist nicht der Hauptfokus in der Luftfahrt

![bg right fit](https://journals.sagepub.com/cms/10.1177/1475921720919678/asset/images/large/10.1177_1475921720919678-fig5.jpeg)

![bg right fit](https://journals.sagepub.com/cms/10.1177/1475921720919678/asset/images/large/10.1177_1475921720919678-fig4.jpeg)

![bg vertical fit](https://journals.sagepub.com/cms/10.1177/1475921720919678/asset/images/large/10.1177_1475921720919678-fig2.jpeg)

---

Windenergie

![](https://onlinelibrary.wiley.com/cms/asset/7f3901c5-5735-4b5f-8ce1-655b4e3fcfe7/mfig001.jpg)

---

## Modalanalyse

$(\mathbf{K}-\omega^2\mathbf{M})\mathbf{\hat{x}}=0$

- Eigenfrequenz $\omega=2\pi f$
- Eigenformen $\mathbf{\hat{x}}$
  - [MAC](https://community.sw.siemens.com/s/article/modal-assurance-criterion-mac) Kriterium
  - Winkelberechnung zwischen Eigenformen

---

$MAC=\frac{|\mathbf{\hat{x}}_i\mathbf{\hat{x}}_{i, ref}|^2}{(\mathbf{\hat{x}}_i\mathbf{\hat{x}}_{i, ref})(\mathbf{\hat{x}}_i\mathbf{\hat{x}}_{i, ref})}$

![bg right fit](https://community.sw.siemens.com/servlet/rtaImage?eid=ka6KZ00000006AW&feoid=00N4O000006Yxpf&refid=0EM4O00000112wj)

---

## Geführte Ultraschallwellen

- Anregung über Piezokomposite
- Empfang mit Piiezokompositen oder Fibre Bragg Gittern

![bg right fit](https://pub.mdpi-res.com/aerospace/aerospace-10-00430/article_deploy/html/images/aerospace-10-00430-g008.png?1683204034)


---
![](../assets/Figures/sensornetzwerke.png)
[Schadensinteraktion](.../assetsVideos/flachbodenbohrung.avi)


---

## Herausforderungen
- Temperatur
- Feuchte
- innere Struktur des Materials
- Modenkonversion
- Spannungen in der Struktur
- Alterung


---
## Potentiale
Beispiel Flugzeug
- BVI (barely visible impact)
- Größe ist durch Sichtbarkeit definiert
  - Leitwerk ist der Schaden größer als am Flügel

- SHM System erlauben kleinere Schäden bei der Auslegung

- Abgeschätzt der [1 - 5% ](https://elib.dlr.de/123946/1/1475921718813279.pdf) Strukturmasse könnte reduziert werden 


---

## Mikroskopie

- Analyse der Mikrostruktur von Werkstoffen
- Lokale Analyse der Werkstoff- oder Kornzusammensetzung
- Präparation der Probe (Schleifen, Oberflächenbehandlung, usw.)
- Lichquellen beeinflusssen maßgeblich den Kontrast
- Filter

![bg right fit](https://www.ikts.fraunhofer.de/de/abteilungen/werkstoff_prozesscharakterisierung/korrelative_mikroskopie_und_materialdaten/fa_multiskalige-3D-analytik_datenkorrelation_und_praeparation_in_der_halbleiterentwicklung/jcr:content/contentPar/sectioncomponent_cop/sectionParsys/imagerow/imageComponent1/image.img.4col.jpg/1683533051397/39-4-3d-detailansicht-eines-cpu-chips.jpg)

---

## Lichtmikroskopie

- Korngrößenanalyse von Metallen und Legierungen 
- Flächenzählverfahren 
- Linienschnittverfahren (Korngrenzenschnitte mit durch den Prüfer in das Bild definierten Linienzug)

![bg right fit](https://static1.olympus-ims.com/data/Image/appnotes/GrainSizeAnalysis_AppNote_img4_rev.jpg?rev=9463)


---

## Elektronenrastermikroskop
- nutzt Elektronenstrahlen zum Abtasten
- Auflösung hierdurch deutlich erhöht $1nm .. 2nm$
- ca. 500 mal bessere Vergrößerung als beim Lichmikroskop (2000:1) vs. (1000000)

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/e/ef/Funktionsprinzip_REM.gif)

---

## Rastersondenmikroskopie

- Abstasten der Struktur mit einer Nadel
- Wechselwirkung ist nicht mechanisch und unterscheidet sich je nach Mikroskop
  - Tunnelstrom
  - Van der Waals Kräfte (korreliert mit Federsteifigkeit)
  - magnetische Kräfte


![bg right fit](https://upload.wikimedia.org/wikipedia/commons/0/0f/AFM_%28used%29_cantilever_in_Scanning_Electron_Microscope%2C_magnification_1000x.GIF)

---



