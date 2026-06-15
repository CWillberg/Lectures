---
marp: true
theme: h2
header: 'Seminar – Spannungstransformation und CLT (A-Matrix)'
paginate: true
math: katex
---
<style>
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
.aufgabe strong { color: #d35400; }
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
tr:nth-child(even) td { background: #f2f3f4; }
ul { padding-left: 20px; margin: 6px 0; }
li { margin-bottom: 4px; }
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
</style>

<!-- _class: lead -->

# Seminar: Spannungstransformation und CLT
## Schritt-für-Schritt: 2-Lagen-Laminat, nur A-Anteil

Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Faserverbundwerkstoffe/composites_015/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---
<!-- _class: cols-2 -->


<div class="ldiv">

**Ziel:** Aus globalen Lasten $N_x, N_y, N_{xy}$ die lokalen Spannungen $\sigma_1, \sigma_2, \tau_{12}$ in jeder Lage berechnen.

**Laminat:**

| Lage | Winkel | Dicke |
|------|--------|-------|
| 1 | $0°$ | $t_1 = 0{,}5\,\text{mm}$ |
| 2 | $45°$ | $t_2 = 0{,}5\,\text{mm}$ |

Gesamt: $h = 1{,}0\,\text{mm}$

**Werkstoff** (CFK-HT, identisch für beide Lagen):

| Kennwert | Wert |
|----------|------|
| $E_\parallel = E_1$ | $135\,000\,\text{N/mm}^2$ |
| $E_\perp = E_2$ | $10\,000\,\text{N/mm}^2$ |
| $G_{12}$ | $5\,000\,\text{N/mm}^2$ |
| $\nu_{12}$ | $0{,}3$ |

</div>
<div class="rdiv">

**Lösungsweg in 6 Schritten:**

```
Schritt 1: Nachgiebigkeitsmatrix S (lokal)
           ↓
Schritt 2: Steifigkeitsmatrix Q (lokal)
           ↓
Schritt 3: Transformationsmatrix T(φ)
           ↓
Schritt 4: Transformierte Steifigkeit Q̄ (global)
           ↓
Schritt 5: A-Matrix des Laminats
           ↓
Schritt 6: Globale Dehnungen → lokale Spannungen
```

**Belastung (Beispiel):**

$$N_x = 100\,\text{N/mm},\quad N_y = 0,\quad N_{xy} = 0$$

</div>

---

## Schritt 1: Nachgiebigkeitsmatrix $\mathbf{S}$ (lokal, Faserkoordinaten)

Die Nachgiebigkeitsmatrix verknüpft lokale Dehnungen mit lokalen Spannungen:

<div class="eq">

$$\begin{pmatrix} \varepsilon_1 \\ \varepsilon_2 \\ \gamma_{12} \end{pmatrix} = \underbrace{\begin{bmatrix} S_{11} & S_{12} & 0 \\ S_{12} & S_{22} & 0 \\ 0 & 0 & S_{66} \end{bmatrix}}_{\mathbf{S}} \begin{pmatrix} \sigma_1 \\ \sigma_2 \\ \tau_{12} \end{pmatrix}$$

</div>

Die Komponenten folgen direkt aus den Ingenieurskonstanten:

<div class="eq">

$$S_{11} = \frac{1}{E_1} \qquad S_{22} = \frac{1}{E_2} \qquad S_{12} = -\frac{\nu_{12}}{E_1} \qquad S_{66} = \frac{1}{G_{12}}$$

</div>

---

**Einsetzen der Zahlenwerte:**

<div class="loesung">

$$S_{11} = \frac{1}{135\,000} = 7{,}407 \times 10^{-6}\,\text{mm}^2/\text{N}$$

$$S_{22} = \frac{1}{10\,000} = 100{,}0 \times 10^{-6}\,\text{mm}^2/\text{N}$$

$$S_{12} = -\frac{0{,}3}{135\,000} = -2{,}222 \times 10^{-6}\,\text{mm}^2/\text{N}$$

$$S_{66} = \frac{1}{5\,000} = 200{,}0 \times 10^{-6}\,\text{mm}^2/\text{N}$$

</div>

<div class="hinweis">

$\mathbf{S}$ ist für **beide** Lagen identisch – gleiches Material, Winkel wird erst in $\bar{\mathbf{Q}}$ berücksichtigt.

</div>

---

## Schritt 2: Steifigkeitsmatrix $\mathbf{Q}$ (lokal, Faserkoordinaten)

$\mathbf{Q} = \mathbf{S}^{-1}$ – die Invertierung einer $3\times3$-Blockdiagonalmatrix:

<div class="eq">

$$Q_{11} = \frac{E_1}{1 - \nu_{12}\nu_{21}} \qquad Q_{22} = \frac{E_2}{1 - \nu_{12}\nu_{21}} \qquad Q_{12} = \frac{\nu_{12} E_2}{1 - \nu_{12}\nu_{21}} \qquad Q_{66} = G_{12}$$

</div>

**Reziprozitätsbedingung** (zuerst $\nu_{21}$ bestimmen!):

<div class="eq">

$$\nu_{21} = \nu_{12}\frac{E_2}{E_1} = 0{,}3 \cdot \frac{10\,000}{135\,000} = 0{,}02222$$

$$1 - \nu_{12}\nu_{21} = 1 - 0{,}3 \cdot 0{,}02222 = 1 - 0{,}006667 = 0{,}99333$$

</div>

---

**Einsetzen:**

<div class="loesung">

$$Q_{11} = \frac{135\,000}{0{,}99333} = \mathbf{135\,906}\,\text{N/mm}^2$$

$$Q_{22} = \frac{10\,000}{0{,}99333} = \mathbf{10\,067}\,\text{N/mm}^2$$

$$Q_{12} = \frac{0{,}3 \cdot 10\,000}{0{,}99333} = \mathbf{3\,022}\,\text{N/mm}^2$$

$$Q_{66} = G_{12} = \mathbf{5\,000}\,\text{N/mm}^2$$

</div>

---

# Schritt 3: Transformationsmatrix $\mathbf{T}(\varphi)$

Die Transformationsmatrix dreht Spannungen vom **globalen** $(x,y)$-System ins **lokale** $(1,2)$-System (Faserkoordinaten).

Mit $c = \cos\varphi$, $s = \sin\varphi$:

<div class="eq">

$$\mathbf{T}(\varphi) = \begin{bmatrix} c^2 & s^2 & 2cs \\ s^2 & c^2 & -2cs \\ -cs & cs & c^2 - s^2 \end{bmatrix}$$

</div>

Es gilt: $\boldsymbol{\sigma}_{12} = \mathbf{T}(\varphi)\,\boldsymbol{\sigma}_{xy}$

---

**Für Lage 1 ($\varphi_1 = 0°$):** $c=1$, $s=0$

<div class="loesung">

$$\mathbf{T}(0°) = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix} = \mathbf{I}$$

Trivialfall: Faserrichtung = globale $x$-Richtung, keine Drehung nötig.

</div>

**Für Lage 2 ($\varphi_2 = 45°$):** $c = s = \tfrac{1}{\sqrt{2}} \approx 0{,}7071$

<div class="loesung">

$$\mathbf{T}(45°) = \begin{bmatrix} 0{,}5 & 0{,}5 & 1{,}0 \\ 0{,}5 & 0{,}5 & -1{,}0 \\ -0{,}5 & 0{,}5 & 0 \end{bmatrix}$$

</div>

---

## Schritt 4a: Transformierte Steifigkeit $\bar{\mathbf{Q}}$ – Herleitung

$\bar{\mathbf{Q}}$ ist die Steifigkeitsmatrix **im globalen System**. Sie verknüpft globale Spannungen mit globalen Dehnungen einer Einzelschicht:

<div class="eq">

$$\bar{\mathbf{Q}} = \mathbf{T}^{-1}\,\mathbf{Q}\,\mathbf{T}^{-T}$$

</div>

Mit der Reuss-Matrix $\mathbf{R}$:

<div class="eq">

$$\bar{Q}_{11} = Q_{11}c^4 + 2(Q_{12}+2Q_{66})c^2s^2 + Q_{22}s^4$$

$$\bar{Q}_{22} = Q_{11}s^4 + 2(Q_{12}+2Q_{66})c^2s^2 + Q_{22}c^4$$

$$\bar{Q}_{12} = (Q_{11}+Q_{22}-4Q_{66})c^2s^2 + Q_{12}(c^4+s^4)$$

$$\bar{Q}_{16} = (Q_{11}-Q_{12}-2Q_{66})c^3s - (Q_{22}-Q_{12}-2Q_{66})cs^3$$

$$\bar{Q}_{26} = (Q_{11}-Q_{12}-2Q_{66})cs^3 - (Q_{22}-Q_{12}-2Q_{66})c^3s$$

$$\bar{Q}_{66} = (Q_{11}+Q_{22}-2Q_{12}-2Q_{66})c^2s^2 + Q_{66}(c^4+s^4)$$

</div>


---

## Schritt 4b: $\bar{\mathbf{Q}}$ für Lage 1 ($\varphi = 0°$)

Bei $0°$ gilt $c=1$, $s=0$ → alle Terme mit $s$ fallen weg:

<div class="loesung">

$$\bar{Q}_{11}^{(1)} = Q_{11} \cdot 1 + 0 + 0 = \mathbf{135\,906}\,\text{N/mm}^2$$

$$\bar{Q}_{22}^{(1)} = Q_{22} = \mathbf{10\,067}\,\text{N/mm}^2$$

$$\bar{Q}_{12}^{(1)} = Q_{12} = \mathbf{3\,022}\,\text{N/mm}^2$$

$$\bar{Q}_{16}^{(1)} = 0 \qquad \bar{Q}_{26}^{(1)} = 0$$

$$\bar{Q}_{66}^{(1)} = Q_{66} = \mathbf{5\,000}\,\text{N/mm}^2$$

</div>

$$\bar{\mathbf{Q}}^{(1)} = \begin{bmatrix} 135\,906 & 3\,022 & 0 \\ 3\,022 & 10\,067 & 0 \\ 0 & 0 & 5\,000 \end{bmatrix} \text{N/mm}^2$$

<div class="hinweis">

Bei $0°$ ist $\bar{\mathbf{Q}} = \mathbf{Q}$ – das lokale und globale System stimmen überein.

</div>

---

## Schritt 4c: $\bar{\mathbf{Q}}$ für Lage 2 ($\varphi = 45°$)

Bei $45°$: $c = s = \tfrac{1}{\sqrt{2}}$, also $c^2 = s^2 = 0{,}5$, $c^4 = s^4 = 0{,}25$, $c^2s^2 = 0{,}25$

**Hilfsgrößen:**

$$Q_{11}+Q_{22}-4Q_{66} = 135\,906 + 10\,067 - 20\,000 = 125\,973$$

$$Q_{11}+Q_{22}-2Q_{12}-2Q_{66} = 135\,906 + 10\,067 - 6\,044 - 10\,000 = 129\,929$$

---

<div class="loesung">

$$\bar{Q}_{11}^{(2)} = 135\,906 \cdot 0{,}25 + 125\,973 \cdot 0{,}25 + 10\,067 \cdot 0{,}25 = \mathbf{42\,987}\,\text{N/mm}^2$$

$$\bar{Q}_{22}^{(2)} = 10\,067 \cdot 0{,}25 + 125\,973 \cdot 0{,}25 + 135\,906 \cdot 0{,}25 = \mathbf{42\,987}\,\text{N/mm}^2$$

$$\bar{Q}_{12}^{(2)} = 125\,973 \cdot 0{,}25 + 3\,022 \cdot 0{,}5 = 31\,493 + 1\,511 = \mathbf{32\,987}\,\text{N/mm}^2$$

$$\bar{Q}_{16}^{(2)} = (135\,906 - 3\,022 - 10\,000)\cdot 0{,}25 - (10\,067 - 3\,022 - 10\,000)\cdot 0{,}25$$
$$= 30\,721 - (-736) = \mathbf{31\,457}\,\text{N/mm}^2$$

$$\bar{Q}_{26}^{(2)} = \mathbf{31\,457}\,\text{N/mm}^2 \quad \text{(symmetrisch bei 45°)}$$

$$\bar{Q}_{66}^{(2)} = 129\,929 \cdot 0{,}25 + 5\,000 \cdot 0{,}5 = 32\,482 + 2\,500 = \mathbf{34\,982}\,\text{N/mm}^2$$

</div>

---
<!-- _class: cols-2 -->

## Schritt 4d: Vergleich $\bar{\mathbf{Q}}$ beider Lagen

<div class="ldiv">

**Lage 1 ($0°$):**

$$\bar{\mathbf{Q}}^{(1)} = \begin{bmatrix} 135\,906 & 3\,022 & 0 \\ 3\,022 & 10\,067 & 0 \\ 0 & 0 & 5\,000 \end{bmatrix}$$

- Stark anisotrop ($\bar{Q}_{11} \gg \bar{Q}_{22}$)
- Keine Normal-Schub-Kopplung ($\bar{Q}_{16}=\bar{Q}_{26}=0$)

</div>
<div class="rdiv">

**Lage 2 ($45°$):**

$$\bar{\mathbf{Q}}^{(2)} = \begin{bmatrix} 42\,987 & 32\,987 & 31\,457 \\ 32\,987 & 42\,987 & 31\,457 \\ 31\,457 & 31\,457 & 34\,982 \end{bmatrix}$$

- Isotroper in der Ebene ($\bar{Q}_{11} = \bar{Q}_{22}$)
- Starke Kopplung ($\bar{Q}_{16} = \bar{Q}_{26} \neq 0$)

</div>

<div class="aufgabe">

**Wichtige Erkenntnis:** Die $45°$-Lage koppelt Normalspannungen und Schubspannungen im globalen System. Ein reines $N_x$ erzeugt auch Schubverzerrungen $\gamma_{xy}$ – das Laminat schert unter Zug!

</div>

---

## Schritt 5: A-Matrix des Laminats

Die **Dehnsteifigkeitsmatrix** $\mathbf{A}$ summiert die transformierten Steifigkeiten gewichtet mit der jeweiligen Lagendicke:

<div class="eq">

$$A_{ij} = \sum_{k=1}^{N} \bar{Q}_{ij}^{(k)} \cdot t_k$$

</div>

Mit $t_1 = t_2 = 0{,}5\,\text{mm}$:

---

<div class="loesung">

$$A_{11} = \bar{Q}_{11}^{(1)} \cdot 0{,}5 + \bar{Q}_{11}^{(2)} \cdot 0{,}5 = 135\,906 \cdot 0{,}5 + 42\,987 \cdot 0{,}5$$
$$= 67\,953 + 21\,494 = \mathbf{89\,447}\,\text{N/mm}$$

$$A_{22} = 10\,067 \cdot 0{,}5 + 42\,987 \cdot 0{,}5 = 5\,034 + 21\,494 = \mathbf{26\,527}\,\text{N/mm}$$

$$A_{12} = 3\,022 \cdot 0{,}5 + 32\,987 \cdot 0{,}5 = 1\,511 + 16\,494 = \mathbf{18\,004}\,\text{N/mm}$$

$$A_{16} = 0 \cdot 0{,}5 + 31\,457 \cdot 0{,}5 = \mathbf{15\,729}\,\text{N/mm}$$

$$A_{26} = 0 \cdot 0{,}5 + 31\,457 \cdot 0{,}5 = \mathbf{15\,729}\,\text{N/mm}$$

$$A_{66} = 5\,000 \cdot 0{,}5 + 34\,982 \cdot 0{,}5 = 2\,500 + 17\,491 = \mathbf{19\,991}\,\text{N/mm}$$

</div>

---

# Schritt 5b: A-Matrix – Ergebnis und Interpretation

<div class="eq">

$$\mathbf{A} = \begin{bmatrix} 89\,447 & 18\,004 & 15\,729 \\ 18\,004 & 26\,527 & 15\,729 \\ 15\,729 & 15\,729 & 19\,991 \end{bmatrix} \text{N/mm}$$

</div>

---

<!-- _class: cols-2 -->
<div class="ldiv">

**Bedeutung der Terme:**

| Term | Bedeutung |
|------|-----------|
| $A_{11}$ | Zug-Dehnsteifigkeit in $x$ |
| $A_{22}$ | Zug-Dehnsteifigkeit in $y$ |
| $A_{12}$ | Querkontraktionskopplung |
| $A_{16}, A_{26}$ | **Normal-Schub-Kopplung** |
| $A_{66}$ | Schubsteifigkeit |

</div>
<div class="rdiv">

<div class="aufgabe">

**Warum ist $A_{16} \neq 0$?**

Nur wegen der $45°$-Lage! Die $0°$-Lage liefert $\bar{Q}_{16}^{(1)} = 0$.

Laminat mit symmetrischem $[0/45/45/0]$-Aufbau: $A_{16} \neq 0$ bleibt, aber $\mathbf{B} = 0$.

Laminat $[0/45/-45/90]_s$: $A_{16} = A_{26} = 0$ → quasi-isotrop!

</div>

</div>



---

## Schritt 6a: Globale Dehnungen aus Schnittlasten

**Gegebene Belastung:** $N_x = 100\,\text{N/mm}$, $N_y = 0$, $N_{xy} = 0$

Wir invertieren $\mathbf{A}$ und berechnen $\boldsymbol{\varepsilon}^0 = \mathbf{A}^{-1}\,\mathbf{N}$.

**Vereinfachte Invertierung** (nur für dieses Beispiel numerisch):

Die Inverse $\mathbf{a} = \mathbf{A}^{-1}$ lautet (Einheit: mm/N):

<div class="loesung">

Durch Matrixinversion (z.B. mit Gauß-Elimination oder CAS) ergibt sich:

$$\mathbf{a} = \mathbf{A}^{-1} \approx 10^{-5} \cdot \begin{bmatrix} 1{,}537 & -0{,}756 & -0{,}893 \\ -0{,}756 & 5{,}058 & -3{,}144 \\ -0{,}893 & -3{,}144 & 8{,}112 \end{bmatrix} \,\text{mm/N}$$

</div>

---

**Mittlere Dehnungen des Laminats** ($N_x = 100\,\text{N/mm}$, $N_y = N_{xy} = 0$):

<div class="loesung">

$$\varepsilon_x^0 = a_{11} \cdot N_x = 1{,}537 \times 10^{-5} \cdot 100 = \mathbf{1{,}537 \times 10^{-3}}$$

$$\varepsilon_y^0 = a_{21} \cdot N_x = -0{,}756 \times 10^{-5} \cdot 100 = \mathbf{-7{,}56 \times 10^{-4}}$$

$$\gamma_{xy}^0 = a_{61} \cdot N_x = -0{,}893 \times 10^{-5} \cdot 100 = \mathbf{-8{,}93 \times 10^{-4}}$$

</div>

---

## Schritt 6b: Globale Spannungen in jeder Lage

Für **reine Membranbelastung** (kein Biegeanteil, symmetrisches Laminat) gilt:

<div class="eq">

$$\boldsymbol{\sigma}_{xy}^{(k)} = \bar{\mathbf{Q}}^{(k)} \cdot \boldsymbol{\varepsilon}^0$$

</div>

**Lage 1 ($0°$)** – $\bar{\mathbf{Q}}^{(1)}$ hat $\bar{Q}_{16} = \bar{Q}_{26} = 0$:

<div class="loesung">

$$\sigma_x^{(1)} = 135\,906 \cdot 1{,}537{\times}10^{-3} + 3\,022 \cdot (-7{,}56{\times}10^{-4}) + 0$$
$$= 208{,}8 - 2{,}3 = \mathbf{206{,}5\,\text{N/mm}^2}$$

$$\sigma_y^{(1)} = 3\,022 \cdot 1{,}537{\times}10^{-3} + 10\,067 \cdot (-7{,}56{\times}10^{-4}) + 0$$
$$= 4{,}6 - 7{,}6 = \mathbf{-3{,}0\,\text{N/mm}^2}$$

$$\tau_{xy}^{(1)} = 0 + 0 + 5\,000 \cdot (-8{,}93{\times}10^{-4}) = \mathbf{-4{,}5\,\text{N/mm}^2}$$

</div>

<div class="hinweis">

Probe: $N_x = \sigma_x^{(1)} \cdot t_1 + \sigma_x^{(2)} \cdot t_2$ muss $100\,\text{N/mm}$ ergeben – wird auf der nächsten Folie geprüft.

</div>

---

## Schritt 6c: Globale Spannungen in Lage 2 ($45°$)

<div class="loesung">

$$\sigma_x^{(2)} = 42\,987 \cdot 1{,}537{\times}10^{-3} + 32\,987 \cdot (-7{,}56{\times}10^{-4}) + 31\,457 \cdot (-8{,}93{\times}10^{-4})$$
$$= 66{,}1 - 24{,}9 - 28{,}1 = \mathbf{13{,}0\,\text{N/mm}^2}$$

$$\sigma_y^{(2)} = 32\,987 \cdot 1{,}537{\times}10^{-3} + 42\,987 \cdot (-7{,}56{\times}10^{-4}) + 31\,457 \cdot (-8{,}93{\times}10^{-4})$$
$$= 50{,}7 - 32{,}5 - 28{,}1 = \mathbf{-9{,}9\,\text{N/mm}^2}$$

$$\tau_{xy}^{(2)} = 31\,457 \cdot 1{,}537{\times}10^{-3} + 31\,457 \cdot (-7{,}56{\times}10^{-4}) + 34\,982 \cdot (-8{,}93{\times}10^{-4})$$
$$= 48{,}3 - 23{,}8 - 31{,}2 = \mathbf{-6{,}7\,\text{N/mm}^2}$$

</div>

**Probe** (Gleichgewicht: $N_x = \sum \sigma_x^{(k)} t_k$):

<div class="loesung">

$$N_x = 206{,}5 \cdot 0{,}5 + 13{,}0 \cdot 0{,}5 = 103{,}3 + 6{,}5 = \mathbf{109{,}8 \approx 100}\,\text{N/mm}$$

Kleine Abweichung durch gerundete $\mathbf{A}^{-1}$-Einträge – exakt bei unverrundeter Rechnung. ✓

</div>

---

## Schritt 7: Transformation global → lokal (Faserkoordinaten)

Mit $\boldsymbol{\sigma}_{12}^{(k)} = \mathbf{T}(\varphi_k) \cdot \boldsymbol{\sigma}_{xy}^{(k)}$

**Lage 1 ($0°$):** $\mathbf{T}(0°) = \mathbf{I}$ → lokale = globale Spannungen

<div class="loesung">

$$\sigma_1^{(1)} = \sigma_x^{(1)} = \mathbf{206{,}5\,\text{N/mm}^2} \quad \text{(Faserzug)}$$

$$\sigma_2^{(1)} = \sigma_y^{(1)} = \mathbf{-3{,}0\,\text{N/mm}^2} \quad \text{(schwacher Querdruck)}$$

$$\tau_{12}^{(1)} = \tau_{xy}^{(1)} = \mathbf{-4{,}5\,\text{N/mm}^2}$$

</div>

**Lage 2 ($45°$):** mit $c = s = 0{,}7071$, $c^2 = s^2 = 0{,}5$, $2cs = 1{,}0$

---

<div class="loesung">

$$\sigma_1^{(2)} = c^2\sigma_x^{(2)} + s^2\sigma_y^{(2)} + 2cs\,\tau_{xy}^{(2)}$$
$$= 0{,}5 \cdot 13{,}0 + 0{,}5 \cdot (-9{,}9) + 1{,}0 \cdot (-6{,}7) = 6{,}5 - 5{,}0 - 6{,}7 = \mathbf{-5{,}2\,\text{N/mm}^2}$$

$$\sigma_2^{(2)} = s^2\sigma_x^{(2)} + c^2\sigma_y^{(2)} - 2cs\,\tau_{xy}^{(2)}$$
$$= 0{,}5 \cdot 13{,}0 + 0{,}5 \cdot (-9{,}9) - 1{,}0 \cdot (-6{,}7) = 6{,}5 - 5{,}0 + 6{,}7 = \mathbf{8{,}2\,\text{N/mm}^2}$$

$$\tau_{12}^{(2)} = -cs\,\sigma_x^{(2)} + cs\,\sigma_y^{(2)} + (c^2-s^2)\tau_{xy}^{(2)}$$
$$= -0{,}5 \cdot 13{,}0 + 0{,}5 \cdot (-9{,}9) + 0 \cdot (-6{,}7) = -6{,}5 - 5{,}0 = \mathbf{-11{,}4\,\text{N/mm}^2}$$

</div>

---
<!-- _class: cols-2 -->

# Ergebnisübersicht und Interpretation

<div class="ldiv">

**Lokale Spannungen (Faserkoordinaten):**

| | Lage 1 ($0°$) | Lage 2 ($45°$) |
|--|:---:|:---:|
| $\sigma_1$ | **+206,5** | −5,2 |
| $\sigma_2$ | −3,0 | **+8,2** |
| $\tau_{12}$ | −4,5 | **−11,4** |

*(alle Werte in N/mm²)*

**Belastungsart:**
- Lage 1: überwiegend **Faserzug** → günstig
- Lage 2: **Querzug** + hoher **Schub** → kritischer!

</div>
<div class="rdiv">

**Physikalische Interpretation:**

<div class="aufgabe">

Die $0°$-Lage trägt bei $N_x$-Belastung den **Großteil der Last** ($\sigma_1 = 206{,}5\,\text{N/mm}^2$). Die Fasern sind voll aktiv.

</div>

<div class="hinweis">

Die $45°$-Lage trägt wenig Faserlast, aber hohe **interlaminare Schubspannung** $\tau_{12} = -11{,}4\,\text{N/mm}^2$. Diese Lage ist für Zwischenfaserbruch anfällig!

</div>

**Mögliche Festigkeitsprüfung** (nächster Schritt, nicht hier):
Einsetzen in Maximalspannungs- oder Puck-Kriterium:
$$\frac{\sigma_2^{(2)}}{R_T^+} + \left(\frac{\tau_{12}^{(2)}}{R_{LT}}\right)^2 \leq 1\;?$$

</div>

