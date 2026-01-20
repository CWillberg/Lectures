---
marp: true

theme: h2
header: 'Werkstofftechnik - Elektrische Eigenschaften'
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

# Elektrische Eigenschaften von Werkstoffen

**Werkstofftechnik**

Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

---

## Lernziele

- Elektrische Leitfähigkeit und ihre physikalischen Grundlagen verstehen
- Unterschiede zwischen Leitern, Halbleitern und Isolatoren kennen
- Dielektrische Eigenschaften beschreiben können
- Technische Anwendungen elektrischer Eigenschaften zuordnen
- Auswahlkriterien für elektrische Anwendungen entwickeln

---

## Übersicht Elektrische Eigenschaften

**Wichtige elektrische Kenngrößen:**

- Elektrische Leitfähigkeit σ bzw. spezifischer Widerstand ρ
- Dielektrizitätskonstante ε_r
- Durchschlagfestigkeit E_d
- Verlustfaktor tan δ
- Bandlücke E_g (bei Halbleitern)

---

## Elektrische Leitfähigkeit

**Ohm'sches Gesetz:**

$$J = \sigma \cdot E$$

- J: Stromdichte (A/m²)
- σ: elektrische Leitfähigkeit (S/m)
- E: elektrische Feldstärke (V/m)

**Spezifischer Widerstand:**
$$\rho = \frac{1}{\sigma}$$
Einheit: Ω·m

---

## Klassifikation nach Leitfähigkeit

| Werkstoffklasse | σ (S/m) | ρ (Ω·m) |
|-----------------|---------|---------|
| Leiter | 10⁶ - 10⁸ | 10⁻⁸ - 10⁻⁶ |
| Halbleiter | 10⁻⁶ - 10⁴ | 10⁻⁴ - 10⁶ |
| Isolatoren | < 10⁻¹⁰ | > 10¹⁰ |

**Unterschied über 18 Größenordnungen!**

---

## Leitungsmechanismen

**Elektronenleitung:**
- Freie Elektronen (Metalle)
- Beweglichkeit der Ladungsträger

**Ionenleitung:**
- Bewegung von Ionen (Elektrolyte, Ionenleiter)
- Temperaturabhängig

**Löcherleitung:**
- Fehlstellen im Valenzband (Halbleiter)
- "Positive" Ladungsträger

---

## Metallische Leitung

**Bändermodell:**
- Valenzband und Leitungsband überlappen
- Freie Elektronen im Leitungsband
- Hohe Ladungsträgerdichte (~10²³ cm⁻³)

**Beweglichkeit μ:**
$$\sigma = n \cdot e \cdot \mu$$
- n: Ladungsträgerdichte
- e: Elementarladung
- μ: Beweglichkeit

---

## Temperaturabhängigkeit Metalle

**Leitfähigkeit sinkt mit Temperatur:**

$$\rho(T) = \rho_0 [1 + \alpha(T - T_0)]$$

**Gründe:**
- Erhöhte Gitterschwingungen (Phononen)
- Mehr Streuung der Elektronen
- Kürzere freie Weglänge

**Temperaturkoeffizient α:**
Typisch +0.004 K⁻¹ für Metalle

---

## Matthiessen'sche Regel

**Gesamtwiderstand:**

$$\rho_{ges} = \rho_{Phonon} + \rho_{Defekt}$$

**Beiträge zum Widerstand:**
- Phononen (temperaturabhängig)
- Punktdefekte
- Versetzungen
- Korngrenzen
- Fremdatome

**Bei T → 0: Restwiderstand bleibt**

---

## Leitfähigkeit wichtiger Metalle

| Metall | σ (10⁶ S/m) | ρ (10⁻⁸ Ω·m) |
|--------|--------------|--------------|
| Silber | 63 | 1.59 |
| Kupfer | 59 | 1.68 |
| Gold | 45 | 2.21 |
| Aluminium | 38 | 2.65 |
| Wolfram | 18 | 5.5 |
| Eisen | 10 | 10 |

---

## Supraleitung

**Phänomen:**
- Sprunghafte Abnahme von ρ auf null
- Unterhalb kritischer Temperatur T_c
- Meissner-Ochsenfeld-Effekt (Feldverdrängung)

**Anwendungen:**
- Verlustfreie Stromleitung
- Starke Magnete (MRT, Teilchenbeschleuniger)
- Quantencomputer

---

## Kritische Temperaturen

| Material | T_c (K) |
|----------|---------|
| Aluminium | 1.2 |
| Blei | 7.2 |
| Niob | 9.3 |
| Nb₃Sn | 18 |
| YBa₂Cu₃O₇ | 92 |
| HgBa₂Ca₂Cu₃O₈ | 133 |

**Hochtemperatur-Supraleiter:**
Oberhalb von 77 K (flüssiger Stickstoff)

---

## Halbleiter - Grundlagen

**Bändermodell:**
- Valenzband voll besetzt
- Leitungsband leer (bei T = 0)
- Bandlücke E_g (0.1 - 4 eV)

**Eigenleitung:**
- Thermische Anregung von Elektronen
- Erzeugung von Elektron-Loch-Paaren
- Temperaturabhängig

---

## Intrinsische Halbleiter

**Ladungsträgerdichte:**

$$n = p \propto \exp\left(-\frac{E_g}{2kT}\right)$$

**Leitfähigkeit:**
$$\sigma = e(n\mu_e + p\mu_h)$$

- μ_e: Elektronenbeweglichkeit
- μ_h: Löcherbeweglichkeit

**Temperaturabhängigkeit stark exponentiell**

---

## Bandlücken wichtiger Halbleiter

| Halbleiter | E_g (eV) bei 300K |
|------------|-------------------|
| Germanium (Ge) | 0.66 |
| Silizium (Si) | 1.12 |
| Galliumarsenid (GaAs) | 1.42 |
| Galliumnitrid (GaN) | 3.4 |
| Siliziumcarbid (SiC) | 3.26 |
| Diamant (C) | 5.5 |

---

## Dotierung von Halbleitern

**n-Dotierung (Donatoren):**
- Zusatz von Elementen mit mehr Valenzelektronen
- Elektronen als Majoritätsladungsträger
- Beispiel: P, As in Si

**p-Dotierung (Akzeptoren):**
- Zusatz von Elementen mit weniger Valenzelektronen
- Löcher als Majoritätsladungsträger
- Beispiel: B, Al in Si

---

## Extrinsische Halbleiter

**Leitfähigkeit:**
- Dominiert durch Dotierung (nicht Eigenleitung)
- Schwächere Temperaturabhängigkeit
- Gezielte Einstellung möglich

**Dotierkonzentration:**
- Typisch 10¹⁴ - 10¹⁹ cm⁻³
- Vs. Atomdichte Si: ~5·10²² cm⁻³
- Wenige ppm können Eigenschaften stark ändern

---

## pn-Übergang

**Grundlage aller Halbleiterbauelemente:**
- Kontakt zwischen n- und p-dotiertem Material
- Diffusion von Ladungsträgern
- Raumladungszone
- Gleichrichterwirkung

**Anwendungen:**
- Dioden
- Transistoren
- Solarzellen
- LEDs

---

## Isolatoren (Dielektrika)

**Eigenschaften:**
- Sehr große Bandlücke (> 4 eV)
- Keine freien Ladungsträger
- Sehr hoher spezifischer Widerstand
- Dielektrische Polarisation möglich

**Einsatz:**
- Elektrische Isolierung
- Kondensatoren
- Substrate für Schaltungen

---

## Dielektrische Polarisation

**Mechanismen:**

1. **Elektronenpolarisation**
   - Verschiebung der Elektronenhülle
   - Sehr schnell (optische Frequenzen)

2. **Ionenpolarisation**
   - Verschiebung von Ionen
   - IR-Frequenzen

3. **Orientierungspolarisation**
   - Ausrichtung permanenter Dipole
   - Niederfrequent

---

## Dielektrizitätskonstante ε_r

**Permittivität:**
$$\varepsilon = \varepsilon_0 \cdot \varepsilon_r$$

- ε₀: Permittivität des Vakuums
- ε_r: relative Permittivität (dimensionslos)

**Kapazität:**
$$C = \varepsilon_0 \varepsilon_r \frac{A}{d}$$

**Höhere ε_r → höhere Kapazität**

---

## Dielektrizitätskonstanten

| Material | ε_r |
|----------|-----|
| Vakuum | 1.0 |
| Luft | 1.0006 |
| PTFE (Teflon) | 2.1 |
| Polyethylen | 2.3 |
| Glas | 4-10 |
| Aluminiumoxid | 9 |
| Titanoxid | 100 |
| Bariumtitanat | 1000-10000 |

---

## Frequenzabhängigkeit

**Dispersion:**
- ε_r ist frequenzabhängig
- Verschiedene Polarisationsmechanismen
- Relaxationszeiten unterschiedlich

**Bereiche:**
- Niederfrequenz: alle Mechanismen aktiv
- Hochfrequenz: nur Elektronenpolarisation
- Optisch: ε_r ≈ n² (Brechungsindex)

---

## Dielektrische Verluste

**Verlustfaktor tan δ:**

$$\tan \delta = \frac{\varepsilon''}{\varepsilon'}$$

- ε': Realteil (Speicherung)
- ε'': Imaginärteil (Verlust)

**Ursachen:**
- Leitfähigkeitsverluste
- Dipol-Relaxation
- Resonanzverluste

**Wichtig für Hochfrequenzanwendungen**

---

## Durchschlagfestigkeit

**Dielektrische Festigkeit E_d:**
- Maximale Feldstärke vor Durchschlag
- Einheit: kV/mm oder MV/m
- Abhängig von Dicke, Temperatur, Frequenz

**Durchschlag:**
- Lawineneffekt
- Ionisation
- Irreversible Schädigung

---

## Durchschlagfestigkeiten

| Material | E_d (MV/m) |
|----------|------------|
| Luft (1 bar) | 3 |
| Polyethylen | 18-20 |
| PTFE | 20-25 |
| Epoxidharz | 15-20 |
| Glimmer | 200 |
| Aluminiumoxid | 10-35 |
| Siliziumoxid | 10 |

**Dünne Schichten: höhere Werte möglich**

---

## Ferroelektrika

**Eigenschaften:**
- Spontane Polarisation
- Hysterese im E-P-Diagramm
- Curie-Temperatur T_c
- Sehr hohe ε_r

**Beispiele:**
- Bariumtitanat (BaTiO₃)
- Blei-Zirkonat-Titanat (PZT)
- Rochelle-Salz

---

## Piezoelektrizität

**Direkter Effekt:**
- Mechanische Spannung → elektrische Spannung
- Sensoren, Zünder

**Inverser Effekt:**
- Elektrische Spannung → mechanische Verformung
- Aktoren, Ultraschallwandler

**Piezoelektrischer Koeffizient d:**
- Koppling zwischen mechanisch und elektrisch

---

## Pyroelektrizität

**Phänomen:**
- Temperaturänderung → Polarisationsänderung
- Elektrische Ladung an Oberfläche

**Anwendungen:**
- IR-Detektoren
- Bewegungsmelder
- Temperatursensoren

**Alle Pyroelektrika sind piezoelektrisch**

---

## Ionenleiter

**Festkörperelektrolyte:**
- Leitung durch mobile Ionen
- Temperaturaktiviert
- Arrhenius-Verhalten

$$\sigma = \sigma_0 \exp\left(-\frac{E_a}{kT}\right)$$

**Anwendungen:**
- Batterien (Li⁺-Leiter)
- Brennstoffzellen (O²⁻-Leiter)
- Sensoren

---

## Wiedemann-Franz-Gesetz

**Zusammenhang Wärme- und elektrische Leitung:**

$$\frac{\lambda}{\sigma T} = L$$

- λ: Wärmeleitfähigkeit
- σ: elektrische Leitfähigkeit
- T: absolute Temperatur
- L: Lorenz-Zahl (2.45·10⁻⁸ W·Ω/K²)

**Gilt für Metalle, da beide durch Elektronen**

---

## Skineffekt

**Hochfrequenz-Phänomen:**
- Verdrängung des Stroms an Oberfläche
- Frequenzabhängig
- Effektiver Querschnitt reduziert

**Eindringtiefe δ:**

$$\delta = \sqrt{\frac{2\rho}{\omega\mu}}$$

**Bedeutung:**
- HF-Leitungen
- Induktive Erwärmung
- Abschirmung

---

## Kontaktwiderstände

**Nicht-ideale Kontakte:**
- Oxidschichten
- Rauheit (reduzierte Kontaktfläche)
- Kontaminationen

**Ursachen erhöhten Widerstands:**
- Engewiderstand
- Übergangswiderstand
- Tunneleffekt durch Oxidschichten

**Wichtig bei Verbindungstechnik**

---

## Elektrische Alterung

**Degradationsmechanismen:**

1. **Elektromigration**
   - Materialtransport durch Elektronen
   - Leiterbahnbruch oder Kurzschluss

2. **Korrosion**
   - Elektrochemische Prozesse
   - Feuchtigkeit, Spannung

3. **Durchschlagpfade (Treeing)**
   - In Isolatoren
   - Dendritenbildung

---

## Leitfähige Polymere

**Konjugierte Polymere:**
- π-Elektronensystem
- Dotierbar
- σ bis 10⁵ S/m möglich

**Beispiele:**
- Polyacetylen
- Polyanilin
- Polypyrrol
- PEDOT

**Anwendungen:**
- Organische Elektronik
- Antistatische Beschichtungen
- Elektrochrome Displays

---

## Gefüllte Polymere

**Leitfähige Füllstoffe:**
- Rußpartikel (Carbon Black)
- Metallflocken
- Carbon Nanotubes
- Graphen

**Perkolationsschwelle:**
- Kritische Konzentration für Leitfähigkeit
- Partikel müssen Netzwerk bilden
- Typisch 1-20 Vol.-%

---

## Transparente leitfähige Oxide (TCO)

**Eigenschaften:**
- Optisch transparent
- Elektrisch leitend
- Dünnschichten

**Materialien:**
- Indium-Zinn-Oxid (ITO)
- Fluor-dotiertes Zinn-Oxid (FTO)
- Aluminium-dotiertes Zinkoxid (AZO)

**Anwendungen:**
- Touchscreens
- Displays
- Solarzellen

---

## Werkstoffe für Leitungen

**Anforderungen:**
- Hohe Leitfähigkeit
- Mechanische Festigkeit
- Korrosionsbeständigkeit
- Verarbeitbarkeit
- Kosten

**Typische Materialien:**
- Kupfer (beste Leitfähigkeit/Kosten)
- Aluminium (leicht, Hochspannungsleitungen)
- Silber (höchste Leitfähigkeit, teuer)

---

## Werkstoffe für Isolierung

**Anforderungen:**
- Hoher spezifischer Widerstand
- Hohe Durchschlagfestigkeit
- Niedrige Verluste (tan δ)
- Temperaturstabilität
- Mechanische Eigenschaften

**Materialien:**
- Keramik (hohe Temperaturen)
- Polymere (flexibel, leicht)
- Glas (transparent, stabil)

---

## Anwendung: Kondensatoren

**Materialauswahl nach ε_r:**

- **Hohe Kapazität:** Bariumtitanat, Tantal
- **Niedrige Verluste:** PTFE, Polypropylen
- **Hochspannung:** Glimmer, Keramik
- **Hochfrequenz:** Luft, PTFE

**Kompromiss:** Kapazität vs. Verluste vs. Stabilität

---

## Anwendung: Halbleiterbauelemente

**Silizium dominiert:**
- Verfügbarkeit
- Etablierte Technologie
- Gute elektrische Eigenschaften
- Native Oxidschicht (SiO₂)

**Spezialanwendungen:**
- GaAs: Hochfrequenz
- GaN, SiC: Leistungselektronik, Hochtemperatur
- InP: Optische Kommunikation

---

## Anwendung: Sensoren

**Resistive Sensoren:**
- Dehnungsmessstreifen
- Thermistoren (NTC, PTC)
- Gassensoren

**Kapazitive Sensoren:**
- Abstandsmessung
- Feuchtigkeitssensoren
- Beschleunigungssensoren

**Piezoelektrische Sensoren:**
- Kraft, Druck
- Beschleunigung
- Akustik

---

## Anwendung: Energiespeicherung

**Batterien:**
- Ionenleiter als Elektrolyt
- Elektronenleiter als Elektroden
- Hohe Kapazität erforderlich

**Kondensatoren/Superkondensatoren:**
- Hohe ε_r
- Große Oberfläche
- Schnelles Laden/Entladen

---

## Messmethoden

**Leitfähigkeit:**
- Vierpunktmessung (eliminiert Kontaktwiderstände)
- Van-der-Pauw-Methode
- Hall-Effekt-Messung

**Dielektrische Eigenschaften:**
- Impedanzspektroskopie
- Resonanzmethoden
- Plattenkondensator

**Durchschlagfestigkeit:**
- Spannungssteigerungsverfahren

---

## Normen und Standards

**Wichtige Normen:**
- IEC 60093: Isolationswiderstand
- IEC 60243: Durchschlagfestigkeit
- IEC 62631: Dielektrische Eigenschaften
- ASTM D257: DC Resistance
- DIN EN 60250: Messmethoden

---

## Werkstoffauswahl

**Kriterien für elektrische Anwendungen:**

1. Leitfähigkeit/Widerstand
2. Dielektrische Eigenschaften
3. Temperaturstabilität
4. Mechanische Eigenschaften
5. Langzeitstabilität
6. Kosten
7. Verarbeitbarkeit

---

## Materialvergleich: Leiter

| Eigenschaft | Cu | Al | Ag | Au |
|-------------|-----|-----|-----|-----|
| σ (rel.) | 100% | 64% | 106% | 76% |
| Dichte | 8.9 | 2.7 | 10.5 | 19.3 |
| Kosten | mittel | niedrig | niedrig | sehr hoch |
| Korrosion | mittel | Oxidschicht | niedrig | sehr niedrig |

**σ-zu-Masse:** Aluminium vorteilhaft

---

## Multifunktionale Materialien

**Kombination elektrischer und anderer Eigenschaften:**

- Strukturelle Elektronik (tragfähig + leitend)
- Transparente Leiter (TCO)
- Flexible Elektronik (Polymere)
- Selbstheilende Materialien
- Formgedächtnis + Sensorik

---

## Emerging Technologies

**Neue Entwicklungen:**

- Graphen: 2D-Material, extreme Eigenschaften
- Topologische Isolatoren
- Quantenmaterialien
- Organische Halbleiter
- Molekulare Elektronik
- Neuromorphe Hardware

---

## Zusammenfassung

**Elektrische Eigenschaften:**
- Riesige Bandbreite über 18 Größenordnungen
- Physikalische Grundlage: Bändermodell
- Drei Hauptklassen: Leiter, Halbleiter, Isolatoren
- Temperatur- und frequenzabhängig
- Dotierung ermöglicht gezielte Einstellung
- Wichtig für moderne Technologie

---

## Ausblick

**Im Seminar:**
- Berechnung von Widerständen und Leitungen
- Dimensionierung von Isolationen
- Halbleiter-Dotierungsrechnungen
- Kondensator-Auslegung
- Werkstoffauswahl für Anwendungsfälle

---

## Fragen?

**Kontakt:**
Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de