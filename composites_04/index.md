---
marp: true
theme: h2
paginate: true
math: katex
---

<!-- _class: lead -->

# Auslegung von Faserverbundleichtbau



Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal



---

<!-- _class: lead -->

---

## Aufgabenstellung




---

# Auslegung nach Hauptspannungen
## Vorgehen
- Ausrichten der Fasern in Richtung der Hauptspannung
- Wahl der Schichtdicke deart, dass Festigkeit bei ausreichend Sicherheit erfüllt ist

## Vorteile
- Optimales Ausnutzen der Tragfähigkeit
## Nachteile
- nur ein Lastfall möglich
- schwierig zu fertigen -> Nachführen der Faserrichtung ist schwierig
---
# Auslegung nach Hauptspannungen
## Rechenbeispiel
- Bestimmung der Membranschnittkräfte

$$\mathbf{N}=\begin{bmatrix} N_x=600 N/mm\\
N_y = 100 N/mm\\
N_{xy}=60N/mm
\end{bmatrix}$$
- Bestimmung der Hauptnormalspannungen für den ebenen Spannungszustand

$$N_{1,2}=\frac{N_x+N_y}{2}\pm\sqrt{\frac{(N_x-N_y)^2}{4}+N_{xy}^2}$$

$$N_{1}=607N/mm\qquad \text{und}\qquad N_{2}=93N/mm$$

---
# Auslegung nach Hauptspannungen



- Bestimung der Richtung der Hauptnormalspannungen

$$\tan 2\Psi = \frac{2N_{xy}}{N_x-N_y} = 120/500=0.24$$

$$\Psi \approx 7°$$

- Faserrichtung $7°$ und $-83°$

---

# Auslegung nach Hauptspannungen
## Materialauswahl
- CFK UD Gelege mit Faservolumenanteil $\phi = 60\%$
- Schichtdicke $d=0.125 mm$
- Zugfestigkeit $R_L^{(+)}=1300 N / mm^2$
- Sicherheit gegen Bruch $S_B = 2.0$
## Bestimmung erforderlichen Lagenzahl
7° Richtung: $2.0\cdot 607/1300=0.93mm$
-83° Richtung: $2.0\cdot 93/1300=0.14mm$
**Gewählte Auslegung**
7° Richtung: 8 Schichten / Lagen ergeben $1.0 mm$ ($>0.93mm$)
-83° Richtung: 2 Schichten / Lagen ergeben $0.25 mm$ ($>0.14mm$)

---
# Auslegung nach Hauptspannungen
## Probleme
- zwei Fasern ergeben kein statisch bestimmtes System, d.h. für beliebige Belastungen müssen mindestens **drei** Faserrichtungen betrachtet werden
- Nachführen der Fasern auf der Linie der Hauptnormalspannungen ist praktisch kaum möglich
- bei kleineren Störungen bei ansonsten geraden Verlauf der Hauptspannungslonien kann man stückweise gerade Pflaster aufbringen

---
# Geloche Scheibe unter gleichmäßiger Zugbelastung

![bg 70%](../assets/Figures/FKV/gelochte_scheibe.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>
