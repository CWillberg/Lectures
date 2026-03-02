---
marp: true

theme: h2
header: 'Bindungen'
footer: ''

title:  Werkstofftechnik II - Seminar Bindungen
author: Christian Willberg

style: |
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
  .title-slide {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    height: 100%;
  }
  .title-slide h1 {
    font-size: 42px;
    border: none;
    color: #1a5276;
  }
  .title-slide .subtitle {
    font-size: 22px;
    color: #5d6d7e;
    margin-top: 8px;
  }
  .title-slide .meta {
    font-size: 17px;
    color: #95a5a6;
    margin-top: 28px;
  }
  .step {
    margin: 6px 0;
    padding-left: 6px;
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
</style>


# Seminar Werkstofftechnik II – Bindungen
Prof. Dr.-Ing. Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](./assets/orbitale.png)

Kontakt: christian.willberg@h2.de

<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;">
  <a href="https://doi.org/10.1007/s42102-021-00079-6" style="color: blue;">Bildreferenz</a>
</div>

---

<!--paginate: true-->

# Übersicht der Gleichungen

<div class="eq">

**Coulomb-Kraft:**
$$F_{an} = \frac{q_1 q_2}{4\pi\varepsilon_0 r^2}$$

</div>

<div class="eq">

**Coulomb-Energie:**
$$E_{Coulomb} = \frac{q_1 q_2}{4\pi\varepsilon_0 r}$$

</div>

<div class="eq">

**Coulomb-Energie bezogen auf Ladungen:**
$$E = \frac{(+e)(-e)}{4\pi\varepsilon_0 r}$$

</div>

---

## Bindungsenergie und Schmelztemperatur

<div class="aufgabe">

**Aufgabe 1:** Analysieren Sie die Tabelle der Bindungsenergien:

**a)** Berechnen Sie das Verhältnis von Bindungsenergie zu Schmelztemperatur für NaCl, MgO (ionisch), Si, Diamant (kovalent) und Al, Fe, W (metallisch).

**b)** Welcher Zusammenhang besteht zwischen Bindungsenergie und Schmelztemperatur?

**c)** Warum ist dieser Zusammenhang nicht linear? Diskutieren Sie weitere Einflussfaktoren.

**d)** Ordnen Sie folgende Materialien nach erwarteter Schmelztemperatur: TiO₂, Cu, Graphit, LiF

</div>

---

## Koordinationszahl und Festigkeit

<div class="aufgabe">

**Aufgabe 2:**

**a)** Berechnen Sie die „mittlere Bindungsenergie pro Nachbar" für Diamant (4 Nachbarn, 7,40 eV gesamt) und Aluminium (12 Nachbarn, 3,40 eV gesamt).

**b)** Welches Material hat die stärkere Einzelbindung?

**c)** Erklären Sie, warum Wolfram (W) trotz metallischer Bindung eine so hohe Schmelztemperatur hat.

**d)** Skizzieren Sie qualitativ die Lennard-Jones-Potentiale für Al und W. Was unterscheidet sie?

</div>

---

## E-Modul aus Bindungspotential

## Gleichung & Bedeutung

<div class="eq">

$$U(r) = 4\varepsilon \left[\left(\frac{\sigma}{r}\right)^{12} - \left(\frac{\sigma}{r}\right)^6\right]$$

</div>

<div class="aufgabe">

**Aufgabe 3:**

**a)** Leiten Sie die Kraft $F(r) = -\frac{dU}{dr}$ her.

**b)** Bestimmen Sie den Gleichgewichtsabstand $r_0$ durch $F(r_0) = 0$.

**c)** Die Federkonstante ist $k = \left.\frac{d^2U}{dr^2}\right|_{r_0}$. Zeigen Sie qualitativ: Tieferes Potential → größeres k → größerer E-Modul.

**d)** Ordnen Sie nach erwartetem E-Modul: Ar, Al, Si, Diamant

</div>

---

## Ionenbindung quantitativ

<div class="aufgabe">

**Aufgabe 4:** Berechnen Sie für NaCl die Coulomb-Energie zweier isolierter Ionen.

**Gegeben:** $r_0 = 0{,}28\,\text{nm}$, $e = 1{,}6 \times 10^{-19}\,\text{C}$, $\varepsilon_0 = 8{,}854 \times 10^{-12}\,\text{F/m}$

**a)** Berechnen Sie $E_{Coulomb}$ in Joule und eV.

**b)** Vergleichen Sie mit der gemessenen Bindungsenergie (3,30 eV). Warum weichen die Werte ab?

**c)** Im Kristall hat jedes Na⁺-Ion 6 Cl⁻-Nachbarn. Schätzen Sie den zusätzlichen Energiegewinn.

**d)** Wiederholen Sie die Rechnung für MgO ($r_0 \approx 0{,}21\,\text{nm}$, doppelte Ladungen).

</div>

---

## Ashby-Diagramm Analyse

<div class="aufgabe">

**Aufgabe 5:**

**a)** Identifizieren Sie im Ashby-Diagramm Bereiche für Metalle, Keramiken, Polymere und Verbundwerkstoffe.

**b)** Welche Materialgruppe hat das beste Festigkeit-zu-Dichte-Verhältnis?

**c)** Für eine Flugzeugstruktur (hohe Festigkeit, geringes Gewicht) – welche Materialien sind geeignet?

**d)** Warum liegen Schäume in einem separaten Bereich?

</div>

---

## Bindungsenergie und Zugfestigkeit

<div class="aufgabe">

**Aufgabe 6:**

**a)** Die theoretische Zugfestigkeit lässt sich abschätzen durch:

</div>

<div class="eq">

$$\sigma_{th} \approx \frac{E}{10}$$

</div>

<div class="aufgabe">

Berechnen Sie $\sigma_{th}$ für 3 beliebige Materialien.

**b)** Gleichen Sie die Werte mit realen Zugfestigkeiten ab.

**c)** Welche mikrostrukturellen Defekte reduzieren die Festigkeit?

</div>

---

## Vergleich Bindungstypen – Aufgabe

Füllen Sie die Tabelle aus. Verwenden Sie: sehr hoch / hoch / mittel / niedrig / sehr niedrig.

| Eigenschaft | Ionisch | Kovalent | Metallisch | Van-der-Waals |
|-------------|---------|----------|------------|---------------|
| Bindungsenergie | | | | |
| Schmelztemp. | | | | |
| E-Modul | | | | |
| Elektrische Leitf. | | | | |
| Wärmeleitf. | | | | |
| Duktilität | | | | |
| Beispiel | | | | |

---

# Lösung – Bindungsenergie und Schmelztemperatur

<div class="loesung">

**b) Zusammenhang:** Höhere Bindungsenergie → höhere Schmelztemperatur. Materialien mit starken Bindungen benötigen mehr thermische Energie zum Aufbrechen. Tendenz erkennbar, aber kein streng linearer Zusammenhang.

**c) Weitere Einflussfaktoren:** Koordinationszahl, Kristallstruktur, Atommasse, Gittergeometrie, Schmelzmechanismus (Defektbildung, Gitteraufweichung).

</div>

<div class="loesung">

**d) Ordnung nach Schmelztemperatur:**
1. **Graphit** (~3550°C) – kovalente C-C-Bindungen, sehr stark
2. **TiO₂** (~1840°C) – ionisch/kovalent gemischt
3. **Cu** (~1085°C) – metallisch, mittlere Bindungsenergie
4. **LiF** (~845°C) – ionisch, moderate Gesamtenergie

</div>

---

# Lösung – Koordinationszahl und Festigkeit

<div class="loesung">

**a) Mittlere Bindungsenergie pro Nachbar:**
- **Diamant:** $7{,}40\,\text{eV} / 4 = \mathbf{1{,}85\,\text{eV}}$ pro Bindung
- **Aluminium:** $3{,}40\,\text{eV} / 12 = \mathbf{0{,}28\,\text{eV}}$ pro Bindung

**b)** Diamant hat ca. 6,6-mal stärkere Einzelbindungen.

**c) Wolfram:** 6 Valenzelektronen, KRZ-Struktur (8+6 Nachbarn), kurze Bindungsabstände durch starke d-Orbital-Überlappung, Bindungsenergie 8,80 eV/Atom → Schmelzpunkt 3410°C.

**d) Lennard-Jones:** W hat tieferes Minimum, steilere Krümmung, kürzeren $r_0$ → höherer E-Modul (~400 GPa vs. ~70 GPa bei Al).

</div>

---

# Lösung – E-Modul aus Bindungspotential

## Kraft und Gleichgewichtsabstand

<div class="loesung">

**a) Kraft:**
$$F(r) = 24\varepsilon\left[2\left(\frac{\sigma}{r}\right)^{13} - \left(\frac{\sigma}{r}\right)^7\right]\frac{1}{r}$$

**b) Gleichgewichtsabstand** aus $F(r_0) = 0$:
$$r_0 = 2^{1/6}\,\sigma \approx 1{,}12\,\sigma$$

**c)** Tieferes Potential ε → steilere Krümmung → größere Federkonstante $k = \frac{d^2U}{dr^2}\big|_{r_0}$ → größerer E-Modul.

**d) Reihenfolge E-Modul:**
$$\text{Ar} < \text{Al} < \text{Si} < \text{Diamant}$$
(≈ 0 GPa · · · 70 GPa · · · 165 GPa · · · 1000 GPa)

</div>

---

# Lösung – Ionenbindung quantitativ

<div class="loesung">

**a) NaCl:**
$$E = -\frac{(1{,}6\times10^{-19})^2}{4\pi\times8{,}854\times10^{-12}\times0{,}28\times10^{-9}} = -8{,}23\times10^{-19}\,\text{J} = \mathbf{-5{,}14\,\text{eV}}$$

**b)** Gemessen: −3,30 eV. Abweichung durch Pauli-Abstoßung, Born-Haber-Kreisprozess und weitere Wechselwirkungen im Kristall.

**c) Im Kristall** (Madelung-Konstante α = 1,748):
$$E_{Kristall} = -1{,}748 \times 5{,}14 \approx -8{,}98\,\text{eV} \xrightarrow{\text{mit Abstoßung}} -3{,}30\,\text{eV}$$

**d) MgO** ($r_0 = 0{,}21\,\text{nm}$, Ladung ±2e):
$$E = -17{,}1\,\text{eV} \quad (\approx 3{,}3\times\text{ stärker als NaCl})$$

</div>

---

# Lösung – Ashby-Diagramm

<div class="zwei-spalten">

<div>

### Materialgruppen
- **Metalle:** ρ = 2–20 g/cm³, σ = 50–2000 MPa, duktil
- **Keramiken:** ρ = 2–4 g/cm³, hohe Druckfestigkeit, spröde
- **Polymere:** ρ = 0,9–1,5 g/cm³, σ = 10–100 MPa
- **Verbundwerkstoffe:** ρ = 1–3 g/cm³, σ = 200–2000 MPa

</div>

<div>

### Bestes σ/ρ-Verhältnis
| Material | σ/ρ (MPa·cm³/g) |
|----------|----------------|
| CFK | ~625 |
| Al-Leg. | ~185 |
| Titan | ~200 |
| Stahl | ~51 |

→ CFK ca. **12× besser** als Stahl!

</div>

</div>

<div class="hinweis">

**Schäume** liegen separat: sehr niedrige Dichte (0,01–0,5 g/cm³) UND sehr niedrige Festigkeit (0,1–10 MPa). Anderer Versagensmechanismus (Zellwand-Knicken), Einsatz für Energieabsorption.

</div>

---

# Lösung – Bindungsenergie und Zugfestigkeit

<div class="loesung">

**a) Theoretische Zugfestigkeit $\sigma_{th} = E/10$:**

| Material | E (GPa) | $\sigma_{th}$ (GPa) |
|----------|---------|---------------------|
| Diamant | 1000 | 100 |
| Stahl | 210 | 21 |
| Aluminium | 70 | 7 |

**b) Reale Werte:**

| Material | $\sigma_{th}$ (GPa) | $\sigma_{real}$ (GPa) | Faktor |
|----------|---------------------|-----------------------|--------|
| Diamant | 100 | 1–2 | 50–100 |
| Stahl | 21 | 0,5–2 | 10–40 |
| Al | 7 | 0,1–0,5 | 14–70 |

</div>

---

# Lösung – Mikrostrukturelle Defekte

<div class="loesung">

Reale Festigkeit ist **10–100× niedriger** als theoretisch, wegen:

- **Versetzungen** – ermöglichen plastische Verformung (Teppichtrick) bei niedrigen Spannungen
- **Risse und Mikrorisse** – Spannungskonzentration an Rissspitze (Griffith-Kriterium)
- **Korngrenzen** – Grenzflächen mit schwächeren Bindungen, Rissausgang möglich
- **Poren und Hohlräume** – reduzieren tragenden Querschnitt, Kerbwirkung
- **Einschlüsse** – Oxide, Sulfide → Spannungskonzentration
- **Oberflächen und Kerben** – Rissinitiierung durch Spannungsüberhöhung

</div>

<div class="hinweis">

**Ausnahme:** Defektfreie Materialien (Whisker, Nanomaterialien) erreichen $\sigma_{th}$!

</div>

---

# Lösung – Vergleich Bindungstypen

| Eigenschaft | Ionisch | Kovalent | Metallisch | Van-der-Waals |
|-------------|---------|----------|------------|---------------|
| **Bindungsenergie** | Hoch | Sehr hoch | Mittel–Hoch | Sehr niedrig |
| **Schmelztemp.** | Hoch | Sehr hoch | Niedrig–Sehr hoch | Sehr niedrig |
| **E-Modul** | Hoch | Sehr hoch | Mittel | Sehr niedrig |
| **Elektrische Leitf.** | Sehr niedrig | Sehr niedrig | Sehr hoch | Sehr niedrig |
| **Wärmeleitf.** | Niedrig–Mittel | Niedrig–Sehr hoch* | Hoch | Sehr niedrig |
| **Duktilität** | Sehr niedrig | Sehr niedrig | Hoch | Niedrig |
| **Beispiel** | NaCl, MgO | Diamant, Si | Fe, Al, Cu | Ar, Wachs |