---
marp: true
theme: h2
header: 'Stahlnormen & Werkstoffbezeichnung'
footer: ''
title: Werkstofftechnik II - Stahlnormen
author: Christian Willberg
paginate: false
math: katex
---

<style>
footer {
    font-size: 14px;
    color: #888;
    text-align: right;
}
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
.aufgabe {
    background: #fdf2e9;
    border: 2px solid #e67e22;
    border-radius: 6px;
    padding: 14px 20px;
    margin: 10px 0;
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
.warn {
    background: #fdf2f2;
    border-left: 4px solid #e74c3c;
    padding: 10px 16px;
    margin: 8px 0;
    border-radius: 0 6px 6px 0;
    font-size: 20px;
}
.zwei-spalten {
    display: flex;
    gap: 2rem;
}
.zwei-spalten > div {
    flex: 1;
}
table {
    border-collapse: collapse;
    width: 100%;
    font-size: 19px;
    margin: 10px 0;
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
</style>

## Werkstofftechnik II – Stahlnormen

Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/wst2_mb_w6_Seminar_Normen/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

Kontakt: christian.willberg@h2.de

---

<!--paginate: true-->


# Warum Normen?

## Das Problem ohne Norm

<div class="zwei-spalten">

<div>

Früher: Jeder Hersteller hatte eigene Namen
- **Krupp**: „Zähhart 3"
- **Thyssen**: „TN-55"
- **Böhler**: „K110"

→ Kein direkter Vergleich möglich
→ Importteile nicht zuordenbar
→ Konstrukteur muss Hersteller kennen

</div>

<div>

Heute: **EN 10027** (europäisch harmonisiert)
- Einheitliche Kurzzeichen
- Eindeutige Werkstoffnummern
- International übertragbar
- Grundlage für Datenblätter, CAD-Normen, Bestellungen

</div>

</div>

<div class="hinweis">

**Norm ≠ Hersteller.** Jeder Hersteller darf einen normierten Stahl produzieren – die Eigenschaften sind durch die Norm garantiert.

</div>

---

# Zwei Bezeichnungssysteme (EN 10027)

<div class="hinweis">

EN 10027 definiert **zwei parallele Systeme** – beide sind gleichwertig gültig:

</div>

| | System 1 | System 2 |
|---|---|---|
| **Basis** | Kurzname (Buchstaben + Zahlen) | Werkstoffnummer (1.xxxx) |
| **Beispiel** | S355JR | 1.0570 |
| **Beispiel** | C45 | 1.0503 |
| **Vorteil** | Lesbar, informativ | Eindeutig, datenbankfähig |
| **Nachteil** | Mehrere Namen möglich | Keine Info im Kürzel |

<div class="warn">

⚠️ **System 1 ist selbst nochmals unterteilt** – je nachdem, ob der Stahl nach **Verwendung/Einsatz** oder nach **chemischer Zusammensetzung** benannt wird.

</div>

---

# System 1 – Verwendung/Einsatz: Aufbau

Stähle werden durch **Hauptsymbol + Kennwert** beschrieben – ohne direkten Bezug zur Chemie:

```
S     355     J    R
│      │      │    └─ Zusatzsymbol (Lieferzustand, optional)
│      │      └─────── Gütegruppe (Kerbschlagzähigkeit)
│      └────────────── Kennwert (Mindest-Streckgrenze in MPa)
└───────────────────── Hauptsymbol (Werkstoffgruppe)
```

<div class="hinweis">

Der Kennwert ist immer eine **Mindesteigenschaft** aus der Norm – kein direkter Rückschluss auf C-Gehalt oder Legierungszusammensetzung möglich.

</div>

<div class="warn">

⚠️ **C** als Hauptsymbol bedeutet hier **nicht** Kohlenstoffgehalt, sondern **Kaltumformstahl** – nicht verwechseln mit dem C-Stahl-Schema der Zusammensetzungsklasse!

</div>

---

# System 1 – Verwendung/Einsatz: Hauptsymbole

| Symbol | Verwendung | Kennwert | Typisches Beispiel |
|---|---|---|---|
| **S** | Stahlbau (*structural*) | $R_{eH}$ / MPa | S235JR, S355J2 |
| **P** | Druckbehälterstahl | $R_{eH}$ / MPa | P265GH |
| **E** | Maschinenbaustahl | $R_{eH}$ / MPa | E295, E360 |
| **L** | Leitungsrohrstahl | $R_{eH}$ / MPa | L360, L415 |
| **H** | Kaltgewalztes Flachprodukt | $R_{eH}$ / MPa | H320LA |
| **Y** | Spannstahl | $R_m$ / MPa | Y1770 |
| **C** | Kaltumformstahl | Kennziffer | DC01, DC04 |
| **R** | Schienenstahl | $R_m$ / MPa | R260 |

<div class="hinweis">

**Praxis:** S-Stähle und P-Stähle dominieren im Ingenieurwesen. S355J2 ist der meistverwendete Baustahl in Europa.

</div>

---

### Unlegierte Stähle

Stähle mit **keinem Legierungselement > 1 %** – Kennzeichnung allein über den Kohlenstoffgehalt:

```
C  45
│   └── C-Gehalt × 100  →  0,45 % C
└─────── Symbol für Kohlenstoffstahl
```

<div class="eq">

$$C_{\%} = \frac{\text{Zahl}}{100} \qquad \Rightarrow \qquad \text{C45:}\; C = \frac{45}{100} = 0{,}45\,\%$$

</div>

| Bezeichnung | C-Gehalt | Typische Eigenschaft | Anwendung |
|---|---|---|---|
| C15 | 0,15 % | zäh, einsatzhärtbar | Bolzen, Buchsen |
| C35 | 0,35 % | vergütbar, mittelfest | Hebel, Flansche |
| C45 | 0,45 % | gut zerspanbar, vergütbar | Wellen, Bolzen |
| C60 | 0,60 % | hart, verschleißfest | Federn, Messer |



---

### Niedriglegierte Stähle

Mindestens ein Legierungselement, aber **alle < 5 %** – Gehalt wird über einen **Divisor** kodiert:

```
42   Cr  Mo   4
│     │   │   └── Divisorzahl  →  Cr ÷ 4 = 1,0 %
│     └───┘─────── Legierungselemente (alphabetisch)
└───────────────── C-Gehalt × 100  →  0,42 % C
```

<div class="eq">

$$\text{Legierungsgehalt} = \frac{\text{Zahl im Namen}}{\text{Divisor}}$$

</div>

| Element(gruppe) | Divisor | Beispiel |
|---|---|---|
| Cr, Co, Mn, Ni, Si, W | **4** | 42CrMo**4** → Cr = 4/4 = **1,0 %** |
| Al, Cu, Mo, Nb, Ti, V, Zr | **10** | 15CrNi**6** – Mo würde ÷ 10 gerechnet |
| N, P, S | **100** | selten im Namen |
| B | **1000** | Spurenelement, sehr wirksam |


---

### Hochlegierte Stähle

Mindestens ein Legierungselement **≥ 5 %** – Präfix **X**, Gehalte **direkt in %** (kein Divisor):

```
X   5   Cr  Ni  18 - 10
│   │    │   │   │    └── Ni-Gehalt: 10 %
│   │    │   │   └─────── Cr-Gehalt: 18 %
│   │    └───┘─────────── Legierungselemente (alphabetisch)
│   └──────────────────── C-Gehalt × 100  →  0,05 % C
└──────────────────────── Hochlegiert (mind. 1 Element ≥ 5 %)
```

<div class="hinweis">

**Kein Divisor!** Gehalte stehen direkt im Namen. Das ist der wichtigste Unterschied zu niedriglegierten Stählen.

</div>

| Bezeichnung | C / % | Hauptlegierung | Typ | Anwendung |
|---|---|---|---|---|
| X5CrNi18-10 | 0,05 | 18 % Cr, 10 % Ni | Austenitisch | Küche, Medizin, Chemie |
| X20Cr13 | 0,20 | 13 % Cr | Martensitisch | Turbinen, Messer |
| X40CrMoV5-1 | 0,40 | 5 % Cr, 1 % Mo | Warmarbeit | Druckgusswerkzeuge |
| X153CrMoV12 | 1,53 | 12 % Cr | Kaltarbeit | Stanzwerkzeuge |

---

# System 2 – Werkstoffnummer

<div class="zwei-spalten">

<div>

## Aufbau nach EN 10027-2



```
1 . 0 5 7 0
│   │ │ └─── Zählnummer (zweistellig)
│   │ └───── Stahlsortenklasse (einstellig)
│   └─────── Stahlgruppe (einstellig)
└─────────── Werkstoffhauptnummer (Stahl = 1)
```
</div>

<div>


## Wichtige Stahlgruppen (erste Stelle nach Punkt)

| Ziffer | Gruppe |
|---|---|
| 0 | Unlegierte Grundstähle |
| 1 | Unlegierte Qualitätsstähle |
| 2 | Unlegierte Edelstähle |
| 3–8 | Legierte Stähle (nach Element) |
| 4, 5 | Nichtrostende Stähle (Cr > 10,5 %) |
| 7 | Schnellarbeitsstähle |



---

# Überblick Stahlgruppen

## Systematik nach Verwendung und Eigenschaft

<div class="zwei-spalten">

<div>

### Unlegierte Stähle
- **Baustähle** S185–S690: Tragwerke, Rohre
- **Maschinenbaustähle** E295–E360: Wellen, Achsen
- **C-Stähle** C10–C80: Vergüten, Einsatzhärten
- **Automatenstähle** 11SMn30: Massenfertigung (CNC)



</div>

<div>

### Niedriglegierte Stähle
- **Vergütungsstähle** 42CrMo4: Zahnräder, Schrauben
- **Einsatzstähle** 16MnCr5: Getriebe, Bolzen
- **Federstähle** 51CrV4: Blattfedern, Spiralfedern

</div>

</div>

---


# Überblick Stahlgruppen

## Systematik nach Verwendung und Eigenschaft

<div class="zwei-spalten">

<div>

### Hochlegierte Stähle
- **Nichtrostend austenitisch** X5CrNi18-10: Korrosion
- **Nichtrostend martensitisch** X20Cr13: Festigkeit + Korrosion
- **Werkzeugstähle** X155CrVMo12-1: Kaltarbeit
- **Schnellarbeitsstahl** HS6-5-2: Bohrer, Fräser
- **Warmarbeitsstahl** X40CrMoV5-1: Druckguss

</div>

<div>



### Sonderstähle
- **Duplex** X2CrNiMoN22-5-3: Offshore, Chemie
- **Superlegierungen**: Triebwerke, Kraftwerke

</div>

</div>


---

# Kerbschlagzähigkeit – Gütegruppen

## Bedeutung der Buchstaben bei Baustählen

Bei Stählen der Gruppe **S** gibt ein Buchstabe die garantierte Kerbschlagarbeit bei einer bestimmten Temperatur an:

| Symbol | Temperatur | Kerbschlagarbeit |
|---|---|---|
| **JR** | +20 °C | ≥ 27 J |
| **J0** | 0 °C | ≥ 27 J |
| **J2** | −20 °C | ≥ 27 J |
| **K2** | −20 °C | ≥ 40 J |
| **M** | −20 °C | Thermomechanisch gewalzt |
| **N** | −20 °C | Normalgeglüht |

<div class="warn">

⚠️ **Duktil-spröd-Übergang bei Stahl liegt oft zwischen 0 °C und −40 °C!** Die Wahl der Gütegruppe ist sicherheitsrelevant (z. B. Brücken im Winter, Offshore-Anlagen).

</div>

---

# Wärmebehandlungszustände

## Zusatzsymbole für den Lieferzustand

| Symbol | Bedeutung | Beispiel |
|---|---|---|
| **+A** | Weichgeglüht | C60+A → bearbeitbar |
| **+N** | Normalgeglüht | S355+N |
| **+Q** | Vergütet (gehärtet + angelassen) | 42CrMo4+QT |
| **+QT** | Vergütet (Quenched & Tempered) | 34CrNiMo6+QT |
| **+C** | Kaltverfestigt | C-Stähle als Draht |
| **+H** | Einsatzgehärtet | 16MnCr5+H |
| **+S** | Spannungsarmgeglüht | Schweißkonstruktionen |

<div class="hinweis">

**Vergüten = Härten + Anlassen.** Ergebnis: hohe Festigkeit UND noch ausreichende Zähigkeit. Typisch für Getriebe- und Motorenteile.

</div>

---

# Wichtige Stahlsorten im Überblick

| Bezeichnung | Nr. | Typ | $R_m$ / MPa | Anwendung |
|---|---|---|---|---|
| S235JR | 1.0037 | Baustahl | 360–510 | Stahlbau allgemein |
| S355J2 | 1.0570 | Baustahl | 470–630 | Brücken, Kranträger |
| C45+QT | 1.0503 | Vergütungsstahl | 700–850 | Wellen, Bolzen |
| 42CrMo4+QT | 1.7225 | Verg.-stahl leg. | 900–1100 | Schrauben, Zahnräder |
| 16MnCr5+H | 1.7131 | Einsatzstahl | ~800 (Kern) | Zahnräder (Kern zäh) |
| X5CrNi18-10 | 1.4301 | Austenitisch | 500–700 | Lebensmittel, Medizin |
| X20Cr13 | 1.4021 | Martensitisch | 700–900 | Turbinen, Messer |
| HS6-5-2 | 1.3343 | Schnellstahl | ~900 HV | Bohrer, Fräser |


---

---

# Anwendungsübung 1 – Bezeichnung lesen

<div class="aufgabe">

**Aufgabe:** Lesen Sie die folgenden Stahlbezeichnungen und geben Sie an: Stahlgruppe, C-Gehalt (falls ableitbar), Legierungselemente, besondere Anforderungen.

1. **S355J2**
2. **C45+QT**
3. **42CrMo4**
4. **X5CrNi18-10**
5. **16MnCr5+H**

</div>

---

# Anwendungsübung 1 – Lösung

<div class="loesung">

**S355J2:**  Baustahl (S), $R_{eH} \geq 355\,\text{MPa}$, Kerbschlagarbeit ≥ 27 J bei −20 °C (J2); kein C-Gehalt ablesbar

**C45+QT:** Unlegierter C-Stahl, $C = 0{,}45\,\%$; Lieferzustand: vergütet (gehärtet + angelassen)

**42CrMo4:** Niedriglegierter Vergütungsstahl; $C = 0{,}42\,\%$; $\text{Cr} = \frac{4}{4} = 1{,}0\,\%$; Mo ohne Zahl → Spurenelement / kleiner Anteil (~0,2 %)

**X5CrNi18-10:** Hochlegiert (X); $C = 0{,}05\,\%$; Cr = 18 %, Ni = 10 %; austenitischer Edelstahl

**16MnCr5+H:** Einsatzstahl; $C = 0{,}16\,\%$; $\text{Mn} = \frac{5}{4} = 1{,}25\,\%$; Cr Spurenelement; einsatzgehärtet (H)

</div>

---

# Anwendungsübung 2 – Werkstoffauswahl

<div class="aufgabe">

**Aufgabe:** Wählen Sie einen geeigneten Stahl für jede Anwendung und begründen Sie Ihre Wahl.

| Nr. | Anwendung | Anforderungen |
|---|---|---|
| a | Träger einer Straßenbrücke (Norddeutschland, Winter bis −15 °C) | Festigkeit, Zähigkeit bei tiefen T |
| b | Antriebswelle im Getriebe (hochbelastet, $R_m > 900\,\text{MPa}$) | Festigkeit, Ermüdung |
| c | Besteckfertigung (Lebensmittelkontakt, Korrosion) | Korrosion, Hygiene |
| d | Spiralbohrer für Metallbearbeitung | Härte, Warmhärte |
| e | Zahngrat eines Stirnrads (Oberfläche hart, Kern zäh) | Verschleiß + Zähigkeit |

</div>

---

# Anwendungsübung 2 – Lösung

<div class="loesung">

**a – Straßenbrücke, −15 °C:**  → **S355J2** (1.0570)
Streckgrenze 355 MPa, J2 = 27 J Kerbschlagarbeit bei −20 °C ✓

**b – Antriebswelle, $R_m > 900\,\text{MPa}$:**  → **42CrMo4+QT** (1.7225)
Vergütungsstahl, Rm 900–1100 MPa im QT-Zustand, gute Ermüdungsfestigkeit ✓

**c – Besteck, Lebensmittel:**  → **X5CrNi18-10** (1.4301)
Austenitisch, nichtrostend, lebensmittelecht (EU-Verordnung), gut polierbar ✓

**d – Spiralbohrer:**  → **HS6-5-2** (1.3343)
Schnellarbeitsstahl, Warmhärte bis ~600 °C, Standzeit beim Zerspanen ✓

**e – Stirnrad (Oberfläche hart, Kern zäh):**  → **16MnCr5+H** (1.7131)
Einsatzgehärtet: Randschicht gehärtet (60–62 HRC), Kern zäh (~350 HB) ✓

</div>

---

# Anwendungsübung 3 – Werkstoffnummer

<div class="aufgabe">

**Aufgabe:** Ordnen Sie die Werkstoffnummern den Kurzbezeichnungen zu und nennen Sie eine typische Anwendung.

| Werkstoffnummer | Kurzbezeichnung (Wahl) | Anwendung |
|---|---|---|
| 1.0037 | ? | ? |
| 1.7225 | ? | ? |
| 1.4301 | ? | ? |
| 1.3343 | ? | ? |
| 1.0503 | ? | ? |

*Zur Auswahl:* C45, S235JR, X5CrNi18-10, HS6-5-2, 42CrMo4

</div>

---

# Anwendungsübung 3 – Lösung

<div class="loesung">

| Werkstoffnummer | Kurzbezeichnung | Anwendung |
|---|---|---|
| **1.0037** | S235JR | Allgemeiner Stahlbau, Winkelprofile, Rohre |
| **1.7225** | 42CrMo4 | Schrauben (Kl. 10.9), Getriebewellen, Pleuel |
| **1.4301** | X5CrNi18-10 | Spültisch, Operationsbesteck, Lebensmittelbehälter |
| **1.3343** | HS6-5-2 | Spiralbohrer, Gewindeschneider, Fräser |
| **1.0503** | C45 | Wellen, Bolzen, Hebel (oft +QT oder normalisiert) |

</div>

<div class="hinweis">

**Tipp für die Praxis:** Werkstoffnummern (1.xxxx) sind die zuverlässigste Suchgröße in Datenbanken – Kurznamen können je nach Norm-Edition leicht variieren.

</div>

---

# Anwendungsübung 4 – Kerbschlagzähigkeit

<div class="aufgabe">

**Aufgabe:** Ein Kranträger soll bei −10 °C im Außenbereich eingesetzt werden.

1. Welche Gütegruppe muss mindestens gewählt werden?
2. Ist **S235JR** geeignet? Begründen Sie.
3. Schlagen Sie eine geeignete Bezeichnung vor.
4. Warum ist dieser Nachweis bei Stahl besonders wichtig (Stichwort: Duktil-spröd-Übergang)?

</div>

---

<div class="loesung">

1. Bei −10 °C: Mindestens **J0** (27 J bei 0 °C) oder besser **J2** (27 J bei −20 °C)
2. **S235JR** ist **nicht geeignet** – JR garantiert 27 J nur bei +20 °C; bei −10 °C ggf. spröd
3. → **S235J0** oder **S355J2** (je nach Festigkeitsanforderung)
4. Stahl zeigt unterhalb der **DBTT** (*ductile-to-brittle transition temperature*) schlagartigen Festigkeitsverlust → Sprödbruch ohne plastische Vorwarnung. Beispiel: Liberty-Schiffe (WWII) – Brüche bei niedrigen Temperaturen durch ungeeigneten Stahl.

</div>

---

# Anwendungsübung 5 – Legierungsgehalt berechnen

<div class="aufgabe">

**Aufgabe:** Berechnen Sie den Chromgehalt aus der Norm-Bezeichnung und vergleichen Sie mit dem Datenblatt.

Gegeben: **X20Cr13**, Datenblattwert: Cr = 12–14 %

1. Welcher Cr-Gehalt ergibt sich aus dem Namen?
2. Passt das zur Norm-Logik für X-Stähle?
3. Was ist der C-Gehalt laut Bezeichnung?
4. Warum heißt dieser Stahl „martensitisch nichtrostend"?

</div>

---

<div class="loesung">

1. X-Stähle: Gehalt direkt → **Cr = 13 %** → liegt in [12–14 %] ✓
2. Ja – bei hochlegierten Stählen (X-Präfix) werden Gehalte direkt angegeben, kein Divisor
3. $C = \frac{20}{100} = 0{,}20\,\%$ C → relativ hoch für einen nichtrostenden Stahl
4. Cr > 10,5 % → Passivschicht (nichtrostend); C = 0,2 % → bei Abschrecken aus dem Austenitgebiet entsteht **Martensit** → hohe Härte (möglich durch C-Übersättigung)

</div>

---

# Zusammenfassung – Stahlnormen

<div class="zwei-spalten">

<div>

### System 1 – Kurzname
- **Baustähle**: S + Streckgrenze + Gütegruppe
- **C-Stähle**: C + (C% × 100)
- **Niedriglegiery**: C% × 100 + Elemente + Divisorzahl
- **Hochlegiert**: X + C% × 100 + Elemente direkt in %

### Lieferzustände (wichtigste)
- **+QT**: vergütet → hohe Festigkeit
- **+N**: normalgeglüht → homogen
- **+H**: einsatzgehärtet → Rand hart, Kern zäh
- **+A**: weichgeglüht → gut bearbeitbar

</div>

<div>

### Auswahlpfad

```
Anforderung definieren
        ↓
Festigkeit nötig? → Rm, Rp0,2
        ↓
Temperatur? → Gütegruppe JR/J0/J2
        ↓
Korrosion? → X-Stähle
        ↓
Randschicht? → Einsatzstahl +H
        ↓
Datenbank: Werkstoffnummer prüfen
```

<div class="warn">

⚠️ **Merken:** Normbezeichnung ≠ Eigenschaft ohne Lieferzustand. C45 im Normalzustand ≠ C45+QT – der Zustand verdoppelt ggf. die Festigkeit!


</div>
</div>

</div>

