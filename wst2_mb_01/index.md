---
marp: true

theme: h2
header: ''
footer: ''

title:  Werkstofftechnik II
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


##  Werkstofftechnik II
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](../assets/Figures/IWES_test.jpg)

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
- Probleme bei der Kinderbetreuung
- Fragen

![bg right 50%](../assets/QR/wst2_mb_01.png)

---
## Inhalte



| Woche | Termin I | Termin II |
| -- | -- | -- |
| 1 | Vorlesung I Wiederholung | Vorlesung  Physikalische Eigenschaften von Werkstoffen |
| 2 | Seminar:  Berechnung Wärmedehnung, etc. | Vorlesung  Messung von Kenngrößen |
| 3 | Seminar: CAD Modellierung | Ermüdung (Riss, Temperatur, etc.) |
| 4 | Seminar: 3D Druck Einführung und Durchführung | Vorlesung Nicht-Eisen Werkstoffe |
| 5 | Seminar: Zugversuche | Vorlesung Keramik |
| 6 | Seminar: Mikroskopanalyse | Polymere |
| 7 | Seminar: Aufbereitung der Daten | d |
| 8 | Seminar: Vorstellung der Ergebnisse | d |
| 9 | b | Vorlesung Grundlagen der Materialmodellierung |
| 10 | Seminar: Hooksches Gesetz | d |
| 11 | b | Vorlesung Legierung |
| 12 | Seminar: Normen anwenden | Faserverbunde |
| 13 | Seminar: Vortrag zum Material | Faserverbunde |
| 14 | Puffer | Seminar: Prüfungsvorbereitung |

Vorlesung I Wiederholung
Vorlesung II Physikalische Eigenschaften von Werkstoffen
Seminar I Berechnung Wärmedehnung, etc.
Vorlesung III Messung von Kenngrößen
Seminar II CAD Modellierung






Seminar V Mikroskopanalyse

Seminar VI Vorstellung der Ergebnisse


---



## Werkstoffe - Wiederholung



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

![bg right fit](https://leichtbau.dlr.de/wp-content/uploads/2022/03/boom_blank_be.png)

---

# Struktur von Werkstoffen

![bg right fit](https://wiki.arnold-horsch.de/images/6/6e/Strukturebene_Metall-2.jpg)



---

-	Atomistische Struktur (Art der atomaren Bausteine)
-	Feinstruktur (Bindungen zwischen den atomaren Bausteinen und deren geometrische An-ordnung)
-	Mikrostruktur (Gefüge – Bereiche geometrischer Anordnung, die im Werkstoffinnern durch Grenzflächen voneinander getrennt sind)
-	Makrostruktur (Grobstruktur – Gesamterscheinung eines Werkstoffes bei der Herstellung und dem Einsatz eines Bauteils)


---

![bg fit](https://upload.wikimedia.org/wikipedia/commons/0/00/Periodensystem_Einfach.svg)

---

## Relevante Gößen

**Ordnungszahl**
Zahl der Protonen im Kern
**Atommasse**
bestimmt die Masse des Elements
 Masse des Werkstoffs ist eine Kombination aus Atommasse und Dichte
**Elektronegativiät**
bestimmt ob Atome abgegeben oder aufgenommen werden in einer Bindung
metallische Bindungen eher links
kovalente Bindungen eher rechts



---

# Bindungen

## Hauptvalenzbindungen  
**Primärbindungen - hohe Bindungsenergie, starke Bindung**
-	Ionen- bzw. heteropolare Bindung 
-	Atom- bzw. homöopolare (oder kovalente) Bindung: polar (O-H) und unpolar (C-C, C-H)
-	Metallische Bindung

---

## Metallische Bindung

- Außenelektronen (Valenzelektronen) sind nur schwach gebunden 
- es bildet sich ein Gitter (periodisch angeordneten) positiver geladener Metallionen (Atomrümpfen)
- Außenelektronen  können sich innerhalb des Gitters nahezu frei bewegen, sogennantes **Elektronengas** 
- bewirkt: gute elektrische Leitfähigkeit + hohe Wärmeleitfähigkeit

![](https://upload.wikimedia.org/wikipedia/commons/4/41/Nuvola_di_elettroni.svg)


---

## Neben- oder Restvalenzbindungen 
**Sekundärbindungen - geringe Bindungsenergie, schwache Bindung**
-	van der Waals-Bindung: zwischenmolekulare Kräfte
-	Wasserstoffbrückenbindung: zwei Moleküle oder zwei geeignet weit voneinander getrennte Abschnitte eines Makromoleküls treten über Wasserstoffatome in Wechselwirkung 
- die Bindungsenergien sind ein bis zwei Zehnerpotenzen kleiner als die der Atombindungen.

---
Übung + Wiederholung

- Matrizen; Vektoren
- Determinanten; Inverse

Sympy - vorstellen

---

## Patenmaterial


---


