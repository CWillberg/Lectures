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
- Scheibe mit Loch ''auswechseln''

---
# Gelochte Scheibe unter gleichmäßiger Zugbelastung

![bg 70%](../assets/Figures/FKV/gelochte_scheibe.png)

<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>

---

# Auslegung nach Netztheorie
## Annahmen
- Alle Kräfte werden durch Fasern aufgenommen
- die Matrix hält die Fasern in ihrer Position, keine Schub- und Quersteifigkeitsbeitrag
- Steifigkeiten des Laminats nach der Netztheorie sind etwa 10\% geringer als nach der Schichtentheorie
- Experimente bestätigen die Werte der Schichtentheorie
- Netztheorie nur noch für Sonderfälle aktuell
   - Berechnung der Bruchfestigkeit wenn Matrix versagt -> ultimate strength
   - Auslegung von Laminaten

---
# Auslegung nach Netztheorie
## Vorgehensweise
- Vorgabe von drei Faserrichtungen
- Bestimmung der Beanspruchungen in den Faserrichtungen
- Berechnung der Schichtdicken derart, dass
die Beanspruchung / Tragfähigkeit in der jeweiligen Faserrichtung zu einer ausreichenden Sicherheit führt

---
# Auslegung nach Netztheorie
- Aufteilung der Kräfte auf die drei Faserrichtungen
- Kreuzungspunkte sind reibungsfrei Verbindungen

![bg right fit](../assets/Figures/FKV/netztheorie.png)



<div style="position: absolute; bottom: 10px; left: 120px; color: black; font-size: 20px;"> 
    Bild entmommen aus der Vorlesung "Leichtbau mit Faserverbunden" SS2008 von Prof. Dr.-Ing. Klaus Rohwer"
</div>

---
# Auslegung nach Netztheorie
## Rechenbeispiel

- Bestimmung der Membranschnittkräfte

$$\mathbf{N}=\begin{bmatrix} N_x=600 N/mm\\
N_y = 100 N/mm\\
N_{xy}=60N/mm
\end{bmatrix}$$

- Wahl der Faserrichtungen: $\Psi_1=0°$, $\Psi_2=+45°$, $\Psi_3=-45°$

- Bestimmung der Lastanteile $\mathbf{N}_1$, $\mathbf{N}_2$, $\mathbf{N}_3$

---


## Aufteilung der Kräfte auf die drei Faserrichtungen

$$N_x=\sum_{i=1}^3\cos^2\Psi_i N_i$$
$$N_y=\sum_{i=1}^3\sin^2\Psi_i N_i$$
$$N_{xy}=\sum_{i=1}^3\sin\Psi_i\cos\Psi_i N_i$$
![bg right fit](../assets/Figures/FKV/aufteilung_Mebrankraefte.png)


---
## Mohrsche Transformation

$\begin{aligned}
N_x &= N_i \cdot \underbrace{\cos\Psi_i}_{\text{Kraft in x}} \cdot \underbrace{\cos\Psi_i}_{\text{Fläche}} \\
N_y &= N_i \cdot \underbrace{\sin\Psi_i}_{\text{Kraft in y}} \cdot \underbrace{\sin\Psi_i}_{\text{Fläche}} \\
N_{xy} &= N_i \cdot \underbrace{\sin\Psi_i}_{\text{Kraft in y}} \cdot \underbrace{\cos\Psi_i}_{\text{Fläche}} 
\end{aligned}$


![bg right fit](https://upload.wikimedia.org/wikipedia/commons/f/f5/Spannung_5.svg)

---

$\begin{array}{lll}
\text{Faserwinkel 0°:}   & \sin(0°) = 0 & \cos(0°) = 1\\
\text{Faserwinkel +45°:} & \sin(+45°) = \frac{\sqrt{2}}{2} & \cos(+45°) = \frac{\sqrt{2}}{2}\\
\text{Faserwinkel -45°:} & \sin(-45°) = -\frac{\sqrt{2}}{2} & \cos(-45°) = \frac{\sqrt{2}}{2}
\end{array}
$

$
\begin{bmatrix}
N_x\\
N_y\\
N_{xy}
\end{bmatrix} = \begin{bmatrix}
1& 1/2 & 1/2\\
0& 1/2 & 1/2\\
0& 1/2 & -1/2\\
\end{bmatrix} \begin{bmatrix}
N_1\\
N_2\\
N_3
\end{bmatrix}
$
invertieren
$
\begin{bmatrix}
N_1\\
N_2\\
N_3
\end{bmatrix} = \begin{bmatrix}
1& -1 & 0\\
0& 1 & 1\\
0& 1 & -1\\
\end{bmatrix} \begin{bmatrix}
N_x\\
N_y\\
N_{xy}
\end{bmatrix}
$

---

$\begin{array}{lll}
\text{Faserwinkel 0°:}   & N_1 = 600-100 = 500 N/mm\\
\text{Faserwinkel +45°:} & N_2 = 100+60=160N/mm\\
\text{Faserwinkel -45°:} & N_3 = 100 -60 = 40 N/mm
\end{array}
$

---

# Auslegung nach Netztheorie

## Materialauswahl
- CFK UD Gelege mit Faservolumenanteil $\phi = 60\%$
- Schichtdicke $d=0.125 mm$
- Zugfestigkeit $R_L^{(+)}=1300 N / mm^2$
- Sicherheit gegen Bruch $S_B = 2.0$
## Erforderliche Schichdicken
$\begin{array}{lll}
\text{Faserwinkel 0°:}   & 2\cdot 500/1300 = 0.77mm\\
\text{Faserwinkel +45°:} & 2\cdot 160/1300 = 0.25mm\\
\text{Faserwinkel -45°:} & 2\cdot 40/1300 = 0.06mm
\end{array}$

---

**Gewählte Auslegung**
$\begin{array}{lll}
\text{Faserwinkel 0°:}   & \text{7 Schichten ergeben } 0.875mm>0.77mm\\
\text{Faserwinkel +45°:} & \text{2 Schichten ergeben } 0.25mm\\
\text{Faserwinkel -45°:} & \text{7 Schichten ergeben } 0.25mm>0.06mm
\end{array}$

---

# Auslegung nach Netztheorie, Fazit

- Kräfte werden primär von Fasern aufgenommen
   - geringe Verzerrung des Verbunds
   - geringe Beanspruchung der Matrix
- einfache Auslegungsprozedur
- Auslegung auf drei Schichten begrenzt
- gilt nur für einen Lastfall
- nur für Membranbeanspruchung geeignet