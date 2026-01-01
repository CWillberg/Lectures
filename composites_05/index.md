---
marp: true
header: 'Faserverbunde - Mikromechanik von Langfaserverbunden'
theme: h2
paginate: true
math: katex
---

<!-- _class: lead -->

# Mikromechanik von Langfaserverbunden



Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal



---

<!-- _class: lead -->


## Aufgabenstellung



---

# Annahmen für die Berechnung
- Fasern
   - homogen
   - isotrop oder transversal isotrop - linear elastisch
   - kreisrunder Querschnitt
   - regelmäßig angeordnet
   - gerade ausgerichtet (UD-Schicht) oder bekannte Verwebung
- Matrix
   - homogen
   - linear elastisch, ideal plastisch, viskoplastisch
   - isotrop


---
# Querschnitte von C-Fasern


![bg 90%](../assets/Figures/FKV/querschnitte_von_CFasern.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>

---


# Verteilung und Ausrichtung von Fasern

![bg 70%](../assets/Figures/FKV_struktur.png)
![bg 80%](../assets/Figures/FKV/UD_verbund_schnitt.png)


<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild (rechts) entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>

---



# Repräsentativer Bereich

- bei unregelmäßiger Anordnung
   - repräsentativer Bereich muss groß genug sein
   - Anzahl der Fasern durch Zufallsvariablen gesteuert
   - Annahme von Periodizität
   - führt zu einem repräsentativen Volumenelement (RVE)


![bg right fit](../assets/Figures/FKV/RVE_example.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>


---

# Repräsentativer Bereich

- Grenzen: 
   - Dimensionen sehr unterschiedlich sind (Ebene vs. Laminatdicke)
   - Periodizität in allen Raumrichtungen nicht streng erfüllt
   - Dominanz der Effekte innerhalb der Ebene


![bg right fit](../assets/Figures/FKV/RVE_example.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>


---

# Repräsentativer Bereich

![bg 90%](../assets/Figures/FKV/querrisse.png)

![bg 80%](../assets/Figures/FKV/PD_simulation.png)


<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus "Peridynamic analysis of fibre-matrix debond and matrix failure mechanisms in composites under transverse tensile load by an energy-based damage criterion", Rädel, M., Willberg, C. and Krause, D.; 10.1016/j.compositesb.2018.08.084
</div>

---
# Repräsentativer Bereich
UD-Schicht mit regelmäßiger Anordnung

- Quadratische Anordnung
   - max. Faservolumengehalt
   $\phi = \pi/4 \approx 0.785$
- Hexagonale Anordnung
   - max. Faservolumengehalt
   $\phi = \pi\sqrt3/6 \approx 0.907$


![bg vertical 40%](../assets/Figures/FKV/quadratische_anordnung.png)

![bg right 50%](../assets/Figures/FKV/hexagonale_anordnung.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>


---

# Beispie für mikromechanische Spannungsberechnung

## Beispiel: Aushärtespannungen

- Aushärtespannungen (curing stresses) in einer UD-Schicht aus CF mit Epoxidharz-Matrix
- CFK-UD Schicht wird bei 180°C ausgehärtet
- nach dem Aushärten wird der Verbund abgekühlt
- bei etwa 120°C wird die Matrix fest und der Zustand wird eingefroren
- weitere Abkühlung auf Raumtemperatur (20°C) ergibt eine Temperaturdifferenz von 100°C
- unterschiedliche Wärmedehnungen von Fasre und Matrix im Zusammenwirken mit der Haftung bewirken einen Eigenspannungszustand

---

## Beispiel: Aushärtespannungen

- im Inneren der UD Schicht, störungsfrei $\rightarrow$ ebener Dehnungszustand
- senkrecht zur Faser: 2D Problem
- am freien Rand (senkrecht zu Faser); Verwölbung der Oberfläche, weil keine äußeren Kräfte
- 3D Problem
- Berechnung des Verschiebungs- und Spannungszustandes mit FEM, Materialgesetze müssen bekannt sein
- Matrix ist isotrop, linear elastisch und charakterisiert durch E-Modul $E$, Querkontraktionszahl $\nu$, Temperaturdehnkoeffizient $\alpha$

---

- Kohlenstofffaser ist transversalisotrop, linear elastisch und beschrieben durch 5 Koeffizienten
   -  $E_L$, $E_T$: E Moduli in Faserrichtung und senkrecht
   - $G_{LT}$ Schubmodul parallel-senkrecht
   - $\nu_{TT}$, $\nu_{LT}$ Querkontraktionszahl parallel-senkrecht, senkrecht-senkrecht
- 2 Temperaturdehnkoeffizienten: $\alpha_L$, $\alpha_T$

---

$$\begin{bmatrix}
\varepsilon_{xx} \\
\varepsilon_{yy} \\
\varepsilon_{zz} \\
\gamma_{yz} \\
\gamma_{xz} \\
\gamma_{xy}
\end{bmatrix} =
\begin{bmatrix}
\frac{1}{E_L} & -\frac{\nu_{LT}}{E_L} & -\frac{\nu_{LT}}{E_L} & 0 & 0 & 0 \\
-\frac{\nu_{LT}}{E_L} & \frac{1}{E_T} & -\frac{\nu_{TT}}{E_T} & 0 & 0 & 0 \\
-\frac{\nu_{LT}}{E_L} & -\frac{\nu_{TT}}{E_T} & \frac{1}{E_T} & 0 & 0 & 0 \\
0 & 0 & 0 & \frac{1}{G_{LT}} & 0 & 0 \\
0 & 0 & 0 & 0 & \frac{1}{G_{LT}} & 0 \\
0 & 0 & 0 & 0 & 0 & \frac{2(1+\nu_{TT})}{E_T}
\end{bmatrix}
\begin{bmatrix}
\sigma_{xx} \\
\sigma_{yy} \\
\sigma_{zz} \\
\sigma_{yz} \\
\sigma_{xz} \\
\sigma_{xy}
\end{bmatrix} +\begin{bmatrix}
\alpha_L \\
\alpha_T \\
\alpha_T \\
0 \\
0 \\
0
\end{bmatrix}\cdot \Delta T$$
- x-Achse oder 1-Achse = Faserrichtung (L)
- y- und z-Achse oder 2- und 3-Achse = quer zur Faserrichtung (T) 


---

## Materialgrößen und Geometrie


$\begin{array}{llll}
\text{Fasern}:   & E_L = 240GPA & \text{Matrix}: &E=3.5GPA\\
&E_L = 240GPA&&\nu=0.35\\
&G_{LT}=16GPA&&\alpha=55\cdot10^{-6}K^{-1}\\
&\nu_{LT} = 0.23\\
&\nu_{TT} = 0.23\\
&\alpha_L = 0.7\cdot10^{-6}K^{-1}\\
&\alpha_T = 5.5\cdot10^{-6}K^{-1}\\
\text{Faservolumengehalt}: & 60\%\\
\text{Faseranordnung}: & \text{hexagonal}\\
\end{array}
$

---
# Repräsentatives Element

![bg 80%](../assets/Figures/FKV/repraesentatives_element.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>


---
# Verformung infolge Temperturerhöhung

![bg 50%](../assets/Figures/FKV/verformung_RV_bsp.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>

---
# Axialspannungen $\Delta T = -100°C$



![bg 60%](../assets/Figures/FKV/axial_spannungen_RV_bsp.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>

---

# Radialspannungen $\Delta T = -100°C$

![bg 60%](../assets/Figures/FKV/radialspannungen_RV_bsp.png)


<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>


---

# Umfangsspannungen $\Delta T = -100°C$

![bg 70%](../assets/Figures/FKV/umfangsspannungen_RV_bsp.png)


<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>


---
# Schubspannungen $\Delta T = -100°C$

![bg 70%](../assets/Figures/FKV/schubspannungen_RV_bsp.png)


<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>

---

# Thermische Zyklierung bei Tiefsttemperaturanwendungen

![bg 70%](../assets/Figures/FKV/matrix_risse_thermisch.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus Lüders, C. "Mehrskalige Betrachtung des
Ermüdungsverhaltens thermisch zyklierter
Faserkunststoffverbunde", Dissertation, 2020
</div>

---

![bg 65%](../assets/Figures/FKV/modellierung%20thermisch_zyk.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus Lüders, C. "Mehrskalige Betrachtung des
Ermüdungsverhaltens thermisch zyklierter
Faserkunststoffverbunde", Dissertation, 2020
</div>

---

# Homogenisierung
- Reduktion der Einzekomponenten auf eine Einzelkomponente
- Reduktion des Modellierungsaufwands
- Homogenisierungsverfahren unterscheiden sich abhängig vom betrachteten Parameter
   - Steifigkeit
   - Wärmedehnungkoeffizienten
   - Feuchtequellkoeffizienten
   - Wärmeleitfähigkeitskoeffizienten
   - Festigkeiten


---

# Homogenisierung von Steifigkeiten
- Steifigkeiten von Fasern und Matrix sind extrem unterschiedlich
- für die BErechnung komplexer Strukturen ist die Berücksichtigung einzelner Fasern zu aufwändig $\rightarrow$ Einzelschicht wird als homogenes Kontinuum modelliert
- globales Verhalten soll hinreichend genau beschrieben werden
- Modellierung örtlicher (lokaler) Aspekte wird vernachlässigt, z.B Verwölbung am freien Rand

---
## Allgemeine Regeln
- E Modul in Faserrichtung $E_L$ und Querkontraktionszahl $\nu_{LT}$: parallel geschaltete Feder 
$\rightarrow$ Mischungsregel für Steifigkeiten

- E Modul in Querrichtung $E_T$, Schubmodul $G_{LT}$ und Querkontraktionszahl $\nu_{TT}$: in Reihe geschaltete Feder 
$\rightarrow$ Mischungsregel für Nachgiebigkeiten



![bg right 70%](../assets/Figures/FKV/homogenisierung.png)

---

Korrektur erforderlich, weil Steifigkeit der Faser unter Belastung in Querrichtung nur zum Teil wirksam ist

![bg right 70%](../assets/Figures/FKV/homogenisierung.png)

---

# Formeln für isotrope Fasern


$\begin{array}{ll}
\text{\textbf{Faserwerte}}    & \text{\textbf{Matrixwerte}}\\
E_f & E_m\\
\nu_f & \nu_m\\
\text{\textbf{Faservolumengehalt}} &\phi\\
\\
\text{\textbf{E-Modul in Faserrichtung}}\\
E_L=\phi E_f+(1-\phi)E_m & \text{Mischungsregel}\\
\text{\textbf{Querkontraktionszahl}}\\
\nu_{LT}=\phi \nu_f+(1-\phi)\nu_m &\text{Mischungsregel}\\
\text{\textbf{E-Modul in Querrichtung}}\\
1/E_T\approx \phi/E_f + (1-\phi)/E_m &\text{Mischungsregel für Nachgiebigkeit}
\end{array}
$
Korrektur erforderlich; entsprechend auch für $G_{LT} und Qerkontraktionszahl $\nu_{TT}$

---

# Korrigierte $E_T$ Werte für isotrope Fasern
Es existieren viele verschiedene Ansätze - keiner mit Anspruch auf Allgemeingültigkeit
**Beispiele**
$\begin{array}{ll}
\text{\textbf{Puck}}    & E_T = \frac{(1+0.85\phi^2)E_m}{\phi E_m/E_f+(1-\phi)^{1.25}}\\
\text{\textbf{Tsai, Hahn, Wu}} & E_T=\frac{\phi+0.5(1-\phi)}{\phi/E_f+0.5(1-\phi)/E_m}\\
\text{\textbf{Geier}} & E_T=\frac{E_fE_m}{\phi/E_m+(1-\overline{\phi}E_f)}\qquad\text{mit}\qquad \overline{\phi}=\phi+\zeta\phi(1-\phi);\zeta\approx 0.6\\
\text{\textbf{Chamis}} & E_T=E_m/[1-\sqrt\phi(1-E_m/E_f)]
\end{array}
$



---

# Korrigierte $G_{LT}$ Werte für isotrope Fasern

Ansätz entsprechen dem Vorgehen bei der Bestimmung von $E_T$

**Beispiele**
$\begin{array}{ll}
\text{\textbf{Puck}}    & G_{LT} = \frac{(1+0.6\sqrt\phi)G_m}{\phi G_m/G_f+(1-\phi)^{1.25}}\\
\text{\textbf{Tsai, Hahn, Wu}} & G_{LT}=\frac{\phi+0.5(1-\phi)}{\phi/G_f+0.5(1-\phi)/G_m}\\
\text{\textbf{Geier}} & G_{LT}=\frac{G_fG_m}{\phi/G_m+(1-\overline{\phi}G_f)}\qquad\text{mit}\qquad \overline{\phi}?\phi+\zeta\phi(1-\phi);\zeta\approx 0.6\\
\text{\textbf{Chamis}} & G_{LT}=G_m/[1-\sqrt\phi(1-G_m/G_f)]
\end{array}
$

---

# Anwendung der Homogenisierungsformeln
**Problem der Kennwertbestimmung**
- nur wenige Faserkennwerte können direkt im Versuch bestimmt werden
- insbesondere in Querrichtung und unter Schubbelastung lassen sich Einzelfasern kaum testen
- die Formeln zur Homogenisierung der Steifigkeiten sind für zwei unterschiedliche Aufgaben sinnvoll:
   - Bestimmung der Faserwerte aus Messungen an UD_Schichten und Reinharzproben (Inverse Anwendung)
   - Umrechnung der Laminateigenschaften bei geändertem Faservolumenanteil

---

# Beispiel zur Anwendung der Homogenisierungsformeln
E_Glasfasern als UD-Verstärkungen in Epoxidharzmatrix eingebettet
Messungen am Verbund und am Reinharz durchgeführt

$\begin{array}{ll}
\text{\textbf{Verbundwerte}}    & \text{\textbf{Reinharzwerte}} \\
E_L=45GPA & E_m=3.3GPa\\
E_T=12GPa&\nu_m=0.3\\
G_{LT}=4.4GPa & G_m=\frac{E_m}{2(1+\nu_m)}=1.27GPa\\
\nu_{LT}=0.25\\
\nu_{TT}=0.25\\
\phi=0.6
\end{array}
$

---

## Inverse Anwendung

$E_L=\phi E_f+(1-\phi)E_m$

$E_f=(E_l-(1-\phi)E_m)/\phi=72.8GPa$

$\nu_{LT}=\phi \nu_f+(1-\phi)\nu_m$

$\nu_{LT}=0.217$$

da isotrope Faser
$G_f=\frac{E_f}{2(1+\nu_f)}$
$G_f=29.91GPa$

---
## Umrechnung der Laminatwerte

$\phi = 0.6 \rightarrow \phi = 0.5 ?$

mit den bestimmten Werten für die Fasern $E_f$ und $\nu_f$ in den folgenden Gleichungen $\phi=0.5$ einsetzen

$E_L=\phi E_f+(1-\phi)E_m=38GPa$

$\nu_{LT}=\phi \nu_f+(1-\phi)\nu_m=0.258$

---
## Umrechnung der Laminatwerte
**In Querrichtung sind Laminatwerte nicht eindeutig**

aus Puck
$E_T = \frac{(1+0.85\phi^2)E_m}{\phi E_m/E_f+(1-\phi)^{1.25}}$

$E_T = 9.03GPa$

aus Geier
$E_T=\frac{E_fE_m}{\phi/E_m+(1-\overline{\phi}E_f)}\qquad\text{mit}\qquad \overline{\phi}=\phi+\zeta\phi(1-\phi);\zeta\approx 0.6$
$E_T = 8.7GPa$


---

## Umrechnung der Laminatwerte
aus Tsai, Hahn, Wu
$E_T=\frac{\phi+0.5(1-\phi)}{\phi/E_f+0.5(1-\phi)/E_m}$
$E_T=9.08GPa$

aus Chamis
$E_T=E_m/[1-\sqrt\phi(1-E_m/E_f)]$
$E_T=10.16GPa$

Mittelwert ist $E_T=9.24GPa$ mit Abweichungen in einer Größenordnung von 10\%

---
## Umrechnung der Laminatwerte
**Schubmodul $G_{LT}$**

aus Puck
$G_{LT} = 3.35GPa$

aus Geier
$G_{LT} = 3.31GPa$

aus Tsai, Hahn, Wu
$G_{LT}=3.51GPa$

aus Chamis
$G_{LT}=3.93GPa$
Mittelwert ist $G_{LT}=3.52GPa$ mit Abweichungen in einer Größenordnung von 10\%

---


# Formeln für transversal-isotrope Fasern


$\begin{array}{ll}
\text{\textbf{Faserwerte}}    & \text{\textbf{Matrixwerte}}\\
E_{Lf} & E_m\\
\nu_{LTf} & \nu_m\\
G_{LTf}\\
E_{Lf}\\
G_{TTf}\\
\text{\textbf{Faservolumengehalt}} &\phi\\
\text{\textbf{Formeln}}\\
E_L=\phi E_f+(1-\phi)E_m & \text{Mischungsregel}\\
\nu_{LT}=\phi \nu_f+(1-\phi)\nu_m &\text{Mischungsregel}\\
E_T=E_M/\left[1-\sqrt\phi(1-E_m/E_{Tf})\right]&\text{Chamis}\\
G_{LT}=G_m/\left[1-\sqrt\phi(1-G_m/G_{LTf})\right]&\text{Chamis}\\
G_{TT}=G_m/\left[1-\sqrt\phi(1-G_m/G_{TTf})\right]&\text{Chamis}\\
\nu_{TT=\frac{E_T}{2G_{TT}}-1}&\text{Chamis}
\end{array}
$

---
# Berücksichtung von Faserondulation

- repräsentatives Element mit FEM zu berechnen
- Modelle können enorm komplex sein
- Gewebe können so abgebildet werden


![bg 22%](../assets/Figures/FKV/gewebe_FEM.png)


![bg right 80%](../assets/Figures/FKV/mikroskop_gewebe.png)

![bg vertical fit](../assets/Figures/FKV/ondulation_RVE.png)


<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild 1+2 entmommen aus Lin, H; et al. "A finite element approach to the modelling of fabric mechanics and its application to virtual fabric design and testing", 10.1080/00405000.2012.660755
    Bild 3 aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>


---

![bg 70%](../assets/Figures/FKV/ondulation_ergebnisse.png)


---
