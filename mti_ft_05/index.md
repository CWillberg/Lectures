---
marp: true

theme: h2
header: 'Umformen'
footer: ''

title: MTI - Fertigungstechnik
author: Christian Willberg
---



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


## Vorlesung MTI - Umformen
Prof. Dr.-Ing.  Christian Willberg [![ORCID](../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

![bg right](https://bortec-group.com/app/uploads/resized/2022/07/kaltumformung-1-2560x0-c-center.jpg)

Kontakt: christian.willberg@h2.de

---

# Inhalte

![bg right 70%](../assets/QR/mti_ft_05.png)

---


<!--paginate: true-->

# Umformen 

Ist das Fertigen durch bildsames (plastisches) Ändern der Form eines festen Körpers. Dabei werden sowohl Masse als auch Stoffzusammenhalt beibehalten.

- zwei Hauptklassen
- Kaltumformung, Halbwarmumformung, Warmumformung

---

## Kaltumformung
- unterhalb der Rekristallisationstemperatur und ohne Vorwärmen des Werkstücks

Vorteile
- hohe Oberflächenqualität
- enge Toleranzen
- Verbesserte Eigenschaften durch Verfestigungen



![bg fit right](../assets/Figures/EKD_farbe.png)

---


## Kaltumformung
- unterhalb der Rekristallisationstemperatur und ohne Vorwärmen des Werkstücks



Nachteile
- hohe mechanische Werkzeugbeanspruchung, hoher Kraftbedarf
- schlechtere Umformbarkeit als bei Warmumformung

![bg fit right](../assets/Figures/EKD_farbe.png)

---


![bg fit](https://bortec-group.com/app/uploads/resized/2022/07/kaltumformung-1-2560x0-c-center.jpg)


---

## Halbwarmumformung
- unterhalb der Rekristallisationstemperatur , aber oberhalb der Raumtemperatur

Vorteile
- höhere Oberflächenqualität  als bei Warmumformung
- engere Toleranzen als bei Warmumformung
-  geringere mechanische Werkzeugbeanspruchung und geringerer Kraftbedarf

Nachteile
- hohe thermische Werkzeugbeanspruchung
- Energiebedarf für die Erwärmung


---

## Warmumformung
- oberhalb der Rekristillisationstemperatur 

Vorteile
- hohes Umformvermögen
- geringe mechanische Werkzeugbeanspruchung und geringer Kraftbedarf


![bg fit right](../assets/Figures/EKD_farbe.png)

---

- oberhalb der Rekristillisationstemperatur 

Nachteile
- Randentkohlungen können entstehen
- Abbrand und Zunderbildung
- grobe Toleranzen
- hohe thermische Werkzeugbeanspruchung
- hoher Aufwand für die Erwärmung und Nachbearbeitung

![bg fit right](../assets/Figures/EKD_farbe.png)

---


![](https://www.iph-hannover.de/_thumbnails_/1261_2_Umformtechnik_Pleuel1_IPH_Ralf_Buechler.jpg?m=1593587632)
![](https://www.durr.com/fileadmin/_processed_/1/2/csm_duerr-hot-working_2db6833f4b.webp)

---

## Warmformgebungsverfahren - Beispiele
- [Schmieden](https://youtu.be/AxLszR6fkLM?si=k6A9aOVfQceOK9v0&t=80)
- [Walzen](https://www.youtube.com/watch?v=WOTO64HgnXc)


---

## Verfahren nach Awiszus "Grundlagen der Fertigungstechnik"

- Gesenkschmieden
- Präszisionsschmieden
- Fließpressen
- Walzen
- Massivprägen
- Maßwalzen
- Tiefziehen
- Abstreckziehen
- Rohr-, Drahtziehen

---

## Halbzeuge
- Halbfertigprodukte wie Bleche, Drähte, Rohre, Stäbe, usw.
- oft normierte Größen
- werden dann in weitere Zischenprodukte oder Endprodukt verarbeitet

![bg right](https://upload.wikimedia.org/wikipedia/commons/e/ef/Extruded_aluminium_section_x3.jpg)


---

# Begrifflichkeiten

Umformbarkeit beschreibt die Fähigkeit eines Werkstoffes unter bestimmten Bedingungen seinen Zustand dauerhaft zu verändern. Maßgeblich durch die Kristallstruktur (Kristalle und Gefüge) bestimmt.



---



**Umformgrad**
- entspricht der Dehung in Prozent
- für kleine Deformationen $\varphi=\frac{\Delta l}{l_0}\cdot100\%$
- für große Deformationen $\varphi=ln\frac{l_1}{l_0}\cdot100\%$ -> logarithmisches Dehnungsmaß
- Richtungsabhängig (3 Umformgrade)

- Schiebungen
- Winkel $\gamma$ am Referenzblock


---

## Spannungszustand

$\boldsymbol{\sigma}=
\begin{bmatrix}
\sigma_{xx} & \tau_{xy} & \tau_{xz} \\
\tau_{xy} & \sigma_{yy} & \tau_{yz} \\
\tau_{xz} & \tau_{yz} & \sigma_{zz}
\end{bmatrix}
$

- Normalspannungen $\sigma$
- Schubspannungen $\tau$ -> symmetrisch

- Bewertung der lokalen Belastung (Spannung-Dehnung) ist analytisch in der Regel nicht möglich


---

## Fließbedingungen
**Vergleichspannungen**

_von Mises_
$\sigma_V=\sqrt{\frac12\left[
(\sigma_1 - \sigma_2)^2+
(\sigma_2 - \sigma_3)^2+ 
(\sigma_3 - \sigma_1)^2\right]+3\left[\tau_{12}^2+\tau_{13}^2+\tau_{23}^2\right]
}$
_Tresca_
$\sigma_V=\sqrt{\frac12\left( 
(\sigma_1 - \sigma_2)^2+
(\sigma_2 - \sigma_3)^2+ 
(\sigma_3 - \sigma_1)^2
\right)}\approx\sigma_1-\sigma_3$

---

- Umformgeschwindigkeit
- Umformvermögen
  - $R_m/\sigma_V$
  - bis zum Bruch maximal realisierbarer Umformgrad
  - sonstige Grenzen
    - unzulässige Deformationen
    - Werkzeuge
    - ...
---

## Umformarbeit

$W_U=W_{id}+W_R+W_S$

$W_{id}$ - ideale Umformarbeit
$W_R$ - Reibung
$W_S$ - Arbeit durch Schiebung

- Aus der Arbeit lassen sich die notwendigen Kräfte ableiten

---

# Ausgewählte Umformverfahren zur Halbzeugfertigung

---

## Längswalzen

![bg right 80%](https://qform3d.de/files_de/images/Schema%20des%20Flachwalzens_0.png)

- Walze kann glatt oder profiliert sein
-  hohe Produktivität und  Kontinuität der Fertigungsabläufe 
- [Video](https://youtu.be/u54iTAXzOmE?si=AKFHbj2DxHSins5S&t=129)
---

- mehrere Walzen können hintereinander geschaltet werden
- mehrdimensionale Bearbeitung wird hierdurch möglich

![bg right 80%](https://qform3d.de/files_de/images/Profilwalzen_qform_0.png)

---


## Querwalzen

- Material wird beispielsweise kontinuierlich nach außen gedrückt
- Verlängerung des Walzguts

![bg right fit](https://qform3d.de/files_de/images/Schema%20des%20Querkeilwalzens_0.png)

---



## Schrägwalzen

![bg right 80%](https://qform3d.de/files_de/images/Schema%20des%20Schraegwalzlochprozesses.png)


![](https://qform3d.de/files_de/images/Schema%20des%20Schraegwalzprozesses.png)

---

## Strangpressen
![bg 80% right](https://upload.wikimedia.org/wikipedia/commons/9/90/Filage_direct_de.png)

- Material wird verformt, aber nicht abgetragen
![](https://upload.wikimedia.org/wikipedia/commons/5/5c/Strangkkp.jpg)
---


## Biegeformen
**Freies Biegen**
![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/f/f4/Biegeanimation_2D.gif)


---

**Schwenkbiegen**

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/3/3f/Swing-folding-ani.gif)

---

**Walzrunden**


![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/c/cc/Rundwalzen.png)

---

## Tiefziehen

![bg right 80%](https://upload.wikimedia.org/wikipedia/commons/f/fc/Emboutissage1.png)
[Metall](https://www.youtube.com/watch?v=WtJNFdv54EM)
[Kunststoff](https://youtu.be/_FDMz7YAtWA?si=Hqx3rEmdAj7ykcIJ&t=99)





