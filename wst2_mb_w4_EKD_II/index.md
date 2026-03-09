---
marp: true
theme: h2
header: 'Werkstofftechnik II'
footer: ''
title: Werkstofftechnik II – Stahl Teil 2
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
</style>

## Werkstofftechnik II
Prof. Dr.-Ing. Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/wst2_mb_w4_EKD_II/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>




Kontakt: christian.willberg@h2.de


---
<!--paginate: true-->




## Inhalte – Vorlesung 2

- **4.1.3 Bezeichnungssystem für Stähle**
  - Einteilung nach DIN EN 10020
  - Werkstoffnummern (DIN EN 10027-2)
  - Kurznamen nach chemischer Zusammensetzung (DIN EN 10027-1)
- **4.1.4 Ausgewählte Stahllegierungen**
  - Einsatzstähle
  - Vergütungsstähle
  - Federstähle, Werkzeugstähle, Wälzlagerstähle
  - Nichtrostende Stähle

---

## Wiederholung: Was bestimmt die Stahleigenschaften?

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Aus Vorlesung 1:**

| Prozess | Ergebnis |
|---|---|
| Langsame Abkühlung | Ferrit + Perlit (zäh) |
| Schnelle Abkühlung | Martensit (hart, spröde) |
| Härten + Anlassen | angelassener Martensit (fest + zäh) |
| Einsatzhärten | harte Randschicht + zäher Kern |

**Stellschrauben für Eigenschaften:**
- **C-Gehalt** → bestimmt Härtbarkeit und Festigkeit
- **Legierungselemente** → beeinflussen Härtbarkeit, Korrosion, Temperaturbeständigkeit
- **Wärmebehandlung** → stellt Gefüge und Eigenschaften ein

</div>
<div>

**Heute:** Wie werden diese Stähle **systematisch bezeichnet** und **welche Sorten** gibt es?

```
Stahl
 ├── unlegiert
 │    ├── Qualitätsstahl
 │    └── Edelstahl
 ├── nichtrostend (Cr ≥ 10,5 %)
 │    ├── Qualitätsstahl
 │    └── Edelstahl
 └── andere legierte
      ├── Qualitätsstahl
      └── Edelstahl
```

</div>
</div>

---

## 4.1.3 Einteilung nach DIN EN 10020

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

### Drei Stahlklassen

**Unlegierte Stähle**
- Keiner der Grenzwerte in der Tabelle wird erreicht

**Nichtrostende Stähle**
- Cr-Gehalt **≥ 10,5 %**
- C-Gehalt ≤ 1,2 %
- Eigene Klasse wegen besonderer Bedeutung

**Andere legierte Stähle**
- Mindestens ein Grenzwert erreicht
- Entsprechen nicht nichtrostenden Stählen

</div>
<div>

**Grenzwerte (Gew.-%) zur Einteilung:**

| Element | Grenzwert |
|---|---|
| Mn | 1,65 |
| Si | 0,60 |
| Cu | 0,40 |
| Cr, Ni, Al, Co, W | 0,30 |
| V | 0,10 |

> Wird **keiner** dieser Werte erreicht → unlegierter Stahl
> Wird **mindestens einer** erreicht → legierter Stahl

</div>
</div>

---

## Qualitätsstähle und Edelstähle

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

### Qualitätsstähle
Erfüllen bestimmte **sortenabhängige** Anforderungen, z.B.:
- Zähigkeit (Feinkornbaustähle)
- Schweißeignung
- Magnetische Eigenschaften (Elektrobleche)

**Wichtig:** Qualitätsstähle sind i. A. **nicht zum Vergüten** vorgesehen – unzureichende Materialhomogenität würde zu stark schwankenden Eigenschaften führen

### Edelstähle
Darüber hinausgehende Qualitätsmerkmale (DIN EN 10020):
- Sehr geringe nichtmetallische Einschlüsse
- P- und S-Gehalt ≤ 0,025 %
- Besonders enge Streckgrenztoleranzen
- Auf Grund Homogenität meist **vergütbar**

</div>
<div>

> ⚠️ **Sprachfalle:**
> „Edelstahl" im technischen Sinne bedeutet **hohe Reinheit und Homogenität** –
> **nicht** (wie im Volksmund) „nichtrostender Stahl"!

**Vorkommen:**

| | unlegiert | legiert |
|---|---|---|
| Qualitätsstahl | ✓ häufig | ✓ selten |
| Edelstahl | ✓ wenige | ✓ fast alle |

> Unlegierte Qualitätsstähle: z. B. Baustähle S235, S355
> Unlegierte Edelstähle: z. B. C45 (für Vergüten)
> Legierte Edelstähle: fast alle Cr-, Ni-, Mo-legierten Stähle

</div>
</div>

---

## Werkstoffnummern – DIN EN 10027-2

**Aufbau:**
$$\underbrace{1}_{\text{Werkstoffgruppe}}.\underbrace{XXXX}_{\text{spezifische Sorte}}$$

**Werkstoffhauptgruppen:**

| WN | Werkstoffgruppe | Beispiele |
|---|---|---|
| **1**.XXXX | Stähle | 1.0503 = C45 |
| **2**.XXXX | Schwermetalle außer Eisen | Ni, Co, Cu, Edelmetalle |
| **3**.XXXX | Leichtmetalle | Al, Mg, Ti |

**Vorteile der Werkstoffnummer:**
- Eindeutig und **sprachunabhängig**
- International verwendbar
- Reihenfolge: 1.0xxx = unlegierte Qualitätsstähle, 1.1xxx = unlegierte Edelstähle, 1.7xxx = legierte Stähle mit Cr ...

---

## Kurznamen: Unlegierte Stähle mit Mn < 1 %

**Aufbau:**
$$\underbrace{C}_{\text{Kennbuchstabe}} \quad \underbrace{35}_{\text{C-Gehalt} \times 100}$$

**Beispiele:**

| Kurzname | C-Gehalt | Bedeutung |
|---|---|---|
| **C10** | 0,10 % | Einsatzstahl |
| **C15** | 0,15 % | Einsatzstahl |
| **C35** | 0,35 % | Vergütungsstahl |
| **C45** | 0,45 % | Vergütungsstahl |
| **C60** | 0,60 % | Federstahl |
| **C110** | 1,10 % | Werkzeugstahl |

> Der Buchstabe **C** steht für Kohlenstoff (lat. *carboneum*) – zugleich das wichtigste Legierungselement

---

## Kurznamen: Unlegierte Stähle mit Mn ≥ 1 % und legierte Stähle (alle Elemente < 5 %)

**Aufbau:**
$$\underbrace{34}_{\text{C-Gehalt} \times 100} \quad \underbrace{Cr}_{\text{Element 1}} \underbrace{Mo}_{\text{Element 2}} \quad \underbrace{4}_{\text{Gehalt} \times \text{Faktor}}$$

**Faktoren für Gehaltsangabe:**

| Element | Faktor | Rechenbeispiel |
|---|---|---|
| Cr, Co, Mn, Ni, Si, W | **4** | Mn**6** → 6/4 = **1,5 % Mn** |
| Al, Cu, Mo, Nb, Ta, Ti, V, Zr | **10** | Mo**2** → 2/10 = **0,2 % Mo** |
| C, P, S, N | **100** | C**35** → 35/100 = **0,35 % C** |
| B | **1000** | B**1** → 1/1000 = **0,001 % B** |

**Beispiel: 34CrMo4**
→ 0,34 % C | 1,0 % Cr | ~0,2 % Mo (aus Tabellenwerk)

---

## Kurznamen: Hochlegierte und nichtrostende Stähle

**Gruppe: mindestens ein Element ≥ 5 % → Kennbuchstabe X**

$$\underbrace{X}_{\geq 5\,\%} \quad \underbrace{5}_{\text{C} \times 100} \quad \underbrace{CrNi}_{\text{Elemente}} \quad \underbrace{18\text{-}10}_{\text{Gehalt direkt in \%}}$$

→ **X5CrNi18-10:** 0,05 % C | 18 % Cr | 10 % Ni

**Weitere Beispiele:**

| Kurzname | C [%] | Cr [%] | Sonstiges | Volksname |
|---|---|---|---|---|
| X5CrNi18-10 | 0,05 | 18 | 10 % Ni | V2A-Stahl |
| X6Cr13 | 0,06 | 13 | – | ferritisch niro |
| X39Cr13 | 0,39 | 13 | – | Messerklingen |
| X90CrMoV18 | 0,90 | 18 | Mo, V | Chirurgie-Instr. |

---

## Kurznamen: Schnellarbeitsstähle

**Kennbuchstaben: HS** (= „High Speed Steel")

**Aufbau:** HS – W – Mo – V – Co (Gehalte in %, durch Bindestriche getrennt)

$$HS \underbrace{6}_{\text{W\%}} - \underbrace{5}_{\text{Mo\%}} - \underbrace{2}_{\text{V\%}}$$

**Beispiele:**

| Kurzname | WN | W [%] | Mo [%] | V [%] | Co [%] | Anwendung |
|---|---|---|---|---|---|---|
| HS6-5-2 | 1.3343 | 6 | 5 | 2 | – | Fräser, Spiralbohrer |
| HS12-1-4-5 | 1.3202 | 12 | 1 | 4 | 5 | Drehmeißel (Automat) |
| HS16-1-2-10 | 1.3265 | 16 | 1 | 2 | 10 | Hochbeanspruchte Fräser |
| HS2-9-1-8 | – | 2 | 9 | 1 | 8 | Schnellarbeitsstahl |

> W, Mo, V bilden **hochtemperaturfeste Karbide** → Schneidkante bleibt bis ~600 °C hart

---

## Übersicht: Gesamtes Bezeichnungssystem

| Gruppe | Kennzeichen | Beispiel | Inhalt |
|---|---|---|---|
| Unleg., Mn < 1 % | **C** + Zahl | C35 | 0,35 % C |
| Unleg./leg., alle < 5 % | Zahl + Elemente + Zahlen | 34CrMo4 | 0,34 % C, 1 % Cr |
| Leg., mind. 1 × ≥ 5 % | **X** + Zahl + Elemente | X5CrNi18-10 | 0,05 % C, 18 % Cr, 10 % Ni |
| Schnellarbeitsstahl | **HS** + Zahlenfolge | HS6-5-2 | W-Mo-V in % |

> **Merkhilfe:** X = extra (viel Legierung) | HS = High Speed | C = Kohlenstoff

---

## 4.1.4 Einsatzstähle – Prinzip

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Kennzeichen:** C-Gehalt **0,1–0,2 %**

**Warum geringer C-Gehalt?**
- Beim Härten: kein Verspröden → **Kern bleibt duktil**
- Kein nachfolgendes Anlassen nötig

**Prozess: Einsatzhärten**

1. Bauteil erwärmen: 900–1000 °C (γ-Gebiet)
2. **Aufkohlende Atmosphäre** (z. B. CO/H₂-Gemisch):
$$\text{CO} + \text{H}_2 \rightarrow \text{C} + \text{H}_2\text{O}$$
3. C diffundiert in Randschicht: ~0,1–0,2 mm tief
4. **Abschrecken:** Randschicht wird martensitisch

</div>
<div>

**Ergebnis:**

```
Bauteilquerschnitt
────────────────────────────
|  Randschicht  |   Kern   |
| Martensit     | α + Perlit|
| (hart, 60 HRC)| (zäh)    |
────────────────────────────
  ←~0,2 mm→  ←────────────→
```

**Typische Anwendungen:**
- Zahnräder (verschleißfeste Zahnflanken + zäher Zahn)
- Nockenwellen
- Kolbenbolzen

> Kombination: **harte Oberfläche + zäher Kern** – in dieser Form durch kein anderes Verfahren so elegant erreichbar

</div>
</div>

---

## Einsatzstähle – Beispiele

| Legierung | WN | $R_e$ [MPa] | $A$ [%] | Anwendungen |
|---|---|---|---|---|
| C10 | 1.0301 | 295 | 16 | Schrauben, Bolzen, Gabeln, Gelenke, Buchsen |
| C15 | 1.0401 | 355 | 14 | Nockenwellen, Kolbenbolzen, Treib- und Kuppelzapfen |
| 15Cr3 | 1.7015 | 440 | 11 | Zahnräder, Spindeln, Wellen, Messzeuge |
| 16MnCr5 | 1.7131 | 590 | 10 | Zahnräder, Spindeln, Wellen, Messzeuge |

> Mechanische Eigenschaften nach dem Einsatzhärten – gemessen im **Kern**

**Lesehilfe 16MnCr5:**
16/100 = **0,16 % C** | Mn5/4 = **1,25 % Mn** | Cr: Geringmenge (nicht quantifiziert)

---

## Vergütungsstähle – Prinzip

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Kennzeichen:** C-Gehalt **0,2–0,6 %**

**Prozess: Vergüten = Härten + Anlassen**

| Schritt | Temperatur | Ergebnis |
|---|---|---|
| Austenitisieren | 800–900 °C | γ-Gefüge |
| Abschrecken | schnell | Martensit (hart, spröde) |
| Anlassen | **500–650 °C** | angelassener Martensit |

**Anlassen bewirkt:**
- Ausscheidung feiner **Fe₃C-Teilchen**
- Abbau der Gitterverzerrung
- Feines Gefüge: Martensitnadeln + Ausscheidungen
- → **günstigste Kombination** aus Festigkeit und Duktilität

</div>
<div>

**Einfluss der Anlasstemperatur:**

```
Anlasstemperatur →
150°C   400°C   650°C
  ↓       ↓       ↓
Festigkeit:  ████  ███   ██
Duktilität:  █     ██    ████
```

**Typische Kennwerte:**
- $R_e$: 350–1100 MPa
- $A_{80}$: 9–20 %
- Anlasstemperatur: 500–650 °C

> **Voraussetzungen:** ausreichender C-Gehalt **und** homogene C-Verteilung im Gefüge

</div>
</div>

---

## Vergütungsstähle – Beispiele und Härtbarkeit

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

| Legierung | WN | $R_e$ [MPa] | $R_m$ [MPa] | $A_{80}$ [%] |
|---|---|---|---|---|
| C45 | 1.0503 | 370 | 630–780 | 17 |
| 34CrMo4 | 1.7220 | 550 | 800–950 | 14 |
| 30CrNiMo8 | 1.6580 | 900 | 1100–1300 | 10 |

**Anwendungen:**
- **C45:** Schrauben, Achsen, Kurbeln, Zahnräder
- **34CrMo4:** große Kurbelwellen, Getriebe­wellen, Schnecken
- **30CrNiMo8:** höchstbeanspruchte Teile, Ventilfedern

</div>
<div>

**Härtbarkeit und Bauteilgröße:**

- Unlegierte Stähle: nur C muss diffundieren → **schnelle Perlitbildung** → schwer vollständig zu härten
- Legierte Stähle (Cr, Mo): auch Legierungselemente diffundieren → **verzögerte Perlitbildung** → Martensit auch im Kern

```
Unlegiert (C45):
[Martensit|Ferrit+Perlit|Ferrit+Perlit]
            ↑ Kern bei größeren Querschnitten

Legiert (34CrMo4):
[Martensit | Martensit  | Martensit   ]
```

> → Legierte Vergütungsstähle für **große Bauteilquerschnitte** bevorzugt

</div>
</div>

---

## Federstähle, Werkzeugstähle, Wälzlagerstähle – Überblick

**Zunehmende Anforderungen an Härte und Verschleißbeständigkeit:**

| Gruppe | C-Gehalt | Anlasstemp. | Max. Einsatztemp. | Hauptziel |
|---|---|---|---|---|
| Vergütungsstähle | 0,2–0,6 % | 500–650 °C | – | Festigkeit + Duktilität |
| **Federstähle** | 0,4–1,0 % | 300–475 °C | – | Elastizität, Dauerfestigkeit |
| **Kaltarbeitsstähle** | 0,6–1,2 % | 175–300 °C | ~200 °C | Härte + Verschleiß |
| **Warmarbeitsstähle** | 0,6–1,2 % | 175–300 °C | > 200 °C | Hochtemp.-Verschleiß |
| **Schnellarbeitsstähle** | 0,6–1,2 % | 175–300 °C | ~600 °C | hohe Schnittgeschw. |
| **Wälzlagerstähle** | 0,8–1,2 % | 100–250 °C | – | maximale Verschleißfest. |

> Faustregel: Je höher die Anforderung an **Verschleißbeständigkeit**, desto höher C-Gehalt und desto niedriger Anlasstemperatur

---

## Federstähle

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Anforderungen:**
- Hohe **Dauerfestigkeit** (zyklische Belastung)
- Hohe **Streckgrenze** (keine bleibende Verformung)
- Ausreichende **Duktilität** (kein Sprödbruch)

**Kennwerte (Beispiel 56SiCr7, bei 450 °C angelassen):**
- Dehngrenze: **1350 MPa**
- Bruchdehnung: **6 %**

**Legierungselemente:**
- Si → erhöht Streckgrenze, verhindert Anlassverspödung
- Cr → verbessert Härtbarkeit
- Mn, V → Feinkornbildung, Härtbarkeit

</div>
<div>

**Typische Bauteile:**

| Bauteil | Belastung |
|---|---|
| Blattfedern (Fahrzeugbau) | Biegung, schwellend |
| Spiralfedern | Torsion |
| Kegelfedern | Druck |
| Ventilfedern | Zug/Druck, hochfrequent |

**Aus Tab. 4.8:**

| Legierung | WN | Anwendung |
|---|---|---|
| 56SiCr7 | 1.7106 | Blatt- und Kegelfedern |

> Kurzname 56SiCr7: 0,56 % C | Si7/4 = 1,75 % Si | Cr: Geringgehalt

</div>
</div>

---

## Werkzeugstähle – Kalt- und Warmarbeit

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

### Kaltarbeitsstähle (Einsatz < ~200 °C)
- Hauptanforderung: Härte + Verschleißbeständigkeit
- Karbidbildner: Fe₃C (reicht bei niedrigen T)

| Legierung | WN | Anwendung |
|---|---|---|
| C55 | 1.0535 | Zangen, gering beanspruchtes Werkzeug |
| C110 | 1.1654 | Spiralbohrer, Gewindebohrer, Walzbacken |

### Warmarbeitsstähle (Einsatz > 200 °C)
- Zusätzlich: **Warmhärte** gefordert
- Cr, Mo, V → temperaturstabilere Karbide als Fe₃C

| Legierung | WN | Anwendung |
|---|---|---|
| 56NiCrMoV7 | 1.2714 | Pressstempel, Gesenke |
| X38CrMoV5-1 | 1.2343 | Druckgießformen, Strangpresswerkzeuge |

</div>
<div>

### Schnellarbeitsstähle (bis ~600 °C)
- **W, Mo, V** → hochtemperaturfeste Karbide (WC, MoC, VC)
- Erhalten Schneidkantenhärte auch bei hohen Schnittgeschwindigkeiten

| Legierung | WN | Anwendung |
|---|---|---|
| HS6-5-2 | 1.3343 | Fräser, Spiralbohrer, Reibahlen |
| HS12-1-4-5 | 1.3202 | Drehmeißel für Automatenarbeit |
| HS16-1-2-10 | 1.3265 | Hochbeanspruchte Fräser |

> Zunehmend Cr, Mo, V, W von Kalt- zu Schnellarbeitsstählen → deutlicher Trend in der Bezeichnung erkennbar

</div>
</div>

---

## Wälzlagerstähle

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Höchste Anforderungen an:**
- **Rollkontakt-Verschleißfestigkeit**
- **Druckfestigkeit** (Hertz'sche Pressung)
- Gefügehomogenität (kein Versagen durch Einschlüsse)

**Kennzeichen:**
- C-Gehalt: **0,8–1,2 %**
- Anlasstemperatur: **100–250 °C** (maximale Härte!)
- Hohe Reinheit → Edelstahlqualität zwingend

**Typischer Vertreter: 102Cr6**
- 1,02 % C | 6/4 = 1,5 % Cr
- WN: 1.2067

</div>
<div>

**Anforderungen an das Gefüge:**
- Extrem fein verteilte Karbide
- Keine groben Karbid-Zeilen oder Seigerungen
- Keine nichtmetallischen Einschlüsse
- → Edelstahlqualität **unbedingt** erforderlich

**Anwendungen:**

| Bauteil | Besonderheit |
|---|---|
| Kugel-/Rollenlager | Rollkontakt, >10⁹ Zyklen |
| Gewindebohrer | Schneidkante + Führung |
| Präzisionswerkzeuge | Formtreue |

> 102Cr6 ist der **weltweit meistverwendete Wälzlagerstahl**

</div>
</div>

---

## Nichtrostende Stähle – Grundprinzip

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Bedingung laut DIN EN 10020:**
$$\text{Cr-Gehalt} \geq 10{,}5\,\%$$

**Schutzwirkung:**
- Cr bildet **deckende Cr₂O₃-Passivschicht**
- Selbstheilend bei Beschädigung (in oxidierenden Medien)
- Schutz vor Oxidation und korrosivem Angriff

**Drei Anwendungsgruppen:**

| Gruppe | Hauptziel |
|---|---|
| Korrosionsbeständig | Beständigkeit in korrosiven Medien |
| Hitzebeständig | Oxidationsschutz bis ~1100 °C |
| Hochwarmfest | Festigkeit bei Hochtemperatur |

</div>
<div>

**Legierungseinflüsse auf das Gefüge:**

| Element | Wirkung |
|---|---|
| Cr | α-Bildner (stabilisiert krz) |
| Ni | γ-Bildner (stabilisiert kfz) |
| C | γ-Bildner (stabilisiert kfz) |
| Mo | verbessert Korrosionsbeständigkeit |

```
α-Bildner (Cr) dominant → ferritischer Stahl
γ-Bildner (Ni, C) dominant → austenitischer Stahl
Kompromiss → martensitischer Stahl (härtbar)
```

</div>
</div>

---

## Ferritische korrosionsbeständige Stähle

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Merkmale:**
- C-Gehalt: **< 0,15 %**
- Cr-Gehalt: typisch 12–17 %
- Keine weiteren wesentlichen Legierungselemente
- Cr dominiert → **krz-Gitter stabil** → kein γ-Gebiet
- → **nicht härtbar** durch Wärmebehandlung

**Eigenschaften:**
- Geringste Festigkeit der nichtrostenden Stähle
- Gute **Umformbarkeit**
- Günstigster **Preis**
- Magnetisch

</div>
<div>

**Beispiel: X6Cr13**

| Eigenschaft | Wert |
|---|---|
| C-Gehalt | 0,06 % |
| Cr-Gehalt | 13 % |
| Dehngrenze $R_{p0,2}$ | ~230 MPa |
| Struktur | ferritisch (krz) |

**Typische Anwendungen:**
- Einfaches Essbesteck
- Spülbecken, Haushaltsgeräte
- Automobilaußenteile (sichtbare Leisten)
- Dekorative Verkleidungen

</div>
</div>

---

## Martensitische korrosionsbeständige Stähle

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Merkmale:**
- Haben **Vergütungsprozess** durchlaufen
- Gefüge: **angelassener Martensit**
- Höherer C-Gehalt → C stabilisiert γ-Phase bei hohen T → härtbar

**Warum möglich trotz Cr?**
- Cr → stabilisiert α (krz) → wirkt gegen γ
- C → stabilisiert γ (kfz) → wirkt für γ
- Wenn **C-Wirkung überwiegt** → γ-Gebiet vorhanden → härtbar
- Beispiel: X6Cr13 (wenig C) → nicht härtbar; X39Cr13 (viel C) → härtbar

</div>
<div>

**Beispiele:**

| Legierung | WN | $R_e$ [MPa] | Anwendung |
|---|---|---|---|
| X39Cr13 | 1.4031 | ~700 | Klingen zweigeteilter Messer |
| X90CrMoV18 | 1.4112 | ~1000 | Chirurgische Instrumente |

**Eigenschaften:**
- Wesentlich höhere Festigkeit als ferritische Stähle
- Korrosionsbeständigkeit geringer als austenitisch
- Magnetisch
- Für Anwendungen mit **hoher mechanischer Beanspruchung + Korrosionsanforderung**

</div>
</div>

---

## Austenitische korrosionsbeständige Stähle

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Wichtigstes Legierungselement: Nickel**
- Ni stabilisiert kfz-Gitter → **γ-Phase bei Raumtemperatur stabil**
- Kein Umwandeln in Ferrit möglich
- → **nicht härtbar** durch Wärmebehandlung
- Festigkeitssteigerung nur durch **Kaltverfestigung**

**Verbesserte Korrosionsbeständigkeit** gegenüber ferritischen Stählen:
- Beständig in feuchter Atmosphäre, verdünnten Säuren, Laugen
- Selbstheilende Passivschicht (Cr₂O₃)

**Nicht magnetisch** (kfz-Struktur)

</div>
<div>

**Wichtigster Vertreter: X5CrNi18-10 (V2A-Stahl)**

| Eigenschaft | Wert |
|---|---|
| C-Gehalt | 0,05 % |
| Cr-Gehalt | 18 % |
| Ni-Gehalt | 10 % |
| Struktur | austenitisch (kfz) |
| Magnetisch | nein |

**Anwendungsbreite:** Kochgeschirr – Chemieapparate – Medizintechnik – Architektur

> ⚠️ Fehlerhafte Wärmebehandlung → **interkristalline Korrosion** (Sensibilisierung durch Cr-Karbidausscheidung an Korngrenzen → Kap. 5)
> ⚠️ Kein Allheilmittel – kommt immer auf das **spezifische korrosive Medium** an!

</div>
</div>

---

## Hitzebeständige und hochwarmfeste Stähle

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

### Hitzebeständige Stähle (bis ~1100 °C)
**Ziel:** Oxidationsschutz, keine Festigkeitsanforderung

**Legierungselemente:** Al, Si
- Bilden **Al₂O₃, SiO₂** → besonders temperaturstabile Deckschichten

**Beispiel: X10CrAlSi13**
- 13 % Cr | 1 % Al | 1 % Si
- Anwendung: Wärmekraftanlagen, Gehäuseteile, Ofenbau, Dampfleitungsrohre

### Hochwarmfeste Stähle (bis ~600 °C)
**Ziel:** Festigkeit bei Hochtemperatur

**Legierungselemente:** Mo, W, V, Nb
- Bilden **temperaturstabile Karbide/Nitride** → Ausscheidungshärtung

</div>
<div>

**Beispiele hochwarmfeste Stähle:**

| Legierung | Anwendung |
|---|---|
| X20CrMoV12-1 | Schaufeln, Scheiben Hochdruck-Dampfturbine |
| X20CrMoWVNbN10-1-1 | Hochdruckbereich Dampfturbinen |

**Temperaturgrenze ~600 °C:**
- Karbide und Nitride **vergröbern** zu schnell
- Oberhalb 600 °C → **Ni-Basis-Superlegierungen** nötig (Kap. 4.2.5)

| Werkstoffgruppe | Max. Temp. | Festigkeit |
|---|---|---|
| Hochwarmfeste Stähle | ~600 °C | gut |
| Ni-Basis-Superleg. | ~1000 °C | sehr gut |

</div>
</div>

---

## Zusammenfassung: Nichtrostende Stähle

| Typ | Gefüge | Härtbar | Festigkeit | Besonderheit |
|---|---|---|---|---|
| **Ferritisch** | α (krz) | Nein | niedrig | günstig, magnetisch |
| **Martensitisch** | Martensit | Ja | hoch | vergütbar, magnetisch |
| **Austenitisch** | γ (kfz) | Nein | mittel | bestes Korr.-schutz, nicht magn. |
| **Hitzebeständig** | α oder γ | – | gering | bis 1100 °C (Oxidation) |
| **Hochwarmfest** | γ + Ausscheidungen | – | hoch | bis 600 °C |

> **Cr ≥ 10,5 %** ist die notwendige Bedingung für alle nichtrostenden Stähle

---

## Gesamtübersicht: Stahlgruppen

| Gruppe | C [%] | Wärmebehandlung | Gefüge | Anwendung |
|---|---|---|---|---|
| Einsatzstahl | 0,1–0,2 | Einsatzhärten | Martensit + Kern zäh | Zahnräder, Wellen |
| Vergütungsstahl | 0,2–0,6 | Vergüten | ang. Martensit | Kurbelwellen, Schrauben |
| Federstahl | 0,4–1,0 | Vergüten (niedrig anl.) | ang. Martensit | Federn |
| Werkzeugstahl | 0,6–1,2 | Härten + niedrig anl. | Martensit + Karbide | Bohrer, Fräser |
| Wälzlagerstahl | 0,8–1,2 | Härten (100–250 °C) | feiner Martensit | Lager |
| niro ferritisch | < 0,15 | keine | Ferrit | Besteck, Haushaltsger. |
| niro martensitisch | ~0,4 | Vergüten | ang. Martensit | Messer, Chirurgieinstr. |
| niro austenitisch | < 0,1 | keine | Austenit | Apparatebau, Medizin |

---

## Lernziele Vorlesung 2

**Sie sollten können:**

- Stähle nach DIN EN 10020 in die drei Klassen einteilen
- Qualitätsstähle und Edelstähle unterscheiden und den Unterschied erklären
- Werkstoffnummern lesen und zuordnen
- Kurznamen nach chemischer Zusammensetzung **lesen und berechnen** (C-Gehalt, Legierungsgehalte mit Faktoren)
- Die Sonderzeichen X und HS erklären und Beispiele nennen
- Einsatz-, Vergütungs-, Feder-, Werkzeug- und Wälzlagerstähle hinsichtlich C-Gehalt, Wärmebehandlung, Gefüge und Anwendung einordnen
- Die drei Typen nichtrostender Stähle (ferritisch, martensitisch, austenitisch) unterscheiden
- Erklären, warum manche nichtrostenden Stähle härtbar sind und andere nicht

> **Prüfungshinweis:** Kurzbezeichnungen berechnen können (Faktoren auswendig lernen!)