---
marp: true

theme: h2
header: 'Bindungen'
footer: ''

title:  Werkstofftechnik II - Festigkeit und Plastizität
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


##  Werkstofftechnik II - Festigkeit und Plastizität
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](./assets/orbitale.png)

Kontakt: christian.willberg@h2.de

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Bildreferenz</a>
</div>


---

<!--paginate: true-->


# Gleichungen
**Coulomb-Kraft:**
$$F_{an} = \frac{q_1 q_2}{4\pi\varepsilon_0 r^2}$$
**Coulomb-Energie:**
$$E_{Coulomb} = \frac{q_1 q_2}{4\pi\varepsilon_0 r}$$
**Coulomb-Energie bezogen auf Ladungen:**
$$E = \frac{(+e)(-e)}{4\pi\varepsilon_0 r}$$

---



## Bindungsenergie und Schmelztemperatur

Analysieren Sie die Tabelle der Bindungsenergien:

**a)** Berechnen Sie das Verhältnis von Bindungsenergie zu Schmelztemperatur für:
- NaCl, MgO (ionisch)
- Si, Diamant (kovalent)
- Al, Fe, W (metallisch)

**b)** Welcher Zusammenhang besteht zwischen Bindungsenergie und Schmelztemperatur?

**c)** Warum ist dieser Zusammenhang nicht linear? Diskutieren Sie weitere Einflussfaktoren.

**d)** Ordnen Sie folgende Materialien nach erwarteter Schmelztemperatur:
TiO₂, Cu, Graphit, LiF

---

## Koordinationszahl und Festigkeit

**a)** Berechnen Sie die "mittlere Bindungsenergie pro Nachbar" für:
- Diamant (4 Nachbarn, 7,40 eV gesamt)
- Aluminium (12 Nachbarn, 3,40 eV gesamt)

**b)** Welches Material hat die stärkere Einzelbindung?

**c)** Erklären Sie, warum Wolfram (W) trotz metallischer Bindung eine so hohe Schmelztemperatur hat.

**d)** Skizzieren Sie qualitativ die Lennard-Jones-Potentiale für Al und W. Was unterscheidet sie?

---

## E-Modul aus Bindungspotential

Gegeben: Lennard-Jones-Potential 
$$U(r) = 4\varepsilon \left[\left(\frac{\sigma}{r}\right)^{12} - \left(\frac{\sigma}{r}\right)^6\right]$$

**a)** Leiten Sie die Kraft $F(r) = -\frac{dU}{dr}$ her.

**b)** Bestimmen Sie den Gleichgewichtsabstand $r_0$ durch $F(r_0) = 0$.

**c)** Die Federkonstante ist $k = \left.\frac{d^2U}{dr^2}\right|_{r_0}$. 
Zeigen Sie qualitativ: Tieferes Potential → größeres k → größerer E-Modul.

**d)** Ordnen Sie nach erwartetem E-Modul: Ar, Al, Si, Diamant

---

## Ionenbindung quantitativ

Berechnen Sie für NaCl die Coulomb-Energie zweier isolierter Ionen:

**Gegeben:**
- Ionenabstand: $r_0 = 0,28$ nm
- Elementarladung: $e = 1,6 \times 10^{-19}$ C
- $\varepsilon_0 = 8,854 \times 10^{-12}$ F/m

**a)** Berechnen Sie $E_{Coulomb}$ in Joule und eV.

**b)** Vergleichen Sie mit der gemessenen Bindungsenergie (3,30 eV). Warum weichen die Werte ab?

**c)** Im Kristall hat jedes Na⁺-Ion 6 Cl⁻-Nachbarn. Schätzen Sie den zusätzlichen Energiegewinn.

**d)** Wiederholen Sie die Rechnung für MgO ($r_0 \approx 0,21$ nm, doppelte Ladungen).

---


##  Ashby-Diagramm Analyse

**a)** Identifizieren Sie im Ashby-Diagramm Bereiche für:
- Metalle
- Keramiken
- Polymere
- Verbundwerkstoffe

**b)** Welche Materialgruppe hat das beste Festigkeit-zu-Dichte-Verhältnis?

**c)** Für eine Flugzeugstruktur (hohe Festigkeit, geringes Gewicht) - welche Materialien sind geeignet?

**d)** Warum liegen Schäume in einem separaten Bereich?

---


## Bindungsenergie und Zugfestigkeit

**a)** Die theoretische Zugfestigkeit lässt sich abschätzen durch:
$$\sigma_{th} \approx \frac{E}{10}$$

Berechnen Sie $\sigma_{th}$ für 3 beliebige Materialien.

**b)** Abgleich reale Zugfestigkeit.


**c)** Welche mikrostrukturellen Defekte reduzieren die Festigkeit?

---


| Eigenschaft | Ionisch | Kovalent | Metallisch | Van-der-Waals |
|-------------|---------|----------|------------|---------------|
| Bindungsenergie | | | | |
| Schmelztemp. | | | | |
| E-Modul | | | | |
| Elektrische Leitf. | | | | |
| Wärmeleitf. | | | | |
| Duktilität | | | | |
| Beispiel | | | | |

Verwenden Sie: sehr hoch / hoch / mittel / niedrig / sehr niedrig


---

## Lösung: Bindungsenergie und Schmelztemperatur (Forts.)

**b) Zusammenhang:**
- Generell gilt: Höhere Bindungsenergie → höhere Schmelztemperatur
- Materialien mit starken Bindungen benötigen mehr thermische Energie zum Aufbrechen
- Tendenz erkennbar, aber kein streng linearer Zusammenhang

**c) Weitere Einflussfaktoren:**
- **Koordinationszahl:** Mehr Nachbarn → mehr Bindungen insgesamt
- **Kristallstruktur:** Packungsdichte beeinflusst Bindungsanzahl
- **Atommasse:** Schwerere Atome haben niedrigere Schwingungsfrequenzen
- **Gittergeometrie:** Verschiedene Strukturen → verschiedene Bindungsanordnungen
- **Schmelzmechanismus:** Defektbildung, Gitteraufweichung

---

## Lösung: Bindungsenergie und Schmelztemperatur (Forts.)

**d) Ordnung nach erwarteter Schmelztemperatur:**

1. **Graphit** (~3550°C) - Kovalente C-C Bindungen, sehr stark
2. **TiO₂** (~1840°C) - Ionisch/kovalent gemischt, hohe Bindungsenergie
3. **Cu** (~1085°C) - Metallisch, mittlere Bindungsenergie
4. **LiF** (~845°C) - Ionisch, aber kleine Ionen mit moderater Gesamtenergie

**Begründung:**
- Kovalente Bindungen in Graphit sind am stärksten
- Keramiken (TiO₂) haben hohe Schmelzpunkte durch starke Bindungen
- Metalle variieren stark (Cu ist mittel)
- LiF trotz starker Bindung niedriger wegen kleiner Kristallstruktur

---

## Lösung: Koordinationszahl und Festigkeit

**a) Mittlere Bindungsenergie pro Nachbar:**

- **Diamant:** 7,40 eV / 4 Nachbarn = **1,85 eV pro Bindung**
- **Aluminium:** 3,40 eV / 12 Nachbarn = **0,28 eV pro Bindung**

**b) Stärkere Einzelbindung:**
- **Diamant** hat ca. 6,6-mal stärkere Einzelbindungen als Aluminium
- Kovalente C-C Bindung ist die stärkste chemische Bindung
- Metallische Bindung ist schwächer, wird aber durch hohe Koordinationszahl kompensiert

---

## Lösung: Koordinationszahl und Festigkeit (Forts.)

**c) Wolfram - hohe Schmelztemperatur:**

**Faktoren:**
- **Hohe Anzahl Valenzelektronen:** 6 Valenzelektronen (5d⁴ 6s²)
- **Hohe Koordinationszahl:** KRZ-Struktur mit 8+6 Nachbarn
- **Kleine Atomgröße:** Kompakte Packung → kurze Bindungsabstände
- **Starke d-Orbital Überlappung:** d-Elektronen bilden starke metallische Bindungen
- **Hohe Bindungsenergie:** 8,80 eV/Atom

**Resultat:** Trotz metallischer Bindung extrem hohe Schmelztemperatur (3410°C)

---

## Lösung: Koordinationszahl und Festigkeit (Forts.)

**d) Lennard-Jones-Potentiale für Al und W:**

**Qualitative Unterschiede:**
- **W-Potential:** 
  - Tieferes Minimum (höhere Bindungsenergie)
  - Steilere Krümmung am Minimum (höhere Federkonstante)
  - Kürzerer Gleichgewichtsabstand r₀
  
- **Al-Potential:**
  - Flacheres Minimum (niedrigere Bindungsenergie)
  - Geringere Krümmung (kleinere Federkonstante)
  - Größerer Gleichgewichtsabstand

**Konsequenz:** W hat höheren E-Modul (~400 GPa vs. ~70 GPa)

---

## Lösung: E-Modul aus Bindungspotential

**a) Ableitung der Kraft:**

$$F(r) = -\frac{dU}{dr} = -\frac{d}{dr}\left[4\varepsilon \left(\frac{\sigma^{12}}{r^{12}} - \frac{\sigma^6}{r^6}\right)\right]$$

$$F(r) = -4\varepsilon\left[-12\frac{\sigma^{12}}{r^{13}} + 6\frac{\sigma^6}{r^7}\right]$$

$$F(r) = 4\varepsilon\left[12\frac{\sigma^{12}}{r^{13}} - 6\frac{\sigma^6}{r^7}\right]$$

$$F(r) = 24\varepsilon\left[2\left(\frac{\sigma}{r}\right)^{13} - \left(\frac{\sigma}{r}\right)^7\right]\frac{1}{r}$$

---

## Lösung: E-Modul aus Bindungspotential (Forts.)

**b) Gleichgewichtsabstand r₀:**

Bedingung: $F(r_0) = 0$

$$24\varepsilon\left[2\left(\frac{\sigma}{r_0}\right)^{13} - \left(\frac{\sigma}{r_0}\right)^7\right]\frac{1}{r_0} = 0$$

$$2\left(\frac{\sigma}{r_0}\right)^{13} = \left(\frac{\sigma}{r_0}\right)^7$$

$$2\left(\frac{\sigma}{r_0}\right)^6 = 1$$

$$\frac{\sigma}{r_0} = \left(\frac{1}{2}\right)^{1/6} = 2^{-1/6}$$

$$r_0 = 2^{1/6}\sigma \approx 1{,}12\sigma$$

---

## Lösung: E-Modul aus Bindungspotential (Forts.)

**c) Zusammenhang Potential-Tiefe und E-Modul:**

**Qualitative Argumentation:**
- Tieferes Potential ε → stärkere Bindung
- Stärkere Bindung → steilere Krümmung der Potentialkurve um r₀
- $k = \frac{d^2U}{dr^2}\Big|_{r_0}$ ist proportional zu ε
- Größeres k → größere "Federkonstante"
- E-Modul ist proportional zur atomaren Federkonstante
- **Resultat:** Größeres ε → größeres k → größerer E-Modul

**Physikalische Interpretation:**
Je tiefer die Potentialmulde, desto mehr Widerstand gegen Deformation

---

## Lösung: E-Modul aus Bindungspotential (Forts.)

**d) Ordnung nach E-Modul:**

**Ar < Al < Si < Diamant**

**Begründung:**
- **Ar (0,08 eV):** Van-der-Waals, sehr schwach → E ≈ 0 (Gas bei RT)
- **Al (3,40 eV):** Metallisch, moderate Bindung → E ≈ 70 GPa
- **Si (4,70 eV):** Kovalent, starke Bindung → E ≈ 165 GPa
- **Diamant (7,40 eV):** Stärkste kovalente Bindung → E ≈ 1000 GPa

**Faktor:** E(Diamant) / E(Al) ≈ 14

---

## Lösung: Ionenbindung quantitativ

**a) Berechnung für NaCl:**

$$E_{Coulomb} = \frac{(+e)(-e)}{4\pi\varepsilon_0 r_0}$$

$$E = -\frac{(1{,}6 \times 10^{-19})^2}{4\pi \times 8{,}854 \times 10^{-12} \times 0{,}28 \times 10^{-9}}$$

$$E = -\frac{2{,}56 \times 10^{-38}}{3{,}11 \times 10^{-20}} = -8{,}23 \times 10^{-19}\text{ J}$$

**Umrechnung in eV:**
$$E = \frac{-8{,}23 \times 10^{-19}}{1{,}6 \times 10^{-19}} = -5{,}14\text{ eV}$$

---

## Lösung: Ionenbindung quantitativ (Forts.)

**b) Vergleich mit Messwert (3,30 eV):**

**Abweichung:** Berechnet -5,14 eV vs. gemessen -3,30 eV

**Gründe für Abweichung:**
1. **Abstoßung nicht berücksichtigt:** Pauli-Abstoßung bei r₀ reduziert Bindungsenergie
2. **Nur nächste Nachbarn:** Berechnung nur für 1 Ionenpaar
3. **Born-Haber-Kreisprozess:** Ionisierungsenergie und Elektronenaffinität gehen ein
4. **Kristallgeometrie:** Im Kristall zusätzliche Wechselwirkungen

**Fazit:** -5,14 eV ist attraktiver Anteil, real wird durch Abstoßung auf -3,30 eV reduziert

---

## Lösung: Ionenbindung quantitativ (Forts.)

**c) Zusätzlicher Energiegewinn im Kristall:**

NaCl hat **Steinsalz-Struktur:** Jedes Ion hat 6 nächste Nachbarn des Gegenions

**Vereinfachte Rechnung:**
- 1 Ionenpaar: -5,14 eV
- 6 nächste Nachbarn: 6 × (-5,14 eV) = -30,84 eV (zu hoch, weil Doppelzählung!)
- Korrekt pro Ion: 6/2 = 3 Bindungen → ~3 × (-5,14 eV) = -15,4 eV

**Zusätzlich:**
- 12 übernächste Nachbarn (gleiches Ion, abstoßend)
- 8 dritte Nachbarn (Gegenion, anziehend)
- **Madelung-Konstante** für NaCl: α = 1,748

**Korrekte Formel:**
$$E_{Kristall} = -\alpha \frac{e^2}{4\pi\varepsilon_0 r_0} = 1{,}748 \times (-5{,}14) = -8{,}98\text{ eV}$$

Mit Abstoßung: ≈ -3,30 eV (gemessen)

---

## Lösung: Ionenbindung quantitativ (Forts.)

**d) MgO-Berechnung:**

**Gegeben:** r₀ ≈ 0,21 nm, Ladungen: +2e und -2e

$$E_{Coulomb} = \frac{(+2e)(-2e)}{4\pi\varepsilon_0 r_0} = 4 \times \frac{e^2}{4\pi\varepsilon_0 r_0}$$

$$E = -4 \times \frac{(1{,}6 \times 10^{-19})^2}{4\pi \times 8{,}854 \times 10^{-12} \times 0{,}21 \times 10^{-9}}$$

$$E = -4 \times 6{,}86 \times 10^{-19}\text{ J} = -27{,}4 \times 10^{-19}\text{ J}$$

$$E = \frac{-27{,}4 \times 10^{-19}}{1{,}6 \times 10^{-19}} = -17{,}1\text{ eV}$$

---

**Vergleich:**
- NaCl: -5,14 eV (einfache Ladung, r₀ = 0,28 nm)
- MgO: -17,1 eV (doppelte Ladung, r₀ = 0,21 nm)
- **Faktor:** 3,3-mal stärker! (4× durch Ladung, Faktor durch kleineres r₀)

---

## Lösung: Ashby-Diagramm Analyse

**a) Bereiche im Ashby-Diagramm (Festigkeit vs. Dichte):**

**Metalle:**
- **Lage:** Mittlere bis hohe Dichte (2-20 g/cm³)
- **Festigkeit:** 50-2000 MPa
- **Beispiele:** Al, Ti, Stahl, Cu
- **Charakteristik:** Duktil, gute Festigkeit

---

**Keramiken:**
- **Lage:** Mittlere Dichte (2-4 g/cm³), aber hohe Festigkeit
- **Festigkeit:** 100-5000 MPa (Druckfestigkeit!)
- **Beispiele:** Al₂O₃, SiC, Si₃N₄
- **Charakteristik:** Spröde, hohe Druckfestigkeit

---

## Lösung: Ashby-Diagramm Analyse (Forts.)

**Polymere:**
- **Lage:** Niedrige Dichte (0,9-1,5 g/cm³)
- **Festigkeit:** 10-100 MPa
- **Beispiele:** PE, PP, PMMA
- **Charakteristik:** Leicht, niedrige Festigkeit, duktil

**Verbundwerkstoffe:**
- **Lage:** Variable Dichte (1-3 g/cm³)
- **Festigkeit:** 200-2000 MPa
- **Beispiele:** CFK, GFK
- **Charakteristik:** Kombinieren Eigenschaften, anisotrop

---

## Lösung: Ashby-Diagramm Analyse (Forts.)

**b) Beste Festigkeit-zu-Dichte-Verhältnis:**

**Verbundwerkstoffe** (besonders Faserverbunde):
- **CFK:** σ/ρ ≈ 1000 MPa / 1,6 g/cm³ = 625 MPa·cm³/g
- **GFK:** σ/ρ ≈ 500 MPa / 2,0 g/cm³ = 250 MPa·cm³/g

**Vergleich:**
- **Stahl:** σ/ρ ≈ 400 MPa / 7,8 g/cm³ = 51 MPa·cm³/g
- **Al-Legierung:** σ/ρ ≈ 500 MPa / 2,7 g/cm³ = 185 MPa·cm³/g
- **Titan:** σ/ρ ≈ 900 MPa / 4,5 g/cm³ = 200 MPa·cm³/g

**Faktor:** CFK ist ~12× besser als Stahl, ~3× besser als Al!

---

## Lösung: Ashby-Diagramm Analyse (Forts.)

**c) Flugzeugstruktur - Materialauswahl:**

**Geeignete Materialien:**
1. **Kohlenstofffaserverstärkte Kunststoffe (CFK)**
   - Höchstes σ/ρ-Verhältnis
   - Modern: Boeing 787 (50% CFK)
   
2. **Aluminium-Legierungen** (z.B. 7075-T6, 2024-T3)
   - Bewährt, gutes σ/ρ, duktil
   - Klassisch: Boeing 747

---

3. **Titan-Legierungen** (Ti-6Al-4V)
   - Hochtemperaturbereiche (Triebwerk)
   - Gutes σ/ρ bei hohen Temperaturen

4. **Glasfaserverstärkte Kunststoffe (GFK)**
   - Sekundärstrukturen, Verkleidungen

---

## Lösung: Ashby-Diagramm Analyse (Forts.)

**d) Warum liegen Schäume separat?**

**Charakteristik von Schäumen:**
- **Sehr niedrige Dichte:** 0,01-0,5 g/cm³ (Faktor 10-100 niedriger)
- **Sehr niedrige Festigkeit:** 0,1-10 MPa
- **Hohe Porosität:** 70-99% Luftanteil
- **Zellstruktur:** Offenzellig oder geschlossenzellig

---

**Separater Bereich weil:**
- Beide Achsen (Festigkeit UND Dichte) drastisch niedriger
- Andere Versagensmechanismen (Zellwand-Knicken)
- Anwendungen fokussieren auf **Energieabsorption**, nicht Festigkeit
- Beispiele: Crashpolster, Verpackungen, Dämmung

**Besonderheit:** σ/ρ kann trotzdem gut sein (z.B. Al-Schaum)

---

## Lösung: Bindungsenergie und Zugfestigkeit

**a) Theoretische Zugfestigkeit:**

**Beispielrechnungen:**

1. **Diamant:** E ≈ 1000 GPa
   $$\sigma_{th} = \frac{1000}{10} = 100\text{ GPa}$$

2. **Stahl:** E ≈ 210 GPa
   $$\sigma_{th} = \frac{210}{10} = 21\text{ GPa}$$

3. **Aluminium:** E ≈ 70 GPa
   $$\sigma_{th} = \frac{70}{10} = 7\text{ GPa}$$

---

## Lösung: Bindungsenergie und Zugfestigkeit (Forts.)

**b) Vergleich mit realen Werten:**

| Material | σ_th (GPa) | σ_real (GPa) | Faktor |
|----------|------------|--------------|--------|
| Diamant | 100 | 1-2 | 50-100 |
| Stahl | 21 | 0,5-2 | 10-40 |
| Aluminium | 7 | 0,1-0,5 | 14-70 |

**Beobachtung:** Reale Festigkeit ist 10-100× niedriger als theoretisch!

**Warum?**
Mikrostrukturelle Defekte reduzieren die Festigkeit drastisch

---

## Lösung: Bindungsenergie und Zugfestigkeit (Forts.)

**c) Mikrostrukturelle Defekte:**

**1. Versetzungen (Metalle):**
- Liniendefekte im Kristallgitter
- Ermöglichen plastische Verformung bei niedrigen Spannungen
- σ_real << σ_th

**2. Risse und Mikrorisse:**
- Spannungskonzentration an Rissspitze
- Griffith-Kriterium für Sprödbruch
- Besonders kritisch in Keramiken

**3. Korngrenzen:**
- Grenzflächen zwischen Kristalliten
- Schwächere Bindungen, Diffusionspfade
- Können Rissausgang sein

---

## Lösung: Bindungsenergie und Zugfestigkeit (Forts.)

**4. Poren und Hohlräume:**
- Reduzieren tragenden Querschnitt
- Kerbwirkung
- Besonders in Gusswerkstoffen und Keramiken

**5. Einschlüsse und Fremdstoffe:**
- Oxide, Sulfide in Stahl
- Spannungskonzentrationen
- Rissinitiierung

**6. Oberflächen und Oberflächendefekte:**
- Kerben, Kratzer
- Spannungsüberhöhung
- Rissausgang

**Schlussfolgerung:** Defektfreie Werkstoffe (Whisker, Nanomaterialien) erreichen σ_th!

---


| Eigenschaft | Ionisch | Kovalent | Metallisch | Van-der-Waals |
|-------------|---------|----------|------------|---------------|
| **Bindungsenergie** | Hoch | Sehr hoch | Mittel-Hoch | Sehr niedrig |
| **Schmelztemp.** | Hoch | Sehr hoch | Niedrig-Sehr hoch | Sehr niedrig |
| **E-Modul** | Hoch | Sehr hoch | Mittel | Sehr niedrig |
| **Elektrische Leitf.** | Sehr niedrig | Sehr niedrig | Sehr hoch | Sehr niedrig |
| **Wärmeleitf.** | Niedrig-Mittel | Niedrig-Sehr hoch* | Hoch | Sehr niedrig |
| **Duktilität** | Sehr niedrig | Sehr niedrig | Hoch | Niedrig |
| **Beispiel** | NaCl, MgO | Diamant, Si | Fe, Al, Cu | Ar, Wachs |



---

## Zusätzliche Anmerkungen zur Tabelle

**Bindungsenergie:**
- Van-der-Waals: 0,05-0,5 eV
- Metallisch: 1-9 eV
- Ionisch: 3-10 eV
- Kovalent: 3-8 eV (pro Bindung!)

**Schmelztemperatur:**
- Große Variation in jeder Kategorie
- Metallisch: Hg (-39°C) bis W (3410°C)
- Abhängig von Bindungsenergie UND Koordinationszahl

---

**Wärmeleitfähigkeit:**
- Metalle: Elektronentransport dominant
- Diamant/SiC: Phononentransport, sehr effizient
- Ionisch: Nur Phononen, mittelmäßig
- Van-der-Waals: Sehr ineffizient

