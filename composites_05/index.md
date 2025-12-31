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

