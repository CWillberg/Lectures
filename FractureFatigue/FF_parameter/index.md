---
marp: true
header: 'Fracture & Fatigue - Parameter'
theme: h2
paginate: true
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
</style>

<!-- _class: lead -->
# Fracture & Fatigue — Parameter
Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

<div style="position: absolute; top: 200px; left: 850px;">
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/FF_parameter/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

## Übersicht

1. Zyklische Belastungsparameter
2. Spannungszustand — Tensor, Hauptspannungen, Triaxialität
3. Spannungskonzentration
4. Bruchmechanische Parameter — $K$, $G$, $K_{Ic}$
5. Risswachstumsparameter — Paris, NASGRO
6. Mittelspannungseinfluss

---

<!-- Abschnitt 1 -->
# Zyklische Belastungsparameter

---

## Zyklische Beanspruchung — Definitionen

$$\sigma_m = \frac{\sigma_{max} + \sigma_{min}}{2} \qquad \text{(Mittelspannung)}$$

$$\sigma_a = \frac{\sigma_{max} - \sigma_{min}}{2} \qquad \text{(Spannungsamplitude)}$$

$$\Delta\sigma = \sigma_{max} - \sigma_{min} \qquad \text{(Spannungsschwingbreite)}$$

$$R = \frac{\sigma_{min}}{\sigma_{max}} \qquad \text{(Spannungsverhältnis)}$$

> **Nur zwei Parameter sind unabhängig** — alle anderen folgen daraus.

---

## Zusammenhänge zwischen den Parametern

$$\sigma_{max} = \sigma_m + \sigma_a \qquad \sigma_{min} = \sigma_m - \sigma_a$$

$$\sigma_a = \frac{\Delta\sigma}{2} \qquad \sigma_m = \frac{\sigma_{max}(1+R)}{2}$$

$$R = \frac{\sigma_m - \sigma_a}{\sigma_m + \sigma_a}$$

| $R$ | Belastungsart | Konsequenz |
|---|---|---|
| $-1$ | Wechselbeanspruchung | $\sigma_m = 0$ |
| $0$ | Schwellbeanspruchung (Zug) | $\sigma_{min} = 0$ |
| $+1$ | statische Last | $\sigma_a = 0$, keine Schwingung |
| $< -1$ | Druckmittelspannung | $|\sigma_{min}| > \sigma_{max}$ |

---

## Beispiel — Zyklische Parameter bestimmen

**Gegeben:** $\sigma_{max} = 200\,\text{MPa}$, $\sigma_{min} = -60\,\text{MPa}$

**Gesucht:** $\sigma_m$, $\sigma_a$, $\Delta\sigma$, $R$

$$\sigma_m = \frac{200 + (-60)}{2} = 70\,\text{MPa}$$

$$\sigma_a = \frac{200 - (-60)}{2} = 130\,\text{MPa}$$

$$\Delta\sigma = 200 - (-60) = 260\,\text{MPa}$$

$$R = \frac{-60}{200} = -0{,}3$$

> $R < 0$ → Zug-Druck-Beanspruchung mit positiver Mittelspannung. Wechselbeanspruchung ($R=-1$) wäre $\sigma_m=0$.

---

<!-- Abschnitt 2 -->
# Spannungszustand

---

## Der Spannungstensor

$$\boldsymbol{\sigma} = \begin{pmatrix} \sigma_{xx} & \tau_{xy} & \tau_{xz} \\ \tau_{yx} & \sigma_{yy} & \tau_{yz} \\ \tau_{zx} & \tau_{zy} & \sigma_{zz} \end{pmatrix}$$

- **Normalspannungen** $\sigma_{ii}$: senkrecht zur Fläche
- **Schubspannungen** $\tau_{ij}$: tangential zur Fläche
- Symmetrie: $\tau_{ij} = \tau_{ji}$ → 6 unabhängige Komponenten

**Voigt-Notation:**
$$\boldsymbol{\sigma} = [\sigma_{xx},\, \sigma_{yy},\, \sigma_{zz},\, \tau_{yz},\, \tau_{xz},\, \tau_{xy}]^T$$

> In Ermüdung und Bruch entscheidet der **vollständige Spannungszustand** über Rissinitiierung und -ausbreitung.

---

## Hauptspannungen

Hauptspannungen = Normalspannungen auf Flächen ohne Schubspannung.

Eigenwertproblem:
$$\det(\boldsymbol{\sigma} - \sigma_i \mathbf{I}) = 0 \quad \Rightarrow \quad \sigma_1 \geq \sigma_2 \geq \sigma_3$$

**Ebener Spannungszustand (2D):**

$$\sigma_{1,2} = \frac{\sigma_{xx}+\sigma_{yy}}{2} \pm \sqrt{\left(\frac{\sigma_{xx}-\sigma_{yy}}{2}\right)^2 + \tau_{xy}^2}$$

**Maximale Schubspannung:**
$$\tau_{max} = \frac{\sigma_1 - \sigma_3}{2}$$

---

## Hauptspannungen — Bedeutung für Ermüdung

| Größe | Relevanz |
|---|---|
| $\sigma_1$ (max. Hauptspannung) | Riss wächst **senkrecht** dazu (Mode I, Stufe II) |
| $\tau_{max}$ (max. Schubspannung) | Rissinitiierung in PSBs (Stufe I, 45°-Ebene) |
| Hauptspannungsrichtungen | Bei nichtproportionaler Last zeitlich veränderlich → kritische Ebene nötig |

---

**Mohrscher Spannungskreis** — grafische Transformation:

$$\sigma_n = \frac{\sigma_1+\sigma_3}{2} + \frac{\sigma_1-\sigma_3}{2}\cos 2\theta \qquad \tau = \frac{\sigma_1-\sigma_3}{2}\sin 2\theta$$

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/c/c7/Mohr_Circle.svg)

---


## Vergleichsspannung — von Mises und Tresca

**von Mises** (Gestaltänderungsenergie):
$$\sigma_{eq} = \sqrt{\frac{1}{2}\left[(\sigma_1-\sigma_2)^2 + (\sigma_2-\sigma_3)^2 + (\sigma_3-\sigma_1)^2\right]}$$

**Tresca** (maximale Schubspannung):
$$\sigma_{eq,T} = \sigma_1 - \sigma_3 = 2\tau_{max}$$

| Eigenschaft | von Mises | Tresca |
|---|---|---|
| Basis | Gestaltänderungsenergie | Max. Schubspannung |
| Konservativität | weniger konservativ | konservativer |
| Abweichung (Experiment) | $< 5\%$ | bis 15% |
| Anwendung Ermüdung | Rissinitiierung (bulk) | Schubdominiert (PSBs) |

---


## Spannungstriaxialität

$$h = \frac{(\sigma_1+\sigma_2+\sigma_3)/3}{\sigma_{eq}}$$

mit der von-Mises-Vergleichsspannung:
$$\sigma_{eq} = \frac{1}{\sqrt{2}}\sqrt{(\sigma_1-\sigma_2)^2+(\sigma_2-\sigma_3)^2+(\sigma_3-\sigma_1)^2}$$

| Spannungszustand | $h$ | Wirkung |
|---|---|---|
| Einachsige Zugspannung | $1/3$ | Referenzzustand |
| Ebener Dehnungszustand (Rissspitze) | $> 1$ | Unterdrückt Plastizität → sprödes Verhalten |
| Reine Schubspannung | $0$ | Kein hydrostatischer Anteil |

> Hohe Triaxialität an Rissspitzen → Ebenheitsbedingung → niedrigerer $K_{Ic}$ → gefährlicher.

---

## Mehraxiale Ermüdung — Äquivalente Spannungsamplitude

S-N-Kurven basieren auf **einachsiger** Beanspruchung. Reale Bauteile: **mehraxial**.

**Ansatz 1 — von-Mises-Amplitude** (proportionale Last):
$$\sigma_{a,eq} = \sqrt{\frac{1}{2}\left[(\sigma_{a,1}-\sigma_{a,2})^2 + (\sigma_{a,2}-\sigma_{a,3})^2 + (\sigma_{a,3}-\sigma_{a,1})^2\right]}$$

**Ansatz 2 — Sines-Kriterium:**
$$\sigma_{a,eq} + k \cdot (\sigma_{m,1}+\sigma_{m,2}+\sigma_{m,3}) \leq \sigma_D$$

**Ansatz 3 — Kritische-Ebene-Methode** (nichtproportional):
- Sucht die Ebene mit maximaler Ermüdungsschädigung
- Berücksichtigt Normalspannung $\sigma_n$ und Schubspannung $\tau$ auf dieser Ebene
- Erforderlich bei rotierenden Hauptspannungsrichtungen

---

<!-- Abschnitt 3 -->
# Spannungskonzentration

---

## Kerbwirkung — Grundlagen

Reale Bauteile enthalten **Kerben, Bohrungen, Nuten, Radien** → lokale Spannungserhöhung.

**Formzahl** $K_t$ (elastisch, theoretisch):
$$K_t = \frac{\sigma_{max}}{\sigma_{nom}}$$

$\sigma_{nom}$: Nennspannung im Nettoquerschnitt.

**Elliptische Kerbe (Inglis-Lösung):**
$$K_t = 1 + 2\sqrt{\frac{a}{\rho}} \approx 2\sqrt{\frac{a}{\rho}} \quad \text{für } a \gg \rho$$

$a$ = halbe Kerbtiefe, $\rho$ = Kerbradius.

> Kreisbohrung in unendlicher Platte: $K_t = 3$ — unabhängig von der Bohrungsgröße!

---

## Beispiel — Formzahl Kreisbohrung

**Gegeben:** Zugstab, $\sigma_{nom} = 100\,\text{MPa}$, Kreisbohrung ($K_t = 3$)

$$\sigma_{max} = K_t \cdot \sigma_{nom} = 3 \cdot 100 = 300\,\text{MPa}$$

**Elliptische Kerbe:** $a = 5\,\text{mm}$, $\rho = 0{,}2\,\text{mm}$

$$K_t = 1 + 2\sqrt{\frac{5}{0{,}2}} = 1 + 2\sqrt{25} = 11$$

$$\sigma_{max} = 11 \cdot 100 = 1100\,\text{MPa}$$

> Ein kleiner Kerbradius erhöht $K_t$ dramatisch — kritisch für rissähnliche Kerben ($\rho \to 0$).

---

## Kerbwirkungszahl $K_f$

**$K_f \leq K_t$** — Werkstoffe sind nicht voll kerbempfindlich.

$$K_f = 1 + q(K_t - 1) \qquad 0 \leq q \leq 1$$

$q$ = Kerbempfindlichkeitszahl (werkstoff- und größenabhängig):
- $q \to 0$: kerbunempfindlich (z.B. Grauguss)
- $q \to 1$: vollkerbempfindlich (hochfeste Stähle)

**Verwendung:**
$$\sigma_{a,zul} = \frac{\sigma_D}{K_f}$$

---

<!-- Abschnitt 4 -->
# Bruchmechanische Parameter

---

## Rissöffnungsmoden

![bg right fit](https://wiki.polymerservice-merseburg.de/images/thumb/d/df/Rissoeffnungsmoden.jpg/600px-Rissoeffnungsmoden.jpg)

**Mode I — Öffnungsmode**
- Last senkrecht zur Rissebene
- Häufigster Modus in der Ermüdung
- Kennwert: $K_I$

**Mode II — Gleitmode (eben)**
- Last parallel zum Riss, senkrecht zur Rissfront
- Kennwert: $K_{II}$

---

**Mode III — Torsionsmode**
- Last parallel zum Riss und zur Rissfront
- Kennwert: $K_{III}$

> Ermüdungsrisse orientieren sich im Wachstum zum **reinen Mode I** um (Stufe II).

---

## Spannungsintensitätsfaktor $K$

$K$ beschreibt die Amplitude der Spannungssingularität an der Rissspitze:

$$\sigma_{ij} = \frac{K}{\sqrt{2\pi r}} f_{ij}(\theta) + \text{höhere Terme}$$

**Mode I:**
$$K_I = \sigma \cdot Y(a/W) \cdot \sqrt{\pi a}$$

| Größe | Bedeutung |
|---|---|
| $\sigma$ | aufgebrachte Nennspannung |
| $a$ | Risslänge (bzw. halbe Länge bei Innenriss) |
| $Y(a/W)$ | Geometriekorrekturwert |
| $W$ | charakteristische Abmessung (Breite) |

**Einheit:** $\text{MPa}\sqrt{\text{m}}$

---

## Geometriekorrekturwert $Y$

$Y$ berücksichtigt endliche Geometrie, freie Oberflächen und Rissform.

| Konfiguration | $Y$ |
|---|---|
| Mittenriss, unendliche Platte | $1{,}0$ |
| Kantenriss, halbunendliche Platte | $1{,}12$ |
| Mittenriss, endliche Breite $W$ | $\sqrt{\sec(\pi a/W)}$ |
| Eingebetteter Ellipsenriss | $\approx 1/\Phi$ |
| Oberflächenriss (Halbellipse) | $\approx 1{,}12/\Phi$ |

> **$Y$ ist nicht konstant** — wächst mit $a/W$ → Riss beschleunigt sich auch bei konstantem $\Delta\sigma$.

Für komplexe Geometrien: $Y$ per **FEM** bestimmen.

---

## Beispiel — $K_I$ und kritische Risslänge

**Gegeben:** Strukturstahl, $K_{Ic} = 50\,\text{MPa}\sqrt{\text{m}}$, Kantenriss ($Y = 1{,}12$), $\sigma = 200\,\text{MPa}$

**Kritische Risslänge:**
$$a_c = \frac{1}{\pi}\left(\frac{K_{Ic}}{\sigma \cdot Y}\right)^2 = \frac{1}{\pi}\left(\frac{50}{200 \cdot 1{,}12}\right)^2$$

$$a_c = \frac{1}{\pi}\left(0{,}223\right)^2 = \frac{0{,}0497}{\pi} \approx 15{,}8\,\text{mm}$$

**Prüfung:** Vorhandener Riss $a = 5\,\text{mm}$:
$$K_I = 200 \cdot 1{,}12 \cdot \sqrt{\pi \cdot 0{,}005} = 224 \cdot 0{,}1253 = 28{,}1\,\text{MPa}\sqrt{\text{m}} < K_{Ic}$$

→ **Kein Versagen**, Sicherheitsfaktor $K_{Ic}/K_I \approx 1{,}8$.

---

## Gemischte Beanspruchung (Mixed Mode)

**Effektiver Spannungsintensitätsfaktor:**

$$K_{eff} = \sqrt{K_I^2 + K_{II}^2 + \frac{K_{III}^2}{1-\nu}}$$

**Versagenskriterium (mixed mode):**
$$K_{eff} \geq K_{Ic}$$

> In der Ermüdung orientieren sich Risse zum reinen Mode I um — der gemischte Zustand ist instabil gegenüber Wachstum unter $\sigma_1$-Dominanz.

---

## Energiefreisetzungsrate $G$ — Griffith-Kriterium

**Griffith (1921):** Bruch tritt auf, wenn die freigesetzte Energie die Energie zur Erzeugung neuer Oberflächen übersteigt:

$$G = -\frac{d\Pi}{da} \geq G_c = 2\gamma_s$$

$\gamma_s$ = spezifische Oberflächenenergie, $\Pi$ = potenzielle Gesamtenergie.

**Physikalische Dimension:** $G$ in $\text{J/m}^2 = \text{N/m}$

**Mittenriss ($2a$) in unendlicher Platte:**
$$G = \frac{\sigma^2 \pi a}{E'} \quad \text{mit } E' = \begin{cases} E & \text{(ebener Spannungszustand)} \\ E/(1-\nu^2) & \text{(ebener Dehnungszustand)} \end{cases}$$

---

## Irwin-Relation: $G$ und $K$

$$G_I = \frac{K_I^2}{E'} \qquad G_{II} = \frac{K_{II}^2}{E'} \qquad G_{III} = \frac{K_{III}^2}{2\mu}$$

**Mixed mode gesamt:**
$$G = \frac{K_I^2 + K_{II}^2}{E'} + \frac{K_{III}^2}{2\mu}$$

**Bruchkriterium:**
$$G \geq G_c \quad \Leftrightarrow \quad K_I \geq K_{Ic}$$

---

**Belastungsarten im Vergleich:**

| Randbedingung | $G$ |
|---|---|
| Feste Einspannung (weggesteuert) | Formänderungsenergie **nimmt ab** |
| Freie Last (kraftgesteuert) | Formänderungsenergie **nimmt zu**, äußere Arbeit wächst schneller |

> $G$ ist eine Zustandsgröße — beide Randbedingungen liefern dasselbe $G$.

---

## $G$ unter zyklischer Belastung

**Zyklische Energiefreisetzungsrate:**
$$\Delta G = G_{max} - G_{min} = \frac{K_{max}^2 - K_{min}^2}{E'}$$

Für $R \geq 0$:
$$\Delta G = \frac{(\Delta K)^2 (1+R)}{E'(1-R)}$$

---

**Vorteile von $\Delta G$ gegenüber $\Delta K$:**
- Erfasst gemischte Beanspruchung (mixed mode) direkt
- Thermodynamisch konsistente Triebkraft
- Sinnvoll bei vergleichbaren $K_I$- und $K_{II}$-Anteilen

**Paris-Gesetz auf $\Delta G$-Basis:**
$$\frac{da}{dN} = C_G \cdot (\Delta G)^{m/2}$$

---
<!-- _class: cols-2 -->

<div class="ldiv">

## Bruchzähigkeit $K_{Ic}$

$K_{Ic}$ = kritischer Spannungsintensitätsfaktor unter **ebenen Dehnungszustand**

**Gültigkeitsbedingung** (ebener Dehnungszustand):
$$B,\, a \geq 2{,}5\left(\frac{K_{Ic}}{R_{p0.2}}\right)^2$$

</div>

<div class="rdiv">

**Typische Werte:**

| Werkstoff | $K_{Ic}$ [MPa$\sqrt{\text{m}}$] |
|---|---|
| Hochfester Stahl | 50–100 |
| Baustahl | 100–200 |
| Aluminiumlegierung | 20–45 |
| Titanlegierung | 40–80 |
| Keramik | 1–5 |
| CFK (Laminat) | 20–60 |
</div>


---



<!-- _class: lead -->
## Vielen Dank

**Fragen?**

Prof. Dr.-Ing. Christian Willberg
christian.willberg@h2.de
Hochschule Magdeburg-Stendal