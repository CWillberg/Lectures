---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Vorlesung Reale Strukturen und Eigenschaften
author: Christian Willberg
---



<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
  mermaid.initialize({ startOnLoad: true });
</script>

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
</style>


## Vorlesung Werkstofftechnik - Werkstoffeigenschaften
Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Hochschule Magdeburg-Stendal

![bg right](https://upload.wikimedia.org/wikipedia/commons/a/a2/Bochumer_Verein-23-50078.jpg)

Kontakt: christian.willberg@h2.de
Teile des Skripts sind von \
Prof. Dr.-Ing. Jürgen Häberle übernommen

---

## Inhalte


![bg right 70%](../assets/QR/wst_mb_03.png)




---

<!--paginate: true-->



## Werkstoffeigenschaften

Was sind Werkstoffeigenschaften?


---

## Symmetrien
- isotropie
- transversale isotropie
- orthotropie
- ...
- anisotropie
![bg right 80%](../assets/Figures/xyz.png)

<!---
- Diskussion; Eigenschaften können richtungsabhängig sein
- Praxisbeispiele
-->

---

## Mechanische Eigenschaften
<a id="Mechanik"></a>

- die **reversible** Verformung, bei der sofort bzw. eine bestimmte Zeit nach dem Einwirken der äußeren Belastung der verformte Werkstoff seine ursprüngliche Form zurückerhält: elastische und viskoelastische Verformung;

- die **irreversible (bleibende)** Verformung, bei der die Formänderung auch nach dem Einwirken der äußeren Belastung erhalten bleibt: plastische und viskose Verformung;

- der Bruch, d.h. eine durch Entstehen und Ausbreiten von Rissen bewirkte Trennung des Werkstoffes.


---

## Simulationsbeispiel

[External Link](https://perilab-results.nimbus-extern.dlr.de/models/DCB?step=65&variable=Damage&displFactor=400)


---

## Elastizität
- reversibel, energieerhaltend
- Hooksches Gesetz 1D
Normalspannung $\sigma = E\varepsilon$
Schubspannung $\tau = G\gamma$

---

## Grundlagen

- Normaldehnung [-]
$\varepsilon_{mechanisch} = \frac{l - l_0}{l_0}$

- Normalspannung $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\sigma = \frac{F}{A}=E\varepsilon$
E - Elastizitätsmodul, Young's modulus $\left[\frac{N}{m^2}\right]$\
\
\
\
\
.
<div style="position: absolute; bottom: 40px; left: 80px; color: blue; font-size: 20px;"> 
    <img src="Figures/EModul.svg" style="height:230px;width:auto;vertical-align: top;">
</div>

![bg right:25%](../assets/Figures/Normalspannung.gif)

---

## Grundlagen

- Schubdehnungen [-]
$\varepsilon = \frac12(\frac{u_x}{l_0}+\frac{u_y}{b_0})=\frac{\gamma}{2}$

- Schubspannung $\left[\frac{N}{m^2}\right]$, $[Pa]$
$\tau = \frac{F_s}{A}= G\gamma$

- Normal- und Schubspannungen sind nicht kompatibel; daher die Vergleichsspannungen -> Technische Mechnanik

- G - Schub-, Gleitmodul, Shear modulus $\left[\frac{N}{m^2}\right]$

![bg right:25%](../assets/Figures/Schubspannung.gif)


---

## Grundlagen

- Querkontraktionszahl [-]
- $\nu = -\frac{\varepsilon_y}{\varepsilon_x}$
für homogene Werkstoffe $0\leq\nu\leq 0.5$
für heterogene Werkstoffe sind anderen Konstellationen denkbar

- [Kompressionsmodul](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper) $K = \frac{E}{3(1-2\nu)}$
- [Schubmodul](https://de.wikipedia.org/wiki/Kompressionsmodul#Umrechnung_zwischen_den_elastischen_Konstanten_isotroper_Festk%C3%B6rper) $K = \frac{E}{2(1+\nu)}$

![bg right:25%](../assets/Figures/Kompression.gif)

---

## Werkstoffbeispiele

| Werkstoff                         | E [GPa]   | G [GPa] | $\nu [-]$     |
|:----------------------------------|:----------|:--------|:----------|
| Stahl unlegiert                   | 200       | 77      | 0.30      |
| Titan                             | 110       | 40      | 0.36      |
| Kupfer                            | 120       | 45      | 0.35      |
| Aluminium                         | 70        | 26      | 0.34      |
| Magnesium                         | 45        | 17      | 0.27      |
| Wolfram                           | 360       | 130     | 0.35      |
| Gusseisen mit lamellarem Graphit  | 120       | 60      | 0.25      |
| Messing                           | 100       | 35      | 0.35      |
| Thermoplaste/Duromere             | 2 … 5     | 1 … 2   | ~0.35   |
| Elastomere                        | 0.1       | 0.03    | 0.45 - 0.49|
| Sperrholz                         | 4 … 16    | -       | -         |
| Beton                             | 40 … 45   | -       | -         |


---


## Steifigkeiten
<details>
<summary>Wie Materialeigenschaften den Steifigkeiten zusammen?</summary>

- Material $\cdot$ Querschnitte = Steifigkeit
- Dehn-, Normalsteifigkeit = $EA$
- Biegesteifigkeit = $EI$
- Torsionssteifigkeit = $GI_P$

</details>

![bg fit right:50%](../assets/Figures/IWES_test.jpg)
<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Bildreferenz</a>
</div>

---

## 
<!---

* 1. und 2. Eigenfrequenz ->  https://doi.org/10.3390/en14092451
* Verformung in Schlag- und Schwenkrichtung sind aber identisch
* Turmschlag ist relevant
* dynamische Stabilität
* -->

![bg fit](../assets/Figures/EF1.png)
![bg fit](../assets/Figures/EF2.png)


<div style="position: absolute; bottom: 10px; left: 520px; color: blue; font-size: 20px;"> 
    <a href="https://doi.org/10.3390/en14092451" style="color: blue;">Bildreferenz</a>
</div>

---

## Festigkeit

[Die Festigkeit eines Werkstoffes beschreibt die Beanspruchbarkeit durch mechanische Belastungen, bevor es zu einem Versagen kommt, und wird angegeben als mechanische Spannung $\left[N/m^2\right]$. Das Versagen kann eine **unzulässige Verformung** sein, insbesondere eine **plastische (bleibende) Verformung** oder auch ein **Bruch**.](https://de.wikipedia.org/wiki/Festigkeit)


>Wichtig: Festigkeit $\neq$ Steifigkeit

---


## Plastische Versagen 

![bg fit right:50%](../assets/Figures/Stress_strain_ductile.svg)


<div style="position: absolute; bottom: 10px; right: 0px; color: blue; font-size: 20px;"> 
    <a href="https://commons.wikimedia.org/w/index.php?curid=89891144" style="color: blue;">By Nicoguaro - Own work, CC BY 4.0</a>
</div>

---

## Viskoses Verhalten

- reversibel
- zeitabhängig

Federmodel $\sigma = E\epsilon$ 
 - Elastischer Anteil
 - Dargestellt durch Federlemente
<div style="position: absolute; bottom: -10px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/spring.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

<div style="position: absolute; bottom: -150px; left: 500px; color: blue; font-size: 20px;"> 
    <img src="../assets/Figures/damper.svg" alt="Presentation link" style="height:550px;width:auto;vertical-align: top;background-color:transparent;">
</div>

Dämpfer  $\sigma = \eta\dot{\epsilon}=\eta\frac{\partial \epsilon}{\partial t}$ 
- Viskoser Anteil
- Dargestellt durch Dämpferelemente


---

## 

![bg fit](../assets/Figures/Spannung-Dehnung.png)
![bg fit](../assets/Figures/Spannung-Dehnrate.png)

---

## 

![bg fit](../assets/Figures/Spannung-Zeit.png)
![bg fit](../assets/Figures/Hysteresis.png)



---


## Wärmedehnung


$\boldsymbol{\varepsilon}_{thermisch}=-\boldsymbol{\alpha}\Delta T$

_Wärmeausdehnungskoeffizientenmatrix_

$\boldsymbol{\alpha} = 
\begin{bmatrix}
\alpha_{11} & \alpha_{12} & \alpha_{13} \\
\alpha_{12} & \alpha_{22} & \alpha_{23} \\
\alpha_{13} & \alpha_{23} & \alpha_{33}
\end{bmatrix}
$

**1D oder isotropisch**
$\varepsilon_{thermisch}=-\alpha\Delta T$

>Beispiel -> Paraview

---

| Symmetrie | Modell | Beispiele |
|---|---|---|
| Isotropie | $\alpha_{11}=\alpha_{22}=\alpha_{33}$ und $\alpha_{12}=\alpha_{13}=\alpha_{23}=0$ | Metalle, Kunststoffe|
| transversale Isotropie | $\alpha_{22}=\alpha_{33}$ und $\alpha_{12}=\alpha_{13}=\alpha_{23}=0$| Einzellage Faserverbund |
| Orthotropie Isotropie | $\alpha_{12}=\alpha_{13}=\alpha_{23}=0$| Mehrlagiger Faserverbund |
| Anisotropie | beliebige $\alpha_{ij}$ | homogenisierte Betrachtung eines unysmmetrischen Mehrlagen-Verbunds |

---

## Thermische Eigenschaften 
- Bi-Metall Streifen
- Brücken
- Schienen
- Hochpräzisionsmessgeräten
- Schweißen, Löten, etc.
- ...

Kann u.a. zu thermischen Eigenspannungen, Verzug führen. 


---

## Beispiel: Thermische Spannungen 1D

$\sigma = E \varepsilon = E (\varepsilon_{mechanisch}+\varepsilon_{thermisch})= E (\varepsilon_{mechanisch}-\alpha\Delta T)$

>Durch eine Vordehung kann die Belastung auf ein Bauteil reduziert werden

## Beispiel: Thermische Längenänderung 1D
$\Delta l = l_0 \varepsilon_{mechanisch}$
>Für freie eine Dehnung, d.h. es wirken keine Spannungen

$0 = E \varepsilon = E (\varepsilon_{mechanisch}+\varepsilon_{thermisch})= E (\varepsilon_{mechanisch}-\alpha\Delta T)$
$\varepsilon_{mechanisch}=\alpha\Delta T$
$\Delta l = l_0 \varepsilon_{thermisch} = l_0\alpha\Delta T$

---

## Wärmeleitung
- auch Konduktion und Wärmediffusion
- $T_{hoch}\rightarrow T_{niedrig}$ (2. Hauptsatz der Thermodynamik). 
- es geht keine Wärme aufgrund der Energieerhaltung (1. Hauptsatz) verloren.

**Wärmestrom $[W]$**
$\dot{\mathbf{q}}=-\boldsymbol{\lambda}\text{grad}(T)$

- $\text{grad}(T)$ ist der Gradient der Temperaturänderung $\frac{\partial T}{\partial dx_i}$; 
- im linearen Fall $\text{grad}(T)=\Delta T / d = \frac{T_2-T_1}{d}$

![bg right:30% fit](../assets/Figures/Temperaturgradient.png)

---

$\dot{\mathbf{q}}=-\boldsymbol{\lambda}\text{grad}(T)$

$\dot{\mathbf{q}} = \frac{\partial \mathbf{q}}{\partial t}$
- zeigt an das sich etwas ändert -> $dt$

$\boldsymbol{\lambda}=\begin{bmatrix}
\lambda_{11} & 0 & 0 \\
0 & \lambda_{22} & 0 \\
0 & 0 & \lambda_{33}
\end{bmatrix}$
ist die Matrix der Wärmeleitfähigkeit.
**Sonderfälle**
- wenn $T_1$ = $T_2$ gibt es keine Leitung
- wenn $\boldsymbol{\lambda}=0$; perfekte Isolation und keine Wärmeleitung

---

| Symmetrie | Modell | Beispiele |
|---|---|---|
| Isotropie | $\lambda_{11}=\lambda_{22}=\lambda_{33}$ | Metalle, Kunststoffe|
| transversale Isotropie  | $\lambda_{22}=\lambda_{33}$ | Einzellage Faserverbund |
| Anisotropie | beliebige $\lambda_{ij}$ | Mehrlagen Faserverbund |

>Beispiel -> Paraview

---

## Wärmeübergang

Übertragung der Wärme von einem Festkörper in ein Fluid oder Gas. 

>Wichtig, wenn Maschinen gekühlt oder erwärmt werden sollen. 

Wird durch den Wärmeübergangskoeffizient beschrieben $\alpha_{Übergang}$. Er hängt unter anderem  von der spezifischen Wärmekapazität, der Dichte und dem Wärmeleitkoeffizienten des wärmeabführenden sowie des wärmeliefernden Mediums ab.

$\dot{q}=\alpha_{Übergang}A\Delta T$

>Beispiel Wärmepumpe und Fußbodenheizung

---

## Spezifische Wärmekapazität

sagt aus wieviel Energie in Form von Wärme in einen Stoff "stecken" muss, um die Temperatur zu erhöhen.

$C_p=\frac{\Delta q}{m \Delta T}$

---

## Wärmestrahlung

$\dot{q}=\epsilon_{Emissionsgrad}\sigma_{Stefan-Boltzmann}AT^4$

Emissiongrad $\epsilon_{Emissionsgrad}$ liegt zwischen 0 (perfekter Spiegel) und 1 (idealer Schwarzer Körper) und ist in Teilen materialabhängig.

>nutzbar für Spektralanalysen, um die Zusammensetzung von Werkstoffen zu bestimmen. 

![bg right:50% fit](https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/McCree-Kurve_Keramik-Metallhalogenid-Lampe_DE.svg/1920px-McCree-Kurve_Keramik-Metallhalogenid-Lampe_DE.svg.png)

---

# Spezielle Temperaturen

## Phasenübergangstemperatur
Temperatur wo ein Phasenübergang in einer Kristallstruktur stattfindet (siehe [Phasendiagramme](@ref "Phasendiagamme")). Wird maßgeblich durch beigesetzte Stoffe beeinflusst (siehe [Legierungen](@ref "Legierungen"))

## Schmelztemperatur
Als Schmelztemperatur bezeichnet man die Temperatur, bei der ein Stoff vom festen in den flüssigen Aggregatzustand übergeht. 

---

## Siedetemperatur

Temperatur des Phasenübergangs von flüssig zu gasförmig. Für Schmierstoffe ggf. relevant.

## Curie Temperatur
Nach Piere Curie benannt. [Bezeichnet](https://de.wikipedia.org/wiki/Curie-Temperatur) die Temperatur, bei deren Erreichen ferromagnetische bzw. ferroelektrische Eigenschaften eines Materials vollständig verschwunden sind, so dass sie oberhalb nur noch paramagnetisch bzw. paraelektrisch sind. 

---

# Magnetische Eigenschaften


---

# Elektrische Eigenschafte

---


## Eigenspannungen
- Thermisch
- Verformung
- Gefügeumwandlung
- Chemisch

> Positive Beispiele: ??
> Negative Beispiele: ??


