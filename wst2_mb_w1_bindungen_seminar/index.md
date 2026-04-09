---
marp: true
theme: h2
header: 'Seminar Bindungen'
footer: ''
title: Werkstofftechnik II - Seminar Bindungen
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
footer { font-size: 14px; color: #888; text-align: right; }
img[alt="ORCID"] {
    height: 15px !important; width: auto !important;
    vertical-align: top !important; display: inline !important; margin: 0 !important;
}
</style>

# Seminar Werkstofftechnik II – Bindungen
Prof. Dr.-Ing. Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

Kontakt: christian.willberg@h2.de

---
<!--paginate: true-->

## Überblick: Gleichungen im Seminar

| Thema | Gleichung |
|---|---|
| Coulomb-Kraft | $F = \frac{q_1 q_2}{4\pi\varepsilon_0 r^2}$ |
| Coulomb-Energie | $E = \frac{q_1 q_2}{4\pi\varepsilon_0 r}$ |
| Lennard-Jones-Potenzial | $U(r) = 4\varepsilon\left[\left(\frac{\sigma}{r}\right)^{12} - \left(\frac{\sigma}{r}\right)^6\right]$ |
| Federmodell (Bindungskraft) | $F_i = k(r_0 - r)$ |
| Steifigkeit | $S = k$ |

<div class="hinweis">

Konstanten: $e = 1{,}602 \times 10^{-19}$ C, $\varepsilon_0 = 8{,}854 \times 10^{-12}$ C²/(N·m²), $\frac{1}{4\pi\varepsilon_0} = 8{,}99 \times 10^9$ N·m²/C²

</div>

---

# Schritt 1 – Coulomb-Kraft zwischen Ionen

<div class="eq">

$$F = \frac{q_1 q_2}{4\pi\varepsilon_0 r^2}$$

</div>

<div class="aufgabe">

**Aufgabe 1:** Berechnen Sie die Coulomb-Anziehungskraft zwischen Na⁺ und Cl⁻.

**a)** Welche Ladungen tragen Na⁺ und Cl⁻? Geben Sie $q_1$ und $q_2$ in Coulomb an.

**b)** Der Gleichgewichtsabstand im NaCl-Kristall beträgt $r_0 = 0{,}282$ nm. Berechnen Sie die Coulomb-Kraft $F$ bei diesem Abstand.

**c)** Wie ändert sich die Kraft, wenn der Abstand auf $r = 0{,}400$ nm zunimmt? Berechnen Sie den Quotienten $F(0{,}400) / F(0{,}282)$.

**d)** Die Abstoßungskraft folgt $F_{ab} \propto r^{-n}$ mit $n = 9$. Warum ist der Abfall der Abstoßung steiler als der der Anziehung?

</div>

---

<div class="loesung">

**a)** Na⁺ trägt $q_1 = +e = +1{,}602 \times 10^{-19}$ C, Cl⁻ trägt $q_2 = -e = -1{,}602 \times 10^{-19}$ C.

**b)** Anziehungskraft bei $r_0 = 0{,}282 \times 10^{-9}$ m:

$$F = \frac{(1{,}602 \times 10^{-19})^2}{4\pi\varepsilon_0 \cdot (0{,}282 \times 10^{-9})^2}$$
$$= 8{,}99 \times 10^9 \cdot \frac{(1{,}602)^2 \times 10^{-38}}{(0{,}282)^2 \times 10^{-18}}$$
$$= 8{,}99 \times 10^9 \cdot \frac{2{,}566 \times 10^{-38}}{7{,}952 \times 10^{-20}} \approx \mathbf{2{,}90 \times 10^{-9}\,\text{N} = 2{,}90\,\text{nN}}$$

**c)** Da $F \propto r^{-2}$: $\quad \frac{F(0{,}400)}{F(0{,}282)} = \left(\frac{0{,}282}{0{,}400}\right)^2 = (0{,}705)^2 \approx \mathbf{0{,}497}$ → Kraft halbiert sich!

**d)** Für $n=9$: $F_{ab} \propto r^{-9}$ fällt viel schneller als $F_{an} \propto r^{-2}$. Schon bei kleiner Abstandszunahme verschwindet die Abstoßung praktisch, während die Anziehung noch spürbar bleibt.

</div>

---

# Schritt 2 – Coulomb-Energie und Ionisierungsbilanz

<div class="eq">

$$E_{Coulomb} = \frac{q_1 q_2}{4\pi\varepsilon_0 r}$$

</div>

<div class="aufgabe">

**Aufgabe 2:** Energiebilanz der NaCl-Ionenbindung.

**a)** Berechnen Sie die Coulomb-Energie bei $r = 0{,}282$ nm. Geben Sie das Ergebnis in Joule und in eV an ($1\,\text{eV} = 1{,}602 \times 10^{-19}$ J).

**b)** Ionisierungsenergie Na → Na⁺: $+5{,}1$ eV. Elektronenaffinität Cl + e⁻ → Cl⁻: $-3{,}6$ eV. Berechnen Sie die Gesamtbilanz inklusive der Coulomb-Energie aus a).

**c)** Ist die Bindung stabil? Begründen Sie anhand des Vorzeichens.

**d)** Im Kristall hat jedes Na⁺ genau 6 nächste Cl⁻-Nachbarn im gleichen Abstand. Wie groß wäre der Energiegewinn näherungsweise, wenn man nur diese 6 Wechselwirkungen berücksichtigt?

</div>

---

<div class="loesung">

**a)** Coulomb-Energie (negativ, da Anziehung):

$$E = \frac{-(1{,}602 \times 10^{-19})^2}{4\pi\varepsilon_0 \cdot 0{,}282 \times 10^{-9}} = -8{,}99\times10^9 \cdot \frac{2{,}566\times10^{-38}}{2{,}82\times10^{-10}}$$
$$= -8{,}18 \times 10^{-19}\,\text{J} \approx \mathbf{-5{,}11\,\text{eV}}$$

**b)** Gesamtbilanz:

$$\Delta E = +5{,}1\,\text{eV} + (-3{,}6\,\text{eV}) + (-5{,}11\,\text{eV}) = \mathbf{-3{,}61\,\text{eV}}$$

**c)** $\Delta E < 0$ → Energie wird **freigesetzt** → die Bindung ist **stabil**. Das Ionenpaar liegt energetisch tiefer als die getrennten Atome.

**d)** 6 nächste Nachbarn: $E_{6} \approx 6 \times (-5{,}11\,\text{eV}) = -30{,}7\,\text{eV}$. Im realen Kristall kompensieren weiter entfernte gleichnamige Ionen teilweise, führen aber netto zu ~25 % mehr Bindungsenergie gegenüber dem Ionenpaar (Madelung-Konstante $A = 1{,}748$ für NaCl).

</div>

---

# Schritt 3 – Lennard-Jones-Potenzial

<div class="eq">

$$U(r) = 4\varepsilon \left[\left(\frac{\sigma}{r}\right)^{12} - \left(\frac{\sigma}{r}\right)^6\right]$$

</div>

<div class="aufgabe">

**Aufgabe 3:** Für Argon (Ar) gilt: $\varepsilon = 0{,}010\,\text{eV}$, $\sigma = 0{,}340\,\text{nm}$.

**a)** Berechnen Sie $U(r)$ für $r = 0{,}340$ nm, $r = 0{,}382$ nm und $r = 0{,}500$ nm. Tragen Sie die Vorzeichen in die Tabelle ein.

| $r$ [nm] | $(σ/r)^{12}$ | $(σ/r)^6$ | $U(r)/\varepsilon$ | Vorzeichen |
|---|---|---|---|---|
| 0,340 | | | | |
| 0,382 | | | | |
| 0,500 | | | | |

---
</div>

<div class="aufgabe">
**b)** Bei welchem Abstand $r_0$ liegt das Potenzialminimum? Leiten Sie $r_0$ aus der Bedingung $dU/dr = 0$ her.

**c)** Welchem physikalischen Zustand entspricht $r = \sigma$?

</div>

---

<div class="loesung">

**a)** Berechnung:

| $r$ [nm] | $(σ/r)^{12}$ | $(σ/r)^6$ | $U/\varepsilon = 4[(\cdot)^{12}-(\cdot)^6]$ | Vorzeichen |
|---|---|---|---|---|
| 0,340 | $1{,}000$ | $1{,}000$ | $4[1-1]=0$ | neutral |
| 0,382 | $0{,}177$ | $0{,}420$ | $4[0{,}177-0{,}420]=-0{,}972$ | **negativ (Minimum!)** |
| 0,500 | $0{,}017$ | $0{,}131$ | $4[0{,}017-0{,}131]=-0{,}456$ | negativ |

**b)** Minimum aus $dU/dr = 0$:

$$\frac{dU}{dr} = 4\varepsilon\left[-12\frac{\sigma^{12}}{r^{13}} + 6\frac{\sigma^6}{r^7}\right] = 0 \implies 12\sigma^{12} = 6\sigma^6 r^6$$
$$r_0 = \sigma \cdot 2^{1/6} \approx 1{,}122\,\sigma = 1{,}122 \times 0{,}340\,\text{nm} \approx \mathbf{0{,}382\,\text{nm}} \checkmark$$

**c)** Bei $r = \sigma$: $U = 0$ → Abstoßung und Anziehung halten sich gerade die Waage. Das ist der **Nulldurchgang** – die Atome „berühren" sich effektiv.

</div>

---

# Schritt 4 – Federmodell und E-Modul

<div class="eq">

$$F_i = -\frac{dU}{dr} = k(r_0 - r) \qquad S = k$$

</div>

<div class="aufgabe">

**Aufgabe 4:** Die Bindungskraft als Feder.

**a)** Die Federkonstante $k$ ergibt sich aus der zweiten Ableitung des Potenzials im Minimum: $k = \left.\frac{d^2U}{dr^2}\right|_{r=r_0}$. Bestimmen Sie $k$ für das LJ-Potenzial. Vereinfachter Ausdruck: $k = \frac{72\,\varepsilon}{\sigma^2 \cdot 2^{1/3}}$.

Berechnen Sie $k$ für Argon ($\varepsilon = 1{,}60 \times 10^{-21}$ J, $\sigma = 3{,}40 \times 10^{-10}$ m).

**b)** Der E-Modul lässt sich näherungsweise aus der Steifigkeit $S$ und dem Gleichgewichtsabstand $r_0$ abschätzen: $E \approx k / r_0$. Berechnen Sie $E$ für Argon.

</div>

---

<div class="aufgabe">

**c)** Stahl hat $E \approx 210$ GPa. Um welchen Faktor unterscheiden sich die Steifigkeiten? Was erklärt diesen Unterschied physikalisch?

**d)** Skizzieren Sie qualitativ $F_i(r)$ um $r_0$. Markieren Sie Anziehung, Abstoßung und den Gleichgewichtspunkt.

</div>

---

<div class="loesung">

**a)** Federkonstante für Ar:

$$k = \frac{72 \times 1{,}60 \times 10^{-21}}{(3{,}40 \times 10^{-10})^2 \cdot 2^{1/3}} = \frac{1{,}152 \times 10^{-19}}{1{,}156 \times 10^{-19} \cdot 1{,}260} \approx \mathbf{0{,}791\,\text{N/m}}$$

**b)** E-Modul Abschätzung ($r_0 = 1{,}122 \times 3{,}40 \times 10^{-10} = 3{,}81 \times 10^{-10}$ m):

$$E \approx \frac{k}{r_0} = \frac{0{,}791}{3{,}81 \times 10^{-10}} \approx 2{,}08 \times 10^9\,\text{Pa} \approx \mathbf{2\,\text{GPa}}$$

**c)** Verhältnis: $\frac{E_\text{Stahl}}{E_\text{Ar}} = \frac{210\,\text{GPa}}{2\,\text{GPa}} \approx 105$. Stahl hat metallische Bindungen mit $\varepsilon \approx 4$ eV/Atom (Faktor ~250× größer als Ar) und kleinerem $\sigma$ → viel tieferes, steileres Potenzialminimum → höherer E-Modul.

**d)** Skizze: $F_i = 0$ bei $r = r_0$; für $r < r_0$: $F_i > 0$ (Abstoßung nach außen); für $r > r_0$: $F_i < 0$ (Anziehung nach innen). Annähernd linear in der Nähe von $r_0$.

</div>

---

# Schritt 5 – Vergleich der Bindungstypen

<div class="aufgabe">

**Aufgabe 5:** Ordnen Sie die folgenden Materialien den Bindungstypen zu und erklären Sie die Unterschiede im E-Modul.

**a)** Vervollständigen Sie die Tabelle:

| Material | Bindungstyp | $E$ [GPa] | Begründung |
|---|---|---|---|
| Diamant | ? | ~1000 | |
| Eisen (Fe) | ? | ~210 | |
| Aluminiumoxid (Al₂O₃) | ? | ~380 | |
| Argon (Ar, fest) | ? | ~2 | |
| Polyethylen (PE) | ? | ~1 | |

**b)** Warum hat Diamant den höchsten E-Modul aller Materialien?

**c)** Warum haben Keramiken (Al₂O₃) oft höhere E-Moduli als Metalle, aber sind trotzdem spröde?

</div>

---

<div class="loesung">

**a)**

| Material | Bindungstyp | $E$ [GPa] | Begründung |
|---|---|---|---|
| Diamant | Kovalent | ~1000 | Stärkste C-C-Bindung, kurzer $r_0$, hohes $k$ |
| Eisen (Fe) | Metallisch | ~210 | Delokalisierte e⁻, mittlere Bindungsenergie |
| Al₂O₃ | Ionisch + kovalent | ~380 | Hohe Ladungen ($q=3e/2e$), starke Coulomb-Anziehung |
| Argon (Ar) | Van-der-Waals | ~2 | Sehr schwache LJ-Bindung, flaches Minimum |
| PE | Van-der-Waals (zwischenmol.) | ~1 | Ketten durch schwache Dipolkräfte zusammengehalten |

**b)** Die C-C-Bindung kombiniert kurzen Gleichgewichtsabstand $r_0 \approx 0{,}154$ nm (→ kleiner Nenner in $E \approx k/r_0$) mit extrem hoher Bindungsenergie $\varepsilon = 7{,}4$ eV/Atom (→ großes $k$). Das Ergebnis ist ein außergewöhnlich steiles Potenzialminimum.

**c)** Ionische/kovalente Bindungen sind **stark aber unbeweglich**: Keine freien Elektronen → kein plastischer Mechanismus. Bei mechanischer Überlastung reißen Bindungen direkt durch → Sprödbruch. Metalle können plastisch fließen (Versetzungen), da die metallische Bindung **ungerichtet** ist.

</div>

---

# Schritt 6 – Integrative Aufgabe

<div class="aufgabe">

**Aufgabe 6:** Ein Ingenieur vergleicht zwei Werkstoffe für eine Hochtemperaturanwendung.

**Werkstoff A:** Wolfram (W), metallische Bindung, $E = 411$ GPa, $T_\text{schmelz} = 3410°C$, $\varepsilon_\text{Bindung} = 8{,}8$ eV/Atom

**Werkstoff B:** Magnesiumoxid (MgO), ionische Bindung, $E = 300$ GPa, $T_\text{schmelz} = 2800°C$, $\varepsilon_\text{Bindung} = 5{,}2$ eV/Atom

**a)** Welcher Werkstoff hat die stärkere **Einzelbindung**? Welcher den höheren E-Modul? Wie erklären Sie den scheinbaren Widerspruch?

**b)** Bei MgO: Mg²⁺ und O²⁻. Berechnen Sie die Coulomb-Energie bei $r_0 = 0{,}210$ nm.

**c)** Wie groß muss die Bindungsenergie $\varepsilon$ eines LJ-Potenzials sein, damit $k = \frac{72\varepsilon}{\sigma^2 \cdot 2^{1/3}} = 50$ N/m gilt bei $\sigma = 0{,}200$ nm?

**d)** Nennen Sie je einen technischen Vor- und Nachteil von W gegenüber MgO.

</div>

---

<div class="loesung">

**a)** W hat höhere Bindungsenergie (8,8 vs. 5,2 eV) → stärkere Einzelbindung. Dennoch: $E_W = 411 > E_{MgO} = 300$ GPa. Kein Widerspruch: Der E-Modul hängt auch von $r_0$ und Koordinationszahl ab. Bei W (krz-Gitter) ist $r_0$ klein und die Koordinationszahl 8 → $k/r_0$ kann trotzdem höher sein.

**b)** MgO: $q_1 = +2e$, $q_2 = -2e$:

$$E = \frac{(2 \times 1{,}602\times10^{-19})^2}{4\pi\varepsilon_0 \times 0{,}210\times10^{-9}} \cdot (-1)$$
$$= -8{,}99\times10^9 \cdot \frac{4 \times 2{,}566\times10^{-38}}{2{,}10\times10^{-10}} \approx -4{,}40\times10^{-18}\,\text{J} \approx \mathbf{-27{,}5\,\text{eV}}$$

(Faktor 4 durch doppelte Ladungen → deutlich stärkere Bindung als NaCl mit −5,1 eV)

**c)** Umstellen nach $\varepsilon$:

$$\varepsilon = \frac{k \cdot \sigma^2 \cdot 2^{1/3}}{72} = \frac{50 \times (2\times10^{-10})^2 \times 1{,}260}{72} = \frac{50 \times 4\times10^{-20} \times 1{,}260}{72} \approx \mathbf{3{,}5\times10^{-21}\,\text{J}} \approx 0{,}022\,\text{eV}$$

**d)** W: **Vorteil** – deutlich höherer E-Modul, besser unter mechanischer Last; **Nachteil** – metallisch → elektrisch leitend, nicht für elektrisch isolierende Anwendungen geeignet (z.B. Hochspannungsisolatoren → dort MgO bevorzugt).

</div>

---

## Zusammenfassung – Gleichungen auf einen Blick

| Größe | Gleichung | Wofür? |
|---|---|---|
| Coulomb-Kraft | $F = \frac{q_1 q_2}{4\pi\varepsilon_0 r^2}$ | Anziehungskraft zwischen Ionen |
| Coulomb-Energie | $E = \frac{q_1 q_2}{4\pi\varepsilon_0 r}$ | Energiebilanz der Ionenbindung |
| LJ-Potenzial | $U = 4\varepsilon\left[(\sigma/r)^{12}-(\sigma/r)^6\right]$ | Potentialkurve, Gleichgewichtsabstand |
| LJ-Minimum | $r_0 = 2^{1/6}\sigma$ | Gleichgewichtsabstand aus LJ |
| Federkonstante | $k = d^2U/dr^2\big|_{r_0}$ | Steifigkeit der Bindung |
| E-Modul (Abschätzung) | $E \approx k / r_0$ | Makroskopische Steifigkeit |

<div class="hinweis">

**Merkhilfe:** Bindungsenergie ↑ → tieferes Minimum → steileres Potenzial → größeres $k$ → höherer E-Modul → höhere Schmelztemperatur. Alles hängt zusammen!

</div>