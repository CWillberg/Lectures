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


- **Bezeichnungssystem für Stähle**
  - Einteilung nach DIN EN 10020
  - Werkstoffnummern (DIN EN 10027-2)
  - Kurznamen nach chemischer Zusammensetzung (DIN EN 10027-1)
- **Legierungselemente – Wirkungsweise**
- **Ausgewählte Stahllegierungen**
  - Einsatzstähle
  - Vergütungsstähle
  - Federstähle, Werkzeugstähle, Wälzlagerstähle
  - Nichtrostende Stähle

---

### Was bestimmt die Stahleigenschaften?

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

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

**Systematik**

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

> **Merke:** Der C-Gehalt legt das Grundpotenzial fest –
> die **Legierungselemente entscheiden, wie es genutzt werden kann**

</div>
</div>

---


<div class="cols-2" style="display:flex; gap:2rem;">
<div>

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

> Die Grenzwerte sind **kein Maß für die Wirkung** eines Elements –
> schon Bruchteile von V oder B können das Gefüge stark verändern

</div>
</div>

---

> Wird **keiner** dieser Werte erreicht → unlegierter Stahl
> Wird **mindestens einer** erreicht → legierter Stahl

(Gew.-%) - Masse nicht Atomanzahl bezogen

---

## Qualitätsstähle und Edelstähle

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Qualitätsstähle**
Erfüllen bestimmte **sortenabhängige** Anforderungen, z. B.:
- Zähigkeit (Feinkornbaustähle)
- Schweißeignung
- Magnetische Eigenschaften (Elektrobleche)

**Wichtig:** Qualitätsstähle sind i. A. **nicht zum Vergüten** vorgesehen – unzureichende Materialhomogenität würde zu stark schwankenden Eigenschaften führen

</div>
<div>

**Edelstähle**
Darüber hinausgehende Qualitätsmerkmale (DIN EN 10020):
- Sehr geringe nichtmetallische Einschlüsse
- P- und S-Gehalt ≤ 0,025 %
- Besonders enge Streckgrenztoleranzen
- Auf Grund Homogenität meist **vergütbar**

> „Edelstahl" im technischen Sinne bedeutet **hohe Reinheit und Homogenität** –
> **nicht** „nichtrostender Stahl"!

</div>
</div>

---

**Vorkommen:**

| | unlegiert | legiert |
|---|---|---|
| Qualitätsstahl | ✓ häufig | ✓ selten |
| Edelstahl | ✓ wenige | ✓ fast alle |

> Unlegierte Qualitätsstähle: z. B. Baustähle S235, S355
> Unlegierte Edelstähle: z. B. C45 (für Vergüten)
> Legierte Edelstähle: fast alle Cr-, Ni-, Mo-legierten Stähle

---

# Legierungselemente – Wirkungsweise

---

## Warum Legierungselemente?

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Reiner Kohlenstoffstahl kann:**
- Härtbarkeit und Festigkeit über C-Gehalt einstellen
- ...aber **nicht** gleichzeitig:
  - hohe Durchhärtbarkeit in großen Querschnitten
  - Korrosionsbeständigkeit
  - Warmfestigkeit / Warmhärte
  - Zähigkeit bei hoher Festigkeit

</div>
<div>

**Legierungselemente lösen genau diese Zielkonflikte:**
- Verzögern/beschleunigen Phasenumwandlungen
- Bilden stabile Karbide/Nitride
- Bilden Schutzschichten (Passivierung)
- Beeinflussen Korngröße und Kornwachstum

> Ein legierter Stahl ist im Kern immer noch ein
> **Fe-C-System** – die Zusatzelemente steuern,
> **wie** sich dieses System verhält

</div>
</div>

---

## Gefügewirkung: α- und γ-Bildner

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**α-Bildner (krz-Stabilisatoren)**
Erweitern das α-Gebiet, engen das γ-Gebiet ein

- **Cr** – Leitelement, Korrosionsschutz
- Si, Mo, W, Ti, Nb, V, Al

→ dominant genug → **ferritischer** Stahl
(nicht härtbar durch Umwandlung)

</div>
<div>

**γ-Bildner (kfz-Stabilisatoren)**
Erweitern das γ-Gebiet, drängen α zurück

- **Ni** – Leitelement für Zähigkeit
- C, Mn, N, Cu

→ dominant genug → **austenitischer** Stahl
(nicht härtbar durch Umwandlung)

</div>
</div>

**Kompromiss zwischen beiden Gruppen → martensitischer, härtbarer Stahl**
(z. B. X39Cr13: genug Cr für Korrosionsschutz, genug C für γ-Gebiet)

---

## Legierungselemente: Wirkung auf Härtbarkeit und Festigkeit


| Element | Hauptwirkung |
|---|---|
| **C** | Basis der Härtbarkeit, Karbidbildner |
| **Mn** | Härtbarkeit ↑, bindet S als MnS |
| **Cr** | Härtbarkeit ↑, Karbidbildner, Korrosionsschutz |
| **Ni** | Kern-/Zähigkeit ↑, γ-Stabilisator |
| **Mo** | Anlassbeständigkeit, Warmfestigkeit |

---

| Element | Hauptwirkung |
|---|---|
| **V, W** | starke Karbidbildner, Kornfeinung, Warmhärte |
| **Si** | Streckgrenze ↑, mindert Anlassversprödung |
| **B** | schon in Spuren stark härtbarkeitssteigernd |
| **Co** | Warmhärte ↑ (v. a. Schnellarbeitsstahl) |

> Faustregel: **Cr, Mo, Mn, Ni** verzögern die Perlitbildung
> → Martensit entsteht auch bei langsamerer Abkühlung
> → **bessere Durchhärtbarkeit großer Querschnitte**



---

## Legierungselemente: Sonderfunktionen

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Korrosions- und Hitzeschutz**
- **Cr ≥ 10,5 %** → Cr₂O₃-Passivschicht, selbstheilend
- **Al, Si** → Al₂O₃- bzw. SiO₂-Deckschicht (hitzebeständige Stähle, bis ~1100 °C)
- **Mo** → verbessert Lochkorrosionsbeständigkeit zusätzlich

**Kornfeinung**
- Ti, Nb, V, Al binden N/C zu feinkörnigen Nitriden/Karbiden


</div>
<div>

**Unerwünschte / gezielte Begleitelemente**
- **P, S** → i. d. R. Versprödung, bei Edelstählen streng begrenzt (≤ 0,025 %)
- **S gezielt zugesetzt** → Automatenstähle (bessere Zerspanbarkeit, MnS als Spanbrecher)

**Karbidbildner-Reihenfolge (grob zunehmende Stabilität)**
$$\text{Fe}_3\text{C} < \text{Cr}_{23}\text{C}_6 < \text{Mo}_2\text{C} < \text{V}_4\text{C}_3 < \text{WC}$$

→ erklärt, warum W/Mo/V erst bei Schnellarbeitsstählen nötig sind

</div>
</div>

---

## Legierungselemente – Zusammenfassung

| Element | α/γ-Bildner | Härtbarkeit | Karbidbildner | Korrosion/Hitze | Sonstiges |
|---|---|---|---|---|---|
| C | γ | Basis | ja (Fe₃C) | – | – |
| Cr | α | ↑↑ | ja | ✓✓ (≥10,5 %) | Standardelement Edelstahl |
| Ni | γ | – | nein | leicht ↑ | Zähigkeit, kfz-Stabilisator |
| Mn | γ | ↑ | schwach | – | bindet S |
| Mo | α | ↑↑ | ja | ✓ | Anlassbeständigkeit |


---


## Legierungselemente – Zusammenfassung

| Element | α/γ-Bildner | Härtbarkeit | Karbidbildner | Korrosion/Hitze | Sonstiges |
|---|---|---|---|---|---|
| Si | α | – | nein | ✓ (Zunder) | Streckgrenze ↑ |
| V, W | α | – | ja (stark) | – | Warmhärte, Kornfeinung |
| Al, Ti, Nb | α | – | (Nitride) | ✓ (Al) | Kornfeinung |
| Co | – | – | nein | – | Warmhärte |
| B | – | ↑↑↑ (Spuren) | nein | – | sehr wirksam, geringe Menge |



---



## Übersicht: Gesamtes Bezeichnungssystem

| Gruppe | Kennzeichen | Beispiel | Inhalt |
|---|---|---|---|
| Unleg., Mn < 1 % | **C** + Zahl | C35 | 0,35 % C |
| Unleg./leg., alle < 5 % | Zahl + Elemente + Zahlen | 34CrMo4 | 0,34 % C, 1 % Cr |
| Leg., mind. 1 × ≥ 5 % | **X** + Zahl + Elemente | X5CrNi18-10 | 0,05 % C, 18 % Cr, 10 % Ni |
| Schnellarbeitsstahl | **HS** + Zahlenfolge | HS6-5-2 | W-Mo-V in % |


---

# Stahlarten und Einsatzgebiete

---

## Einsatzstähle – Prinzip

**Kennzeichen:** C-Gehalt **0,1–0,2 %**

<!-- _class: cols-2 -->

<div class="ldiv">

**Warum geringer C-Gehalt?**
- Beim Härten: kein Verspröden → **Kern bleibt duktil**
- Kein nachfolgendes Anlassen nötig

**Rolle der Legierungselemente:**
- **Cr, Mn** (z. B. 16MnCr5) → verzögern Perlitbildung → auch die dünne Randschicht härtet zuverlässig durch
- **Ni** → zusätzliche Kernzähigkeit bei hochbeanspruchten Bauteilen (z. B. Getriebezahnräder)

</div>
<div class="rdiv">

**Prozess: Einsatzhärten**

1. Bauteil erwärmen: 900–1000 °C (γ-Gebiet)
2. **Aufkohlende Atmosphäre** (z. B. CO/H₂-Gemisch):
$$\text{CO} + \text{H}_2 \rightarrow \text{C} + \text{H}_2\text{O}$$
3. C diffundiert in Randschicht: ~0,1–0,2 mm tief
4. **Abschrecken:** Randschicht wird martensitisch

</div>
</div>

---

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



---

## Einsatzstähle – Beispiele

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

| Legierung | WN | $R_e$ [MPa] | $A$ [%] |
|---|---|---|---|
| C10 | 1.0301 | 295 | 16 |
| C15 | 1.0401 | 355 | 14 |
| 15Cr3 | 1.7015 | 440 | 11 |
| 16MnCr5 | 1.7131 | 590 | 10 |

> Mechanische Eigenschaften nach dem Einsatzhärten – gemessen im **Kern**

</div>
<div>

**Legierungswirkung entlang der Reihe:**
- C10/C15: unlegiert → nur für kleine Querschnitte geeignet
- 15Cr3: Cr verbessert Durchhärtbarkeit → höhere Kernfestigkeit
- 16MnCr5: Cr **+** Mn → nochmals höhere Festigkeit, Standard-Einsatzstahl im Getriebebau

**Lesehilfe 16MnCr5:**
16/100 = **0,16 % C** | Mn5/4 = **1,25 % Mn** | Cr: Geringmenge (nicht quantifiziert)

</div>
</div>

---

## Vergütungsstähle – Prinzip

**Kennzeichen:** C-Gehalt **0,2–0,6 %**

<div class="cols-2" ">
<div class = "ldiv">

**Prozess: Vergüten = Härten + Anlassen**

| Schritt | Temperatur | Ergebnis |
|---|---|---|
| Austenitisieren | 800–900 °C | γ-Gefüge |
| Abschrecken | schnell | Martensit (hart, spröde) |
| Anlassen | **500–650 °C** | angelassener Martensit |

**Anlassen bewirkt:**
- Ausscheidung feiner **Fe₃C-Teilchen**
- Abbau der Gitterverzerrung
- → **günstigste Kombination** aus Festigkeit und Duktilität

</div>
<div>

**Rolle der Legierungselemente:**
- **Cr, Mo** verzögern die Perlitbildung → Martensit auch im Bauteilkern → **große Querschnitte durchhärtbar**
- **Mo** wirkt zusätzlich gegen **Anlassversprödung** im kritischen Temperaturbereich
- **Ni** erhöht die Zähigkeit bei hoher Festigkeit

**Einfluss der Anlasstemperatur:**

```
Anlasstemperatur →
150°C   400°C   650°C
  ↓       ↓       ↓
Festigkeit:  ████  ███   ██
Duktilität:  █     ██    ████
```

</div>
</div>

---

**Typische Kennwerte:**
- $R_e$: 350–1100 MPa
- $A_{80}$: 9–20 %
- Anlasstemperatur: 500–650 °C

> **Voraussetzungen:** ausreichender C-Gehalt **und** homogene C-Verteilung im Gefüge



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
- Legierte Stähle (Cr, Mo, Ni): auch Legierungselemente diffundieren → **verzögerte Perlitbildung** → Martensit auch im Kern


</div>
</div>

---

## Federstähle, Werkzeugstähle, Wälzlagerstähle – Überblick


| Gruppe | C-Gehalt | Anlasstemp. | Max. Einsatztemp. | Hauptziel |
|---|---|---|---|---|
| Vergütungsstähle | 0,2–0,6 % | 500–650 °C | – | Festigkeit + Duktilität |
| **Federstähle** | 0,4–1,0 % | 300–475 °C | – | Elastizität, Dauerfestigkeit |
| **Kaltarbeitsstähle** | 0,6–1,2 % | 175–300 °C | ~200 °C | Härte + Verschleiß |
| **Warmarbeitsstähle** | 0,6–1,2 % | 175–300 °C | > 200 °C | Hochtemp.-Verschleiß |


---

| Gruppe | C-Gehalt | Anlasstemp. | Max. Einsatztemp. | Hauptziel |
|---|---|---|---|---|
| **Schnellarbeitsstähle** | 0,6–1,2 % | 175–300 °C | ~600 °C | hohe Schnittgeschw. |
| **Wälzlagerstähle** | 0,8–1,2 % | 100–250 °C | – | maximale Verschleißfest. |


**Zunehmende Anforderungen an Härte und Verschleißbeständigkeit:**

> Faustregel: Je höher die Anforderung an **Verschleißbeständigkeit**,
> desto höher C-Gehalt, desto niedriger Anlasstemperatur –
> **und** desto mehr Karbidbildner (Cr, Mo, V, W)

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

</div>
<div>

**Legierungselemente:**
- **Si** → erhöht Streckgrenze, verhindert Anlassversprödung
- **Cr** → verbessert Härtbarkeit
- **Mn, V** → Feinkornbildung, Härtbarkeit

| Legierung | WN | Anwendung |
|---|---|---|
| 56SiCr7 | 1.7106 | Blatt- und Kegelfedern |

> Kurzname 56SiCr7: 0,56 % C | Si7/4 = 1,75 % Si | Cr: Geringgehalt

</div>
</div>

---

## Werkzeugstähle – Kaltarbeit

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Kaltarbeitsstähle (Einsatz < ~200 °C)**
- Hauptanforderung: Härte + Verschleißbeständigkeit
- Karbidbildner: **Fe₃C reicht aus**, da niedrige Einsatztemperatur → keine teuren Sonderkarbide nötig

</div>
<div>

| Legierung | WN | Anwendung |
|---|---|---|
| C55 | 1.0535 | Zangen, gering beanspruchtes Werkzeug |
| C110 | 1.1654 | Spiralbohrer, Gewindebohrer, Walzbacken |

</div>
</div>

---

## Werkzeugstähle – Warmarbeit

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Warmarbeitsstähle (Einsatz > 200 °C)**
- Zusätzlich: **Warmhärte** gefordert
- **Cr, Mo, V** → temperaturstabilere Karbide als Fe₃C, bleiben bis deutlich höheren Temperaturen hart

</div>
<div>

| Legierung | WN | Anwendung |
|---|---|---|
| 56NiCrMoV7 | 1.2714 | Pressstempel, Gesenke |
| X38CrMoV5-1 | 1.2343 | Druckgießformen, Strangpresswerkzeuge |

</div>
</div>

---

## Werkzeugstähle – Schnellarbeit

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Schnellarbeitsstähle (bis ~600 °C)**
- **W, Mo, V** → hochtemperaturfeste Karbide (WC, MoC, VC)
- Erhalten Schneidkantenhärte auch bei hohen Schnittgeschwindigkeiten (Reibungswärme!)

</div>
<div>

| Legierung | WN | Anwendung |
|---|---|---|
| HS6-5-2 | 1.3343 | Fräser, Spiralbohrer, Reibahlen |
| HS12-1-4-5 | 1.3202 | Drehmeißel für Automatenarbeit |
| HS16-1-2-10 | 1.3265 | Hochbeanspruchte Fräser |

</div>
</div>

> Zunehmende Legierung von Kalt- zu Schnellarbeitsstahl:
> **Fe₃C → Cr/Mo/V-Karbide → W/Mo/V-Karbide (+ Co)**

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

</div>
<div>

**Rolle des Chroms:**
- **Cr (~1,5 %)** bildet feine, gleichmäßig verteilte Karbide
- Verbessert die Durchhärtbarkeit trotz relativ geringem Cr-Gehalt (kein Korrosionsschutz-Niveau)

**Typischer Vertreter: 102Cr6**
- 1,02 % C | 6/4 = 1,5 % Cr
- WN: 1.2067
- **weltweit meistverwendeter Wälzlagerstahl**

</div>
</div>

---

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

</div>
<div>

**Drei Anwendungsgruppen:**

| Gruppe | Hauptziel |
|---|---|
| Korrosionsbeständig | Beständigkeit in korrosiven Medien |
| Hitzebeständig | Oxidationsschutz bis ~1100 °C |
| Hochwarmfest | Festigkeit bei Hochtemperatur |

</div>
</div>

---

## Nichtrostende Stähle – Legierungseinflüsse auf das Gefüge

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

| Element | Wirkung |
|---|---|
| Cr | α-Bildner (stabilisiert krz) |
| Ni | γ-Bildner (stabilisiert kfz) |
| C | γ-Bildner (stabilisiert kfz) |
| Mo | verbessert Korrosionsbeständigkeit |

</div>
<div>

```
α-Bildner (Cr) dominant
  → ferritischer Stahl

γ-Bildner (Ni, C) dominant
  → austenitischer Stahl

Kompromiss
  → martensitischer Stahl
    (härtbar)
```

</div>
</div>

> Dieselbe Logik wie zuvor allgemein eingeführt –
> hier konkret angewendet auf nichtrostende Stähle

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

</div>
<div>

**Eigenschaften:**
- Geringste Festigkeit der nichtrostenden Stähle
- Gute **Umformbarkeit**
- Günstigster **Preis**
- Magnetisch

</div>
</div>

---

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Beispiel: X6Cr13**

| Eigenschaft | Wert |
|---|---|
| C-Gehalt | 0,06 % |
| Cr-Gehalt | 13 % |
| Dehngrenze $R_{p0,2}$ | ~230 MPa |
| Struktur | ferritisch (krz) |

</div>
<div>

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
- X6Cr13 (wenig C) → nicht härtbar; X39Cr13 (viel C) → härtbar

</div>
<div>

| Legierung | WN | $R_e$ [MPa] | Anwendung |
|---|---|---|---|
| X39Cr13 | 1.4031 | ~700 | Messerklingen |
| X90CrMoV18 | 1.4112 | ~1000 | Chirurgische Instrumente |

**Eigenschaften:**
- Wesentlich höhere Festigkeit als ferritische Stähle
- Korrosionsbeständigkeit geringer als austenitisch
- Magnetisch

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

**Verbesserte Korrosionsbeständigkeit:**
- Beständig in feuchter Atmosphäre, verdünnten Säuren, Laugen
- Selbstheilende Passivschicht (Cr₂O₃)
- **Nicht magnetisch** (kfz-Struktur)

</div>
<div>

**Wichtigster Vertreter: X5CrNi18-10 (V2A-Stahl)**

| Eigenschaft | Wert |
|---|---|
| C-Gehalt | 0,05 % |
| Cr-Gehalt | 18 % |
| Ni-Gehalt | 10 % |
| Struktur | austenitisch (kfz) |

**Anwendungsbreite:** Kochgeschirr – Chemieapparate – Medizintechnik – Architektur

</div>
</div>

> bei fehlerhafter Wärmebehandlung → **interkristalline Korrosion**
> Korrosionsbeständigkeit kommt immer auf das **spezifische korrosive Medium** an!

---

## Hitzebeständige und hochwarmfeste Stähle

<div class="cols-2" style="display:flex; gap:2rem;">
<div>

**Hitzebeständige Stähle (bis ~1100 °C)**
Ziel: Oxidationsschutz, keine Festigkeitsanforderung

- Legierungselemente: **Al, Si**
- Bilden **Al₂O₃, SiO₂** → besonders temperaturstabile Deckschichten

**Beispiel: X10CrAlSi13**
- 13 % Cr | 1 % Al | 1 % Si
- Anwendung: Wärmekraftanlagen, Ofenbau, Dampfleitungsrohre

</div>
<div>

**Hochwarmfeste Stähle (bis ~600 °C)**
Ziel: Festigkeit bei Hochtemperatur

- Legierungselemente: **Mo, W, V, Nb**
- Bilden **temperaturstabile Karbide/Nitride** → Ausscheidungshärtung

| Legierung | Anwendung |
|---|---|
| X20CrMoV12-1 | Dampfturbinenschaufeln |
| X20CrMoWVNbN10-1-1 | Hochdruckbereich Dampfturbinen |

</div>
</div>

---

**Temperaturgrenze ~600 °C:**
- Karbide und Nitride **vergröbern** zu schnell
- Oberhalb 600 °C → **Ni-Basis-Superlegierungen** nötig (Kap. 4.2.5)

| Werkstoffgruppe | Max. Temp. | Festigkeit |
|---|---|---|
| Hochwarmfeste Stähle | ~600 °C | gut |
| Ni-Basis-Superleg. | ~1000 °C | sehr gut |


---

## Zusammenfassung: Nichtrostende Stähle

| Typ | Gefüge | Härtbar | Festigkeit | Legierung | Besonderheit |
|---|---|---|---|---|---|
| **Ferritisch** | α (krz) | Nein | niedrig | Cr | günstig, magnetisch |
| **Martensitisch** | Martensit | Ja | hoch | Cr + C | vergütbar, magnetisch |
| **Austenitisch** | γ (kfz) | Nein | mittel | Cr + Ni | bester Korr.-schutz, nicht magn. |
| **Hitzebeständig** | α oder γ | – | gering | Cr + Al/Si | bis 1100 °C (Oxidation) |
| **Hochwarmfest** | γ + Ausscheid. | – | hoch | Cr + Mo/W/V | bis 600 °C |

> **Cr ≥ 10,5 %** ist die notwendige Bedingung für alle nichtrostenden Stähle –
> **welche weiteren Elemente hinzukommen, entscheidet über den Stahltyp**

---

## Gesamtübersicht: Stahlgruppen (I/II)

| Gruppe | C [%] | Leit-Legierungselemente | Wärmebehandlung | Anwendung |
|---|---|---|---|---|
| Einsatzstahl | 0,1–0,2 | Cr, Mn, Ni | Einsatzhärten | Zahnräder, Wellen |
| Vergütungsstahl | 0,2–0,6 | Cr, Mo, Ni | Vergüten | Kurbelwellen, Schrauben |
| Federstahl | 0,4–1,0 | Si, Cr, V | Vergüten (niedrig anl.) | Federn |
| Werkzeugstahl | 0,6–1,2 | Cr, Mo, V, W | Härten + niedrig anl. | Bohrer, Fräser |

---

## Gesamtübersicht: Stahlgruppen (II/II)

| Gruppe | C [%] | Leit-Legierungselemente | Wärmebehandlung | Anwendung |
|---|---|---|---|---|
| Wälzlagerstahl | 0,8–1,2 | Cr | Härten (100–250 °C) | Lager |
| niro ferritisch | < 0,15 | Cr | keine | Besteck, Haushaltsger. |
| niro martensitisch | ~0,4 | Cr | Vergüten | Messer, Chirurgieinstr. |
| niro austenitisch | < 0,1 | Cr, Ni | keine | Apparatebau, Medizin |

> **Roter Faden der gesamten Vorlesung:** C-Gehalt bestimmt das Härtepotenzial,
> Legierungselemente entscheiden über Durchhärtbarkeit, Korrosionsschutz und Temperaturbeständigkeit

---

## Danke für die Aufmerksamkeit