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
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>


## Vorlesung Werkstofftechnik - Vorlesung Reale Strukturen und Eigenschaften
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

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

## Atomistische Struktur

Besteht aus
- Kern (Protonen + Neutronen) der die Masse definiert
- Hülle (Elektronen) mit verschieden Schalen, welche chemischen und viele physikalische Eigeschaften definiert

- Aufenthaltswahrscheinlichkeit der Elektronen sorgt für Abstoßung und Anziehung
- als Elastizität oder Wärmedehnung makroskopisch zu erkennen


---

![bg 80%](../assets/Figures/Bindungskraefte_zwischen_Atome.svg)


---

# Bindungen

## Hauptvalenzbindungen  
**Primärbindungen - hohe Bindungsenergie, starke Bindung**
-	Ionen- bzw. heteropolare Bindung 
-	Atom- bzw. homöopolare (oder kovalente) Bindung: polar (O-H) und unpolar (C-C, C-H)
-	Metallische Bindung


---


## Neben- oder Restvalenzbindungen 
**Sekundärbindungen - geringe Bindungsenergie, schwache Bindung**
-	van der Waals-Bindung: zwischenmolekulare Kräfte
-	Wasserstoffbrückenbindung: zwei Moleküle oder zwei geeignet weit voneinander getrennte Abschnitte eines Makromoleküls treten über Wasserstoffatome in Wechselwirkung 
- die Bindungsenergien sind ein bis zwei Zehnerpotenzen kleiner als die der Atombindungen.


---

## Ionen- bzw. heteropolare Bindung
**Definition:**
Bindung zwischen **Metall-Atom** und **Nichtmetall-Atom** durch elektrostatische Anziehung

**Mechanismus:**
1. Metall gibt Elektronen ab → **Kation** (positiv geladen)
2. Nichtmetall nimmt Elektronen auf → **Anion** (negativ geladen)
3. Elektrostatische Anziehung zwischen entgegengesetzt geladenen Ionen

---

## Beispiel: Natriumchlorid (NaCl)

**Natrium (Na)**
- 1 Elektron in äußerer Schale
- Gibt 1 Elektron ab → Na⁺ (Kation)

**Chlor (Cl)**
- 7 Elektronen in äußerer Schale
- Nimmt 1 Elektron auf → Cl⁻ (Anion)

**Reaktionsgleichung:**
Na → Na⁺ + e⁻
Cl + e⁻ → Cl⁻
**Na⁺ + Cl⁻ → NaCl**

![bg right:45% fit](https://upload.wikimedia.org/wikipedia/commons/c/c5/NaCl-Obtenci%C3%B3n-2.svg)

---

## Triebkraft: Edelgaskonfiguration

**Ziel:** Äußere Schale mit 8 Elektronen (Oktettregel)

| Element | e⁻ außen | Reaktion | Ion | wie Edelgas |
|---------|----------|----------|-----|-------------|
| Na      | 1        | -1 e⁻    | Na⁺ | Neon        |
| Mg      | 2        | -2 e⁻    | Mg²⁺| Neon        |
| Cl      | 7        | +1 e⁻    | Cl⁻ | Argon       |
| O       | 6        | +2 e⁻    | O²⁻ | Neon        |

---

## Weitere Beispiele

**Magnesiumoxid (MgO)**
- Mg → Mg²⁺ + 2e⁻
- O + 2e⁻ → O²⁻
- **Mg²⁺ + O²⁻ → MgO**

**Aluminiumoxid (Al₂O₃)**
- 2 Al → 2 Al³⁺ + 6e⁻
- 3 O + 6e⁻ → 3 O²⁻
- **2 Al³⁺ + 3 O²⁻ → Al₂O₃**


---

## Eigenschaften ionischer Verbindungen

**Kristallstruktur**
- Regelmäßiges Ionengitter
- Hohe Packungsdichte
- Beispiel: NaCl-Gitter (Steinsalzstruktur)

**Mechanische Eigenschaften**
- Spröde, geringe Duktilität
- Hohe Härte
- Hohe Druckfestigkeit
- Geringe Zugfestigkeit

![bg right:30% fit](https://upload.wikimedia.org/wikipedia/commons/d/d7/Calcium-fluoride-3D-ionic.png)

---

## Eigenschaften ionischer Verbindungen (2)

**Thermische Eigenschaften**
- Hohe Schmelzpunkte (300-1000°C)
- Hohe Siedepunkte
- Beispiel: NaCl schmilzt bei 801°C

**Elektrische Eigenschaften**
- Isolator im festen Zustand
- Leiter in geschmolzenem Zustand (Ionen beweglich)
- Leiter in wässriger Lösung (Elektrolyt)

---

## Bindungsenergie

**Definition:**
Energie, die benötigt wird, um die Bindung zu trennen

**Ionenbindung:**
- Stark (400-800 kJ/mol)
- Abhängig von:
  - Ladung der Ionen (höhere Ladung → stärker)
  - Ionenradius (kleinere Ionen → stärker)

---

## Coulomb-Gesetz

**Anziehungskraft zwischen Ionen:**

$$F = k \cdot \frac{q_1 \cdot q_2}{r^2}$$

- F = Kraft
- k = Coulomb-Konstante
- q₁, q₂ = Ladungen der Ionen
- r = Abstand zwischen Ionen


![bg fit right:50%](../assets/Figures/Bindungskraefte_zwischen_Atome.svg)

**Schlussfolgerung:**
Stärkere Bindung bei höherer Ladung und kleinerem Abstand

---

## Gitterenergie - Beispiele

| Verbindung | Gitterenergie [kJ/mol] | Schmelzpunkt [°C] |
|------------|------------------------|-------------------|
| NaCl       | 786                    | 801               |
| MgO        | 3795                   | 2852              |
| CaF₂       | 2630                   | 1418              |
| LiF        | 1037                   | 845               |
| KCl        | 717                    | 770               |

**Trend:** Kleinere Ionen + höhere Ladung = höhere Gitterenergie

---

## Anwendungen ionischer Verbindungen

**Keramiken**
- Al₂O₃ (Aluminiumoxid) - Schneidwerkzeuge, Isolatoren
- MgO (Magnesiumoxid) - Feuerfeste Materialien

**Salze**
- NaCl (Kochsalz) - Lebensmittel, Chemie
- CaCO₃ (Calciumcarbonat) - Baumaterial, Zement

**Elektronik**
- Isolatoren und Dielektrika

---

## Atom- bzw. homöopolare Bindung

**Definition:**
Bindung zwischen **Nichtmetall-Atomen** durch **gemeinsame Nutzung** von Elektronenpaaren

**Mechanismus:**
1. Zwei oder mehr Atome teilen sich Elektronen
2. Gemeinsame Elektronenpaare gehören beiden Atomen
3. Bildung von **Molekülen** oder **kovalenten Netzwerken**
4. Gerichtete Bindungen

---

## Beispiel: Wasserstoff (H₂)

**Wasserstoff (H)**
- 1 Elektron in äußerer Schale
- Braucht 1 weiteres Elektron für Edelgaskonfiguration

**Bindungsbildung:**
H  +  H → H—H

- Jedes H-Atom steuert 1 Elektron bei
- Beide Elektronen werden geteilt
- Beide H-Atome erreichen He-Konfiguration (2 e⁻)

**Bindungsstrich (—):** Steht für ein bindendes Elektronenpaar

---

## Triebkraft: Edelgaskonfiguration

| Molekül | Atome | Bindung | Konfiguration wie |
|---------|-------|---------|-------------------|
| H₂      | H—H   | Einfach | Helium            |
| Cl₂     | Cl—Cl | Einfach | Argon             |
| O₂      | O=O   | Zweifach| Neon              |
| N₂      | N≡N   | Dreifach| Neon              |

**Mehrfachbindungen:**
- Einfach (—): 1 Elektronenpaar
- Zweifach (=): 2 Elektronenpaare
- Dreifach (≡): 3 Elektronenpaare

---

## Weitere Beispiele

**Wasser (H₂O)**
- O braucht 2 Elektronen → 2 Einfachbindungen mit H

**Methan (CH₄)**
- C braucht 4 Elektronen → 4 Einfachbindungen mit H

**Kohlendioxid (CO₂)**
- O=C=O
- 2 Doppelbindungen, linear

---

## Arten kovalenter Strukturen

**1. Molekülkristalle**
- Diskrete Moleküle (H₂O, CO₂, organische Stoffe)
- Schwache zwischenmolekulare Kräfte
- Niedrige Schmelzpunkte

**2. Kovalente Netzwerke (Atomkristalle)**
- Durchgehende kovalente Bindungen
- Diamant, Siliciumcarbid, Quarz
- Sehr hohe Schmelzpunkte
- Extreme Härte

---

## Polare und unpolare kovalente Bindungen

**Unpolare kovalente Bindung**
- Gleiche Atome (H₂, Cl₂, O₂)
- Elektronen gleichmäßig verteilt
- Keine Ladungstrennung
- Elektronegativitätsdifferenz ΔEN = 0

**Polare kovalente Bindung**
- Verschiedene Atome (H₂O, HCl)
- Elektronen ungleichmäßig verteilt
- Teilladungen (δ⁺ und δ⁻)
- Elektronegativitätsdifferenz 0 < ΔEN < 1,7

---

## Bindungsarten nach ΔEN

| ΔEN | Bindungstyp | Beispiel | Werkstofftyp |
|-----|-------------|----------|--------------|
| 0 - 0,4 | Unpolar kovalent | H₂, Cl₂ | Gase, unpolare Moleküle |
| 0,4 - 1,7 | Polar kovalent | H₂O, Polymere | Kunststoffe, biologisch |
| > 1,7 | Ionisch | NaCl, MgO | Keramiken, Salze |

**Übergänge sind fließend!**

---

## Eigenschaften molekularer Stoffe

**Aggregatzustand**
- Oft gasförmig oder flüssig bei Raumtemperatur
- Niedrige Schmelz-/Siedepunkte (< 400°C)
- Schwache Van-der-Waals-Kräfte zwischen Molekülen

**Mechanische Eigenschaften**
- Weich (bei Feststoffen)
- Geringe Festigkeit
- Oft flexibel/elastisch
- Beispiel: Kunststoffe, Wachse

---

## Eigenschaften kovalenter Netzwerke

**Mechanische Eigenschaften**
- Extrem hart
- Spröde
- Hohe Druckfestigkeit
- Geringe Zugfestigkeit

**Thermische Eigenschaften**
- Sehr hohe Schmelzpunkte (> 2000°C)
- Hohe thermische Stabilität
- Geringe thermische Ausdehnung

**Beispiele:** Diamant, SiC, Si₃N₄

---

## Bindungsenergie

**Definition:**
Energie, die benötigt wird, um eine Bindung zu trennen

**Beispiele:**
| Bindung | Energie [kJ/mol] |
|---------|------------------|
| H—H     | 436              |
| C—C     | 348              |
| C=C     | 614              |
| C≡C     | 839              |
| Si—Si   | 226              |
| C—Si    | 301              |

**Trend:** Mehrfachbindungen sind stärker
**Bedeutung:** Bestimmt mechanische und thermische Eigenschaften

---

## Kovalente Werkstoffe: Diamant

**Struktur:**
- Jedes C-Atom mit 4 Nachbarn tetraedrisch verbunden
- Durchgehendes 3D-Netzwerk
- Alle Bindungen gleichwertig

**Eigenschaften:**
- Härtester bekannter Werkstoff (10 auf Mohs-Skala)
- Schmelzpunkt: 3550°C
- Hervorragender elektrischer Isolator
- Exzellente Wärmeleitfähigkeit

**Anwendung:** Schneidwerkzeuge, Schleifmittel

---

## Kovalente Werkstoffe: Siliciumcarbid (SiC)

**Struktur:**
- Ähnlich wie Diamant
- Si und C alternierend angeordnet
- Kovalente C—Si Bindungen

**Eigenschaften:**
- Sehr hart (9,5 auf Mohs-Skala)
- Schmelzpunkt: 2730°C
- Chemisch sehr beständig
- Gute Wärmeleitfähigkeit
- Halbleiter bei hohen Temperaturen

**Anwendung:** Schleifmittel, Hochtemperatur-Halbleiter, Panzerungen

---

## Vergleich: Ionisch vs. Kovalent

| Eigenschaft | Ionische Bindung | Kovalent (molekular) | Kovalent (Netzwerk) |
|-------------|------------------|----------------------|---------------------|
| Struktur | Kristallgitter | Moleküle | 3D-Netzwerk |
| Schmelzpunkt | Hoch (800°C) | Niedrig (<300°C) | Sehr hoch (>2000°C) |
| Härte | Mittel-hoch | Gering | Sehr hoch |
| Elektrisch | Isolator (fest) | Isolator | Isolator |
| Duktilität | Spröde | Variable | Sehr spröde |
| Beispiel | NaCl, MgO | Kunststoffe, H₂O | Diamant, SiC |

---

## Polymere (Kunststoffe)

**Struktur:**
- Lange Kohlenstoffketten
- C—C und C—H Bindungen (kovalent)
- Schwache Bindungen zwischen Ketten

**Typen:**
- **Thermoplaste:** Linear, schmelzbar (PE, PP, PVC)
- **Duroplaste:** Vernetzt, nicht schmelzbar (Epoxid, Bakelit)
- **Elastomere:** Schwach vernetzt, elastisch (Gummi)

---

# Dazu später mehr

---

## Anwendungen kovalenter Werkstoffe (2)

**Verbundwerkstoffe**
- Faserverstärkte Kunststoffe (CFK, GFK)
- Matrix: Polymer (kovalent)
- Verstärkung: Kohlefaser, Glasfaser

**Glas und Optik**
- Fensterglas (SiO₂-basiert)
- Optische Fasern
- Spezialgläser

---


## Metallische Bindung

**Definition:**
Bindung zwischen **Metall-Atomen** durch delokalisierte Valenzelektronen

**Mechanismus:**
1. Metallatome geben Valenzelektronen ab
2. Positive Metallionen (Atomrümpfe) bilden Gitter
3. Valenzelektronen bewegen sich frei im gesamten Kristall
4. **Elektronengas** umgibt die Atomrümpfe
5. Elektrostatische Anziehung zwischen Atomrümpfen und Elektronengas

![bg right:30% fit](https://upload.wikimedia.org/wikipedia/commons/4/41/Nuvola_di_elettroni.svg)

---
## Struktur 

**⊕ = Metallionen (Atomrümpfe)**
**blaue Punkte = delokalisierte Elektronen (Elektronengas)**

- Elektronen gehören nicht zu einzelnen Atomen
- Frei beweglich im gesamten Metallgitter
- Ungerichtete Bindung

---
## Beispiele metallischer Elemente

**Alkalimetalle (1. Hauptgruppe)**
- Natrium (Na), Kalium (K), Lithium (Li)
- 1 Valenzelektron
- Weich, reaktiv

**Erdalkalimetalle (2. Hauptgruppe)**
- Magnesium (Mg), Calcium (Ca)
- 2 Valenzelektronen
- Mittlere Festigkeit

---

**Übergangsmetalle**
- Eisen (Fe), Kupfer (Cu), Aluminium (Al)
- Variable Valenzelektronen
- Hart, gute Leitfähigkeit

---

## Triebkraft: Energieabsenkung

**Warum bilden Metalle diese Bindung?**

- Durch Delokalisierung der Elektronen wird Energie freigesetzt
- Elektronen können sich über viele Atome verteilen
- Niedrigeres Energieniveau als bei isolierten Atomen
- Energiegewinn stabilisiert die Struktur

---

**Je mehr Valenzelektronen, desto stärker die Bindung**

| Metall | Valenzelektronen | Schmelzpunkt [°C] |
|--------|------------------|-------------------|
| Na     | 1                | 98                |
| Mg     | 2                | 650               |
| Al     | 3                | 660               |

---

## Mechanische Eigenschaften

**Verformbarkeit**
- Duktil (verformbar)
- Schmiedbar, walzbar
- Atome können aneinander vorbeigleiten
- Elektronengas bleibt erhalten

**Festigkeit**
- Mittlere bis hohe Festigkeit
- Zugfestigkeit: 50-1500 MPa (je nach Metall)
- Verformungsverfestigung möglich

**Bruchverhalten**
- Zäh (nicht spröde)
- Plastische Verformung vor Bruch

---

## Mechanische Eigenschaften (2)

**Härte**
- Variabel je nach Metall
- Weich: Na, K, Au (< 30 HV)
- Mittel: Al, Cu, Ag (30-100 HV)
- Hart: Fe, Cr, W (> 100 HV)

**Verformungsmechanismen**
- Versetzungsbewegung (Gleitebenen)
- Zwillingsbildung
- Ungerichtete Bindung ermöglicht Verformung
- Im Gegensatz zu Ionenkristallen (spröde)

---

## Thermische Eigenschaften

**Schmelzpunkte**
- Niedrig bis sehr hoch (39°C - 3422°C)
- Abhängig von Anzahl der Valenzelektronen

| Metall | Schmelzpunkt [°C] |
|--------|-------------------|
| Hg     | -39               |
| Na     | 98                |
| Al     | 660               |
| Cu     | 1085              |
| Fe     | 1538              |
| W      | 3422              |

**Trend:** Mehr Valenzelektronen → höherer Schmelzpunkt

---

## Thermische Eigenschaften (2)

**Wärmeleitfähigkeit**
- Sehr gut (10-400 W/(m·K))
- Freie Elektronen transportieren Wärme
- Beste Leiter: Ag, Cu, Au, Al

**Wärmeausdehnung**
- Mittlere bis hohe Ausdehnung
- Typisch: 10-30 · 10⁻⁶ K⁻¹
- Wichtig für thermische Spannungen

**Wärmekapazität**
- Elektronen und Gitterschwingungen (Phononen)
- Relativ hoch

---

## Elektrische Eigenschaften

**Elektrische Leitfähigkeit**
- Ausgezeichnete Leiter
- Freie Elektronen transportieren Ladung
- Spezifischer Widerstand: 10⁻⁸ - 10⁻⁶ Ω·m

| Metall | Leitfähigkeit [MS/m] | Anwendung |
|--------|----------------------|-----------|
| Ag     | 63                   | Kontakte  |
| Cu     | 59                   | Kabel     |
| Au     | 45                   | Elektronik|
| Al     | 37                   | Leitungen |
| Fe     | 10                   | Konstruktion|

---


## Vergleich der Bindungsarten

| Eigenschaft | Ionisch | Kovalent | Metallisch |
|-------------|---------|----------|------------|
| Beteiligte | Metall + Nichtmetall | Nichtmetall | Metall |
| Elektronen | Übertragung | Teilung | Delokalisiert |
| Struktur | Ionengitter | Moleküle/Netzwerk | Metallgitter |
| Leitfähigkeit | Nur geschmolzen | Nein | Ja, sehr gut |
| Verformbarkeit | Spröde | Spröde/weich | Duktil |
| Schmelzpunkt | Hoch | Variabel | Mittel-hoch |
| Transparenz | Oft ja | Oft ja | Nein |

---

## Mechanische Eigenschaften im Vergleich

**Metallische Bindung**
- Duktil, verformbar
- Ungerichtete Bindung ermöglicht Gleitung
- Versetzungsbewegung

**Ionische Bindung**
- Spröde
- Gleichnamige Ladungen stoßen sich ab
- Keine Gleitung möglich

---

**Kovalente Bindung (Netzwerk)**
- Sehr spröde
- Gerichtete Bindungen müssen brechen
- Extrem hart (Diamant)

---
# Sekundärbindungen

---

**Definition:**
Schwache Bindungen zwischen **Molekülen** oder **Atomen** durch elektrostatische Wechselwirkungen

**Eigenschaften:**
- Geringe Bindungsenergie (1-50 kJ/mol)
- **Ein bis zwei Zehnerpotenzen schwächer** als Primärbindungen
- Keine Elektronenübertragung oder -teilung
- Kurzreichweitig

**Arten:**
1. Van-der-Waals-Bindungen
2. Wasserstoffbrückenbindungen

---

## Bindungsenergie - Vergleich

| Bindungstyp | Energie [kJ/mol] | Beispiel |
|-------------|------------------|----------|
| **Primärbindungen** | | |
| Ionisch | 400-800 | NaCl |
| Kovalent | 150-900 | C-C, O=O |
| Metallisch | 100-850 | Cu, Fe |
| **Sekundärbindungen** | | |
| Wasserstoffbrücken | 10-40 | H₂O...H₂O |
| Dipol-Dipol | 5-25 | HCl...HCl |
| London-Kräfte | 0,5-10 | Ar...Ar |

**Faktor 10-100 schwächer!**

---

## Van-der-Waals-Bindungen

**Definition:**
Schwache zwischenmolekulare Kräfte aufgrund von Ladungsverteilungen

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/c/cf/Forze_di_London.png)


---

**Drei Arten:**

1. **London-Kräfte (Dispersionskräfte)**
   - Temporäre Dipole durch Elektronenbewegung
   - Wirken zwischen allen Molekülen/Atomen
   - Schwächste Van-der-Waals-Kraft

2. **Dipol-Dipol-Kräfte**
   - Zwischen permanenten Dipolen
   - Stärker als London-Kräfte

3. **Dipol-induzierte Dipol-Kräfte**
   - Permanenter Dipol induziert Dipol

---

## London-Kräfte (Dispersionskräfte)

**Mechanismus:**
Atom 1:  ⊖ ⊕   →  temporärer Dipol
↓ induziert
Atom 2:  ⊕ ⊖   →  induzierter Dipol

**Eigenschaften:**
- Treten bei **allen** Molekülen/Atomen auf
- Auch bei unpolaren Molekülen (Ar, CH₄, N₂)
- Stärke nimmt mit Molekülgröße zu
- Kurzreichweitig (~ r⁻⁶)

---

**Beispiele:**
- Edelgase (Ne, Ar, Kr)
- Unpolare Moleküle (H₂, N₂, CH₄)
- Polymere (Polyethylen)

---

## London-Kräfte - Einfluss der Molekülgröße

**Größere Moleküle → stärkere London-Kräfte**

| Molekül | Molare Masse [g/mol] | Siedepunkt [°C] |
|---------|----------------------|-----------------|
| He      | 4                    | -269            |
| Ne      | 20                   | -246            |
| Ar      | 40                   | -186            |
| Kr      | 84                   | -153            |
| Xe      | 131                  | -108            |

**Trend:** Mehr Elektronen → stärkere temporäre Dipole → höherer Siedepunkt

---

## Dipol-Dipol-Kräfte

**Mechanismus:**
δ⁺     δ⁻   δ⁺     δ⁻
H—O ... H—O
H         H
**Voraussetzungen:**
- H gebunden an F, O oder N
- Freies Elektronenpaar am Akzeptor
- Gerichtet und relativ stark (10-40 kJ/mol)

---

## Wasserstoffbrücken - Beispiel Wasser

**Wasser (H₂O)**
H—O...H—O—H
|
H
**Eigenschaften durch H-Brücken:**
- Hoher Siedepunkt (100°C, erwartet: -80°C)
- Hohe Schmelzwärme
- Hohe Verdampfungswärme
- Dichteanomalie (Eis schwimmt)
- Oberflächenspannung

**Jedes H₂O kann 4 H-Brücken bilden!**

---

## Eigenschaften von Stoffen mit Sekundärbindungen

**Aggregatzustand**
- Oft gasförmig oder niedrig siedend
- Schwache intermolekulare Kräfte
- Leicht verdampfbar

**Schmelz-/Siedepunkte**
- Niedrig (oft < 100°C)
- Ausnahme: H-Brücken erhöhen Werte

**Löslichkeit**
- London-Kräfte: "Gleiches löst sich in Gleichem"
- H-Brücken: gut löslich in polaren Lösungsmitteln

**Mechanisch**
- Weich
- Leicht verformbar
- Geringe Festigkeit

---

## Werkstofftechnische Bedeutung

**Polymere**
- Sekundärbindungen zwischen Polymerketten
- Bestimmen Schmelzpunkt und Festigkeit
- Thermoplaste: nur Sekundärbindungen
- Beispiel: Polyethylen (nur London-Kräfte)

**Schmierstoffe**
- Graphit: schwache Van-der-Waals-Kräfte zwischen Schichten
- Leicht verschiebbar → geringe Reibung

**Adsorption**
- Van-der-Waals-Kräfte binden Moleküle an Oberflächen
- Aktivkohle, Katalysatoren

---

## Thermoplaste vs. Duroplaste

**Thermoplaste**
- Nur Sekundärbindungen zwischen Ketten
- Schmelzbar, recycelbar
- Niedrige Schmelzpunkte (50-250°C)
- Beispiele: PE, PP, PS, PVC

---

**Duroplaste**
- Kovalente Vernetzung (Primärbindung)
- Nicht schmelzbar
- Hohe Temperaturbeständigkeit
- Beispiele: Epoxidharze, Phenolharze

**Sekundärbindungen ermöglichen Verformbarkeit!**

---

## Graphit - Schichtstruktur

**Struktur:**
- Innerhalb der Schichten: starke kovalente C-C Bindungen
- Zwischen den Schichten: schwache Van-der-Waals-Kräfte

**Eigenschaften:**
- In Schichten: hart, fest
- Zwischen Schichten: leicht verschiebbar
- Guter Schmierstoff
- Elektrisch leitfähig (in Schichtebene)

**Anwendung:**
- Trockenschmiermittel
- Bleistiftminen
- Elektroden

---

## Geckofüße - Adhäsion durch Van-der-Waals-Kräfte

**Prinzip:**
- Millionen feiner Härchen (Setae)
- Große Kontaktfläche
- Van-der-Waals-Kräfte addieren sich
- Haftung: ~10 N/cm²

**Technische Anwendung:**
- Gecko-Tape (wiederverwendbare Klebestreifen)
- Kletterroboter
- Biomimetik

---

## Adsorption an Oberflächen

**Physisorption**
- Van-der-Waals-Kräfte
- Schwache Bindung (5-40 kJ/mol)
- Reversibel
- Mehrschichtig möglich

**Anwendungen:**
- Aktivkohle (Wasserreinigung, Gasmasken)
- Molekularsiebe (Trocknung)
- Katalysatoren (Oberflächenvergrößerung)
- Chromatographie

**Im Gegensatz zu Chemisorption (kovalente Bindung, irreversibel)**

---

## Lösungsmittel und Löslichkeit

**"Gleiches löst sich in Gleichem"**

**Unpolare Lösungsmittel** (London-Kräfte)
- Hexan, Benzol, Chloroform
- Lösen: Fette, Öle, Wachse, unpolare Polymere

**Polare Lösungsmittel** (Dipol, H-Brücken)
- Wasser, Ethanol, Aceton
- Lösen: Salze, Zucker, polare Moleküle

**Prinzip:**
Lösungsmittel müssen ähnliche intermolekulare Kräfte haben wie gelöster Stoff

---

## Oberflächenspannung

**Ursache:**
Ungleiche Anziehungskräfte an der Oberfläche

**Hohe Oberflächenspannung:**
- Starke intermolekulare Kräfte
- H₂O: 72 mN/m (H-Brücken!)
- Hg: 486 mN/m (Metallbindung)

**Niedrige Oberflächenspannung:**
- Schwache intermolekulare Kräfte
- Ethanol: 22 mN/m
- Hexan: 18 mN/m

**Anwendung:**
- Tenside (reduzieren Oberflächenspannung)
- Benetzung von Oberflächen


---

## Verdampfungsenthalpie

**Definition:**
Energie zum Verdampfen von 1 mol Stoff

| Stoff | Intermolekulare Kraft | ΔH_vap [kJ/mol] |
|-------|-----------------------|-----------------|
| Ne | London | 1,7 |
| CH₄ | London | 8,2 |
| HCl | Dipol | 16,2 |
| NH₃ | H-Brücken | 23,3 |
| H₂O | H-Brücken | 40,7 |

**H₂O hat außergewöhnlich hohe Verdampfungsenthalpie!**

---

## Vergleich: Primär- vs. Sekundärbindungen

| Eigenschaft | Primärbindung | Sekundärbindung |
|-------------|---------------|-----------------|
| Energie | 100-900 kJ/mol | 1-50 kJ/mol |
| Reichweite | Atomar | Molekular |
| Schmelzpunkt | Hoch (>500°C) | Niedrig (<200°C) |
| Elektronen | Beteiligt | Nicht beteiligt |
| Beispiele | NaCl, Fe, Diamant | H₂O, N₂, Polymere |
| Festigkeit | Sehr hoch | Niedrig |
| Verformbarkeit | Variabel | Oft gut |

---

## Zusammenfassung - Van-der-Waals

**Van-der-Waals-Bindungen:**
- London-Kräfte (alle Stoffe)
- Dipol-Dipol (polare Moleküle)
- Schwach (0,5-25 kJ/mol)
- Kurzreichweitig
- Bestimmen Siedepunkt/Schmelzpunkt
- Wichtig für Polymere, Schmierstoffe
- Ermöglichen Adsorption
- "Gleiches löst sich in Gleichem"

---

## Zusammenfassung - Wasserstoffbrücken

**Wasserstoffbrückenbindungen:**
- Stärkste Sekundärbindung (10-40 kJ/mol)
- H gebunden an F, O, N
- Gerichtet
- Erhöhen Siedepunkt dramatisch
- Lebenswichtig (DNA, Proteine, Wasser)
- Hohe Verdampfungsenthalpie
- Dichteanomalie des Wassers
- Festigkeit von Cellulose

