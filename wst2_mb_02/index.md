---
marp: true

theme: h2
header: 'Werkstofftechnik - Thermische Eigenschaften'
footer: ''

title: 'Werkstofftechnik - Thermische Eigenschaften'
author: Christian Willberg
---


# Thermische Eigenschaften von Werkstoffen


Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

---

## Lernziele

- Thermische Ausdehnung und ihre technische Bedeutung verstehen
- Wärmekapazität und spezifische Wärme unterscheiden können
- Wärmeleitfähigkeit verschiedener Werkstoffklassen kennen
- Thermische Spannungen qualitativ beschreiben können
- Anwendungsbezogene Auswahlkriterien entwickeln

---

## Übersicht Thermische Eigenschaften

**Wichtige thermische Kenngrößen:**

- Thermischer Ausdehnungskoeffizient $α$
- Spezifische Wärmekapazität $c$
- Wärmeleitfähigkeit $λ$
- Schmelztemperatur $T_m$
- Thermischer Schock-Parameter

---

## Thermische Ausdehnung

**Linearer Ausdehnungskoeffizient α:**

$$\alpha = \frac{1}{l_0} \frac{\Delta l}{\Delta T}$$

**Volumenausdehnungskoeffizient:**

$$\beta \approx 3\alpha$$ (für isotrope Werkstoffe)

Einheit: K⁻¹ oder °C⁻¹

---

## Physikalischer Ursprung

**Atomistische Betrachtung:**

- Asymmetrie des interatomaren Potentials
- Bei Erwärmung: größere Schwingungsamplitude
- Mittlerer Atomabstand vergrößert sich
- Stärkere Bindungen → geringere Ausdehnung

---

## Größenordnungen α

| Werkstoffgruppe | α (10⁻⁶ K⁻¹) | Beispiele |
|-----------------|---------------|-----------|
| Keramik | 1-10 | Al₂O₃: 8, SiC: 4 |
| Metalle | 10-25 | Al: 23, Stahl: 12, Cu: 17 |
| Polymere | 50-200 | PE: 100-200, PMMA: 70 |
| Verbunde | variabel | CFK: -1 bis 30 |

---

## Technische Bedeutung

**Probleme durch thermische Ausdehnung:**

- Thermische Spannungen bei Temperaturgradienten
- Maßänderungen bei Temperaturwechsel
- Fügeprobleme bei unterschiedlichen Materialien
- Verformung von Präzisionsbauteilen

---

## Bimetall-Effekt

**Prinzip:**
- Zwei Werkstoffe mit unterschiedlichem α
- Fest verbunden (geklebt, gelötet, geschweißt)
- Bei Temperaturänderung → Verbiegung

**Anwendungen:**
- Temperaturschalter
- Thermostate
- Thermometer

---

## Anisotropie der Ausdehnung

**Kristalline Werkstoffe:**
- Unterschiedliche α in verschiedenen Kristallrichtungen
- Bei polykristallinen Werkstoffen meist gemittelt

**Faserverbunde:**
- Längs zur Faser: sehr gering (sogar negativ möglich)
- Quer zur Faser: hoch
- Gezieltes Design möglich

---

## Wärmekapazität

**Spezifische Wärmekapazität c:**

$$Q = m \cdot c \cdot \Delta T$$

- Wärmemenge Q zur Temperaturerhöhung
- Einheit: J/(kg·K)
- Materialeigenschaft

---

## Physikalische Grundlagen

**Energiespeicherung durch:**

- Gitterschwingungen (Phononen)
- Elektronische Anregung (Metalle)
- Molekülschwingungen (Polymere)

**Dulong-Petit-Gesetz** (klassisch, hohe T):
$$c \approx \frac{3R}{M}$$
R: Gaskonstante, M: Molare Masse

---

## Größenordnungen c

| Werkstoff | c (J/(kg·K)) |
|-----------|--------------|
| Aluminium | 900 |
| Stahl | 450 |
| Kupfer | 385 |
| Glas | 800 |
| Wasser | 4180 |
| Polymere | 1000-2000 |

---

## Technische Bedeutung

**Wärmekapazität ist wichtig für:**

- Wärmespeicher und Kühlkörper
- Thermische Trägheit von Bauteilen
- Energiebedarf bei Erwärmung/Abkühlung
- Temperaturstabilität

**Hohe c:**
- Große Wärmemenge speicherbar
- Langsame Temperaturänderung

---

## Wärmeleitfähigkeit λ

**Fourier'sches Gesetz:**

$$\dot{Q} = -\lambda A \frac{dT}{dx}$$

- Wärmestrom proportional zu Temperaturgradient
- Einheit: W/(m·K)
- Stark temperaturabhängig

---

## Mechanismen der Wärmeleitung

**Metalle:**
- Hauptsächlich durch freie Elektronen
- Hohe elektrische Leitfähigkeit → hohe Wärmeleitfähigkeit
- Wiedemann-Franz-Gesetz

**Nichtmetalle:**
- Gitterschwingungen (Phononen)
- Deutlich geringer als Metalle
- Streuung an Defekten reduziert λ

---

## Größenordnungen λ

| Werkstoffgruppe | λ (W/(m·K)) | Beispiele |
|-----------------|-------------|-----------|
| Metalle | 50-400 | Cu: 400, Al: 235, Stahl: 50 |
| Keramik | 2-50 | Al₂O₃: 30, SiC: 120 |
| Polymere | 0.1-0.5 | PMMA: 0.2, PE: 0.4 |
| Schaum/Isolierung | 0.02-0.05 | PUR-Schaum |
| Diamant | ~2000 | Extremfall |

---

## Anwendungen nach λ

**Hohe Wärmeleitfähigkeit erwünscht:**
- Kühlkörper (Al, Cu)
- Wärmetauscher
- Elektroniksysteme
- Kochgeschirr

**Niedrige Wärmeleitfähigkeit erwünscht:**
- Wärmedämmung
- Hitzeschutz
- Griffe von Werkzeugen
- Isolierung

---

## Thermischer Schock

**Definition:**
Schnelle Temperaturänderung führt zu:
- Temperaturgradienten im Bauteil
- Thermischen Spannungen
- Möglicher Rissbildung

**Kritisch bei:**
- Spröden Werkstoffen (Keramik, Glas)
- Großen Bauteilen
- Schnellen Temperaturwechseln

---

## Thermische Spannungen

**Behinderung der thermischen Ausdehnung:**

$$\sigma_{th} = E \cdot \alpha \cdot \Delta T$$

(bei vollständiger Behinderung)

**Bei Temperaturgradienten:**
- Unterschiedliche Ausdehnung in verschiedenen Bereichen
- Selbstausgleichende Spannungen
- Keine externe Kraft nötig

---

## Thermischer Schock-Parameter

**Widerstand gegen Thermoschock:**

$$R = \frac{\sigma_f \cdot (1-\nu)}{\alpha \cdot E}$$

- σ_f: Festigkeit
- ν: Querkontraktionszahl
- E: E-Modul
- α: Ausdehnungskoeffizient

**Hoher R-Wert:**
- Geringe Ausdehnung
- Hohe Festigkeit
- Niedriger E-Modul

---

## Verbesserung Thermoschockbeständigkeit

**Werkstoffauswahl:**
- Niedriger α
- Hohe Festigkeit σ_f
- Niedriger E-Modul

**Konstruktive Maßnahmen:**
- Langsame Temperaturänderung
- Vorwärmen/Vorkühlen
- Dehnungsfugen
- Dünnwandige Konstruktion

---

## Schmelztemperatur T_m

**Definition:**
Temperatur des Fest-Flüssig-Phasenübergangs

**Abhängigkeit von:**
- Bindungsenergie
- Kristallstruktur
- Atomradius

**Technische Bedeutung:**
- Maximale Einsatztemperatur (ca. 0.5-0.8 T_m)
- Verarbeitungstemperatur
- Fügetechniken

---

## Schmelztemperaturen

| Werkstoff | T_m (°C) |
|-----------|----------|
| Wolfram | 3422 |
| Eisen | 1538 |
| Kupfer | 1085 |
| Aluminium | 660 |
| Zinn | 232 |
| Al₂O₃ | 2054 |
| Polymere | 100-300 |

---

## Thermische Ermüdung

**Thermal Fatigue:**
- Wiederholte Temperaturwechsel
- Zyklische thermische Spannungen
- Akkumulation von Schäden
- Rissbildung und -wachstum

**Kritische Anwendungen:**
- Turbinenschaufeln
- Motorkomponenten
- Thermozyklen in Elektronik

---

## Vergleich Werkstoffklassen

**Metalle:**
- Mittlere α, hohe λ, definierte T_m
- Duktil → tolerant gegen Thermoschock

**Keramik:**
- Niedrige α, mittlere λ, sehr hohe T_m
- Spröde → anfällig für Thermoschock

**Polymere:**
- Hohe α, niedrige λ, niedrige T_m
- Kriechverhalten bei erhöhten Temperaturen

---

## Hybridwerkstoffe und Verbunde

**Kombination von Eigenschaften:**
- Metallmatrix-Composite (MMC): verstärkte Metalle
- Keramikmatrix-Composite (CMC): zähere Keramik
- Polymer-Matrix-Composite (PMC): angepasste α

**Herausforderungen:**
- Unterschiedliche Ausdehnungskoeffizienten
- Grenzflächenspannungen
- Thermische Zyklen kritisch

---

## Messmethoden

**Thermische Ausdehnung:**
- Dilatometrie
- Dehnungsmessstreifen
- Interferometrie

**Wärmeleitfähigkeit:**
- Stationäre Methoden (Plattenverfahren)
- Instationäre Methoden (Laser-Flash)

**Wärmekapazität:**
- Dynamische Differenzkalorimetrie (DSC)
- Kalorimetrie

---

## Normen und Standards

**Wichtige Normen:**
- DIN 51045: Wärmeleitfähigkeit
- DIN 51007: Spezifische Wärmekapazität
- DIN 53752: Thermische Längenausdehnung
- ISO 11359: Thermomechanische Analyse

---

## Werkstoffauswahl

**Kriterien bei thermischer Beanspruchung:**

1. Einsatztemperatur vs. Schmelztemperatur
2. Thermische Ausdehnung (Verbund, Fügestellen)
3. Wärmeleitfähigkeit (Kühlung, Isolierung)
4. Thermoschockbeständigkeit
5. Langzeitstabilität bei Temperatur

---

## Anwendungsbeispiele Hochtemperatur

**Turbinen:**
- Nickel-Basis-Superlegierungen
- Einkristalle für Schaufeln
- Thermische Barrieren (TBC)

**Öfen und Brenner:**
- Hochtemperaturkeramik (Al₂O₃, SiC)
- Feuerfeste Werkstoffe
- Isolierende Ausmauerung

---

## Anwendungsbeispiele Tieftemperatur

**Kryotechnik:**
- Austentitische Stähle (zäh bei -196°C)
- Aluminium-Legierungen
- Spezielle Polymere

**Raumfahrt:**
- Extreme Temperaturwechsel
- Vakuum-Umgebung
- Leichtbau erforderlich

---

## Zusammenfassung Thermische Eigenschaften

- Thermische Ausdehnung führt zu Spannungen
- Wärmekapazität bestimmt thermische Trägheit
- Wärmeleitfähigkeit kontrolliert Wärmetransport
- Thermoschock kritisch für spröde Werkstoffe
- Werkstoffauswahl nach Anwendungstemperatur

---

## Ausblick

**Im Seminar:**
- Berechnungen thermischer Spannungen
- Dimensionierung bei Temperaturbelastung
- Fallbeispiele und Übungsaufgaben
- Werkstoffauswahl für konkrete Anwendungen

---

## Fragen?

**Kontakt:**
Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de

