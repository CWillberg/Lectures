---
marp: true
theme: h2
header: 'Seminar – Fasern'
footer: ''
title: Faserverbundwerkstoffe – Seminar Fasern
author: Christian Willberg
paginate: true
math: katex
---

<style>
section {
  font-family: 'Segoe UI', sans-serif;
  font-size: 23px;
  padding: 38px 48px;
  color: #1e2a3a;
}
section h1 {
  font-size: 34px;
  color: #1a5276;
  padding-bottom: 8px;
  margin-bottom: 18px;
}
section h2 {
  font-size: 24px;
  margin-bottom: 12px;
}
section h3 {
  font-size: 20px;
  margin-bottom: 8px;
}
.aufgabe {
  background: #fdf2e9;
  border: 2px solid #e67e22;
  border-radius: 8px;
  padding: 14px 20px;
  margin: 10px 0;
}
.aufgabe strong {
  color: #d35400;
}
.loesung {
  background: #eafaf1;
  border-left: 4px solid #27ae60;
  padding: 12px 18px;
  margin: 10px 0;
  border-radius: 0 6px 6px 0;
}
.eq {
  background: #f4ecf7;
  border: 1px solid #c39bd3;
  border-radius: 8px;
  padding: 10px 20px;
  text-align: center;
  margin: 12px 0;
}
.hinweis {
  background: #eaf2f8;
  border-left: 4px solid #2e86c1;
  padding: 10px 16px;
  margin: 8px 0;
  border-radius: 0 6px 6px 0;
  font-size: 20px;
}
.zwei-spalten {
  display: flex;
  gap: 36px;
}
.zwei-spalten > div {
  flex: 1;
}
table {
  border-collapse: collapse;
  width: 100%;
  margin: 10px 0;
  font-size: 19px;
}
th {
  background: #1a5276;
  color: white;
  padding: 7px 12px;
  text-align: left;
}
td {
  padding: 6px 12px;
  border-bottom: 1px solid #d5dbdb;
}
tr:nth-child(even) td {
  background: #f2f3f4;
}
ul { padding-left: 20px; margin: 6px 0; }
li { margin-bottom: 4px; }
footer { font-size: 14px; color: #888; text-align: right; }
img[alt="ORCID"] {
  height: 15px !important; width: auto !important;
  vertical-align: top !important; display: inline !important; margin: 0 !important;
}
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}

</style>



# Seminar – Faserverbundwerkstoffe: Fasern
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/composites_0_seminar_/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>


---

# Aufgabe 1 – Faserform und Größeneffekt

<div class="aufgabe">

**a)** Nennen Sie vier geometrische und strukturelle Faktoren, die beeinflussen, ob eine Faser ihre theoretische Festigkeit erreicht.

**b)** Warum steigt die Zugfestigkeit von Glasfasern mit sinkendem Durchmesser? Nennen Sie zwei physikalische Gründe.

**c)** Im Grenzfall $d_f \rightarrow 0$ gilt: Die Festigkeit wird vollständig durch **Primärbindungen** bestimmt. Warum können dann keine Kerben mehr existieren?

**d)** Ein Konstrukteur wählt zwischen einer Glasfaser mit $d = 5\,\mu$m und $d = 24\,\mu$m. Welche ist für ein zugbelastetes Strukturbauteil besser geeignet, welche für eine druckbelastete schlanke Struktur? Begründen Sie.

</div>

---

<div class="loesung">

**a)** Größe (Durchmesser), Orientierung der Bindungen, Kerben und Fehlstellen, Eigenspannungen, Querschnittsform.

**b)** (1) Kleinere Fasern enthalten statistisch weniger und kleinere Fehlstellen – die Wahrscheinlichkeit eines kritischen Defekts sinkt. (2) Fehlstellen werden durch den Ziehprozess in Längsrichtung orientiert und abgeplattet → reduzierte Kerbwirkung.

**c)** Im Grenzfall besteht die Faser nur aus einer Molekülkette. Eine Kerbe benötigt eine räumliche Ausdehnung (mehrere Atome) – eine Einzelkette ist definitionsgemäß kerbfrei. Die Festigkeit wird nur durch die Stärke der kovalenten Primärbindungen entlang der Kette begrenzt.

**d)** $d = 5\,\mu$m → höhere Zugfestigkeit (weniger Fehlstellen) → besser für Zugbelastung. $d = 24\,\mu$m → größere Biegesteifigkeit der Einzelfaser → weniger knickanfällig → besser unter Druckbelastung.

</div>

---

# Aufgabe 2 – Fasertypen im Vergleich

<div class="aufgabe">

**a)** Ergänzen Sie die Tabelle mit den Begriffen: *niedrig / mittel / hoch / sehr hoch*

| Eigenschaft | E-Glas | HT-C-Faser | Aramid (Standard) |
|---|---|---|---|
| E-Modul | ? | ? | ? |
| Zugfestigkeit | ? | ? | ? |
| Dichte | mittel | ? | ? |
| Druckfestigkeit | hoch | ? | **sehr gering** |
| Preis | ? | ? | mittel |

**b)** Welche Faser ist für einen Blattfeder-Federlenker am besten geeignet? Begründen Sie mit zwei Materialeigenschaften.

**c)** Warum ist Aramidfaser trotz geringerer Dichte als C-Faser nicht immer die bessere Wahl für Leichtbaustrukturen?

</div>

---

<div class="loesung">

**a)**

| Eigenschaft | E-Glas | HT-C-Faser | Aramid (Standard) |
|---|---|---|---|
| E-Modul | niedrig | hoch | mittel |
| Zugfestigkeit | mittel | sehr hoch | hoch |
| Dichte | mittel | niedrig | sehr niedrig |
| Druckfestigkeit | hoch | mittel | sehr gering |
| Preis | niedrig | hoch | mittel |

**b)** E-Glasfaser: (1) niedriger E-Modul in Kombination mit hoher Bruchdehnung → ausgezeichnetes Federvermögen (Energie = $\frac{\sigma^2}{2E}$, kleines $E$ → viel Energie bei gleicher Spannung). (2) Hohe Zug- und Druckfestigkeit → Wechselbelastung ertragbar.

**c)** Aramidfaser hat sehr geringe Druckfestigkeit ($R^- \approx 20\%$ der Zugfestigkeit). In Biegestrukturen treten stets Druck- und Zugseiten auf → Aramidfaser versagt druckseitig früh. Außerdem: Wasseraufnahme, UV-Empfindlichkeit, schlechte Bearbeitbarkeit.

</div>

---

# Aufgabe 3 – Herstellung und Struktur

<div class="aufgabe">

**a)** Ordnen Sie die fünf Fertigungsstufen der C-Faser aus PAN in die richtige Reihenfolge und nennen Sie die Temperatur bzw. Atmosphäre jeder Stufe:

Schlichte · Graphitierung · Stabilisierung · Carbonisierung · Oberflächenbehandlung

**b)** Warum muss die Stabilisierung **unter Zugspannung** durchgeführt werden?

**c)** Ein Hersteller möchte eine C-Faser mit maximalem E-Modul. Bei welcher Temperatur wird graphitiert, und welchen Nachteil hat das für die Zugfestigkeit? (Hinweis: Tabelle HT vs. UHM)

**d)** Glasfasern besitzen an der Oberfläche **Druckeigenspannungen**. Erklären Sie den Entstehungsmechanismus beim Schmelzspinnen.

</div>

---

<div class="loesung">

**a)** Richtige Reihenfolge:

| Schritt | Stufe | T / Atmosphäre |
|---|---|---|
| 1 | Stabilisierung | 180–350 °C, Luft (oxidativ), unter Zug |
| 2 | Carbonisierung | bis 1500 °C, N₂, ohne Spannung |
| 3 | Graphitierung | 2000–3000 °C, Inertgas |
| 4 | Oberflächenbehandlung | nasschemisch oder thermisch >400 °C |
| 5 | Schlichte | Raumtemperatur |

**b)** PAN schrumpft beim Erhitzen. Ohne Zugspannung würden sich die Molekülketten ungeordnet zusammenziehen → keine Orientierung → schlechte Fasereigenschaften. Zug hält die Orientierung aufrecht.

**c)** Graphitierung bei ~3000 °C → UHM-Faser, $E \approx 450\,000$ N/mm². Nachteil: Zugfestigkeit sinkt (UHM: 2150 N/mm² vs. HT: 3430 N/mm²), da gröbere Kristallite und mehr Defekte zwischen den Schichten entstehen.

**d)** Die Faseroberfläche erstarrt zuerst (schlechte Wärmeleitfähigkeit des Glases). Der Kern kühlt später ab und schrumpft → zieht die bereits erstarrte Oberfläche zusammen → **Druckeigenspannungen** an der Oberfläche. Diese kompensieren äußere Zugspannungen und reduzieren die Kerbwirkung.

</div>

---

# Aufgabe 4 – Faser-Matrix-Grenzfläche & Schlichte

<div class="aufgabe">

**a)** Nennen Sie fünf Funktionen einer Faser-Schlichte.

**b)** Welche chemische Verbindungsklasse wird bei Glasfasern als Haftvermittler eingesetzt, und wie funktioniert sie prinzipiell?

**c)** Eine Verarbeiterin möchte GFK-Bauteile mit Lösungsmittel reinigen, bevor sie die Fasern tränkt. Warum ist das ein Fehler?

**d)** Warum ist die Grenzschicht (~200 nm) trotz ihrer geringen Dicke so bedeutsam? Nennen Sie einen quantitativen Hinweis aus der Vorlesung.

</div>

---

<div class="loesung">

**a)** (1) Fixierung der Filamente zu einem Bündel, (2) Schutz vor Abrasion bei der Verarbeitung, (3) Verbesserung der Verarbeitbarkeit (Reibung, Elektrostatik), (4) Verbesserung der Benetzbarkeit/Tränkbarkeit, (5) Haftvermittlung zwischen Faser und Matrix (coupling agent).

**b)** **Silane** – sie besitzen zwei funktionelle Gruppen: Eine Gruppe bindet chemisch an die SiO₂-Oberfläche der Glasfaser (Si-O-Si-Bindung), die andere Gruppe ist reaktionsfähig für die Copolymerisation mit dem Matrixharz → chemische Brücke zwischen Faser und Matrix.

**c)** Lösungsmittel greifen die Schlichte an oder lösen sie teilweise ab. Die Schlichte enthält den Haftvermittler – ohne ihn ist die Faser-Matrix-Haftung stark reduziert → Abminderung der interlaminaren Scherfestigkeit und Feuchtebeständigkeit des Laminats.

**d)** Die Grenzschicht ist zwar nur ~200 nm dünn, entspricht aber trotzdem **ca. 8 % des Matrixvolumens** im Verbund. Da ihre mechanischen Eigenschaften (durch Weichmacher-Wirkung der Schlichte) von der Bulk-Matrix abweichen können, hat sie einen erheblichen Einfluss auf die effektiven Verbundeigenschaften – besonders auf Scherfestigkeit und Temperatureinsatzgrenze.

</div>

---

# Aufgabe 5 – Halbzeuge und Faserauswahl

<div class="aufgabe">

**a)** Nennen Sie je einen Vorteil und einen Nachteil von **Gewebe** gegenüber **Multiaxialgelege (NCF)**.

**b)** Ein Bauteil soll in einem Schritt mit Fasern in 0°, 90°, +45° und −45° aufgebaut werden. Welches Halbzeug ist geeignet? Welches wäre bei einem einfachen UD-Bauteil ausreichend?

**c)** Ein Ingenieur plant folgendes Bauteil: Rennwagen-Monocoque, schlaggefährdet, hohe Steifigkeit, moderate Kosten. Welche **Faserkombination** würde die Vorlesung empfehlen? Begründen Sie.

**d)** Warum ist ein **Abreißgewebe** kein Verstärkungshalbzeug, und welchen konkreten Fertigungsvorteil bietet es gegenüber mechanischem Anschleifen?

</div>

---

<div class="loesung">

**a)**

| | Gewebe | NCF (Multiaxialgelege) |
|---|---|---|
| Vorteil | Schiebefest (Leinwand), drapierbar, bewährt | Kein Faserwelligkeit → bis 20 % höhere Festigkeit; mehrere Richtungen in einem Halbzeug |
| Nachteil | Faserkrümmung reduziert Druck- und Ermüdungsfestigkeit | Evtl. zu grob für dünnschichtige Laminate |

**b)** Für (0°/90°/±45°): **NCF** mit vier Lagen in einem Halbzeug. Für reines UD: einfaches UD-Gelege oder Roving.

**c)** **C-Faser + Aramidfaser als Mischgewebe**: C-Faser liefert die geforderte hohe Steifigkeit; Aramidfaser übernimmt die Zähigkeit und verhindert bei Schlagbelastung das vollständige Auseinanderbrechen. Die Kostenmehrung gegenüber reinem GFK ist für einen Rennwagen akzeptabel.

**d)** Das Abreißgewebe wird **vor** der Weiterverarbeitung abgezogen – es verbleibt nicht im Laminat. Es erzeugt eine große, gleichmäßig raue Klebfläche ($R_z \approx 60$–$100\,\mu$m), ohne dass angeschliffen werden muss. Vorteil: kein Schleifstaub, keine Gefahr lokaler Überhitzung oder Faserbeschädigung, reproduzierbare Oberflächenqualität.

</div>

---

## Zusammenfassung

| Thema | Kernaussage |
|---|---|
| Größeneffekt | Dünnere Fasern → weniger Fehlstellen → höhere Festigkeit |
| Orientierung | Primärbindungen längs ausrichten → anisotrop, aber maximal steif |
| Glasfaser | Günstig, guter Federwerkstoff, E-Modul begrenzt |
| C-Faser | Leicht, steif, teuer; E-Modul über Graphitierungstemperatur einstellbar |
| Aramidfaser | Leichteste Faser, zäh, geringe Druckfestigkeit |
| Schlichte | Haftvermittlung essentiell; nie mit Lösungsmitteln behandeln |
| Halbzeuge | NCF > Gewebe (Festigkeit); Gewebe besser drapierbar |
| Faserauswahl | Glas → Feder/Preis; C → Steifigkeit; Aramid/PE → Schlag/Zähigkeit |