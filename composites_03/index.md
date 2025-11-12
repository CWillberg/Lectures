---
marp: true
theme: default
paginate: true
math: katex
---

<!-- _class: lead -->

# Materialtheorie für Faserverbundleichtbau

## Teil 1: Grundlagen der Kontinuumsmechanik

Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal



---

<!-- _class: lead -->

# Klassische Laminattheorie (CLT)

---

Klassische **Laminat**theorie

## Laminate
**Definition:** Schichtweiser Aufbau aus unidirektionalen Lagen (Laminae)

**Notation:** $[0°/45°/-45°/90°]_s$
- $s$: symmetrisch bezüglich Mittelebene
- Winkel: Faserausrichtung relativ zur Referenzrichtung


---

Klassische Laminat**theorie**

**Annahmen der CLT:**
1. Einzelschicht verhält sich linear-elastisch, orthrotrop
2. Perfekte Bindung zwischen Schichten (keine Delaminationen)
3. Schichten dünn im Vergleich zur Gesamtdicke
4. Kirchhoff-Hypothese (keine Schubverformung)

---

## Kinematische Annahmen (Kirchhoff)

**Verschiebungsfeld:**
$$u(x,y,z) = u_0(x,y) - z \frac{\partial w_0}{\partial x}$$
$$v(x,y,z) = v_0(x,y) - z \frac{\partial w_0}{\partial y}$$
$$w(x,y,z) = w_0(x,y)$$

**Dehnungen:**
$$\varepsilon_x = \varepsilon_x^0 + z\kappa_x$$
$$\varepsilon_y = \varepsilon_y^0 + z\kappa_y$$
$$\gamma_{xy} = \gamma_{xy}^0 + z\kappa_{xy}$$

---

## Dehnungen und Krümmungen

**Membrandehnungen (Mittelebene, z=0):**
$$\varepsilon_x^0 = \frac{\partial u_0}{\partial x}, \quad \varepsilon_y^0 = \frac{\partial v_0}{\partial y}, \quad \gamma_{xy}^0 = \frac{\partial u_0}{\partial y} + \frac{\partial v_0}{\partial x}$$

**Krümmungen:**
$$\kappa_x = -\frac{\partial^2 w_0}{\partial x^2}, \quad \kappa_y = -\frac{\partial^2 w_0}{\partial y^2}, \quad \kappa_{xy} = -2\frac{\partial^2 w_0}{\partial x \partial y}$$

**Vektor-Notation:**
$$\begin{Bmatrix} \varepsilon \end{Bmatrix} = \begin{Bmatrix} \varepsilon^0 \end{Bmatrix} + z \begin{Bmatrix} \kappa \end{Bmatrix}$$

---

## Schnittgrößen

**Membranschnittgrößen (Normalkräfte, Schubkraft):**
$$N_x = \int_{-h/2}^{h/2} \sigma_x \, dz, \quad N_y = \int_{-h/2}^{h/2} \sigma_y \, dz, \quad N_{xy} = \int_{-h/2}^{h/2} \sigma_{xy} \, dz$$

**Biegemomente:**
$$M_x = \int_{-h/2}^{h/2} z\sigma_x \, dz, \quad M_y = \int_{-h/2}^{h/2} z\sigma_y \, dz, \quad M_{xy} = \int_{-h/2}^{h/2} z\sigma_{xy} \, dz$$

---

## Spannungen in Schicht k

Für Schicht $k$ mit Lage $z_k \leq z \leq z_{k+1}$:

$$\begin{Bmatrix}
\sigma_x \\
\sigma_y \\
\sigma_{xy}
\end{Bmatrix}_k = [\bar{Q}]_k
\begin{Bmatrix}
\varepsilon_x \\
\varepsilon_y \\
\gamma_{xy}
\end{Bmatrix}_k = [\bar{Q}]_k \left( \begin{Bmatrix} \varepsilon^0 \end{Bmatrix} + z \begin{Bmatrix} \kappa \end{Bmatrix} \right)$$

mit transformierter Steifigkeitsmatrix $[\bar{Q}]_k$ für Winkel $\theta_k$

---

## ABD-Matrix

**Integration über alle Schichten:**
$$\begin{Bmatrix}
N_x \\ N_y \\ N_{xy} \\ M_x \\ M_y \\ M_{xy}
\end{Bmatrix} = 
\begin{bmatrix}
A & B \\
B & D
\end{bmatrix}
\begin{Bmatrix}
\varepsilon_x^0 \\ \varepsilon_y^0 \\ \gamma_{xy}^0 \\ \kappa_x \\ \kappa_y \\ \kappa_{xy}
\end{Bmatrix}$$

**Kurzform:**
$$\begin{Bmatrix} N \\ M \end{Bmatrix} = \begin{bmatrix} A & B \\ B & D \end{bmatrix} \begin{Bmatrix} \varepsilon^0 \\ \kappa \end{Bmatrix}$$

---

## Komponenten der ABD-Matrix

**Membransteifigkeiten (A-Matrix):**
$$A_{ij} = \sum_{k=1}^{n} (\bar{Q}_{ij})_k (z_{k+1} - z_k)$$

**Kopplungssteifigkeiten (B-Matrix):**
$$B_{ij} = \frac{1}{2} \sum_{k=1}^{n} (\bar{Q}_{ij})_k (z_{k+1}^2 - z_k^2)$$

**Biegesteifigkeiten (D-Matrix):**
$$D_{ij} = \frac{1}{3} \sum_{k=1}^{n} (\bar{Q}_{ij})_k (z_{k+1}^3 - z_k^3)$$

---

## Interpretation der Matrizen

**A-Matrix (3×3):**
- Membranverhalten (Scheibe)
- Beziehung: Normalkräfte ↔ Membrandehnungen

**D-Matrix (3×3):**
- Biegeverhalten (Platte)
- Beziehung: Momente ↔ Krümmungen

**B-Matrix (3×3):**
- Kopplung zwischen Membran- und Biegeverhalten
- $B = 0$: für symmetrische Laminate
- $B \neq 0$: Normalkräfte erzeugen Krümmungen

---



Beispielrechnungen
- symmetrische Laminate
- negative Querkontraktionen
---

## Symmetrische Laminate

**Bedingung:** Schichtaufbau symmetrisch zur Mittelebene

**Beispiel:** $[0°/45°/-45°/90°]_s$

**Eigenschaften:**
$$B_{ij} = 0 \quad \text{für alle } i,j$$

**Entkoppelte Gleichungen:**
$$\begin{Bmatrix} N \end{Bmatrix} = [A] \begin{Bmatrix} \varepsilon^0 \end{Bmatrix}$$
$$\begin{Bmatrix} M \end{Bmatrix} = [D] \begin{Bmatrix} \kappa \end{Bmatrix}$$

---

## Spezielle Laminattypen

**Quasi-isotropes Laminat:**
- Beispiel: $[0°/±60°]_s$ oder $[0°/±45°/90°]_s$
- Annähernd isotropes Verhalten in der Ebene
- $A_{16} = A_{26} = 0$

**Balanciertes Laminat:**
- Für jeden Winkel $+\theta$ existiert $-\theta$ mit gleicher Dicke
- $A_{16} = A_{26} = 0$, $D_{16} = D_{26} = 0$
- Keine Kopplung Normal-Schub

**Kreuzverbund (Cross-ply):**
- Nur $0°$ und $90°$ Lagen
- $A_{16} = A_{26} = D_{16} = D_{26} = 0$

---

## Versagenskriterien

**Maximum-Stress-Kriterium:**
$$-X_c < \sigma_1 < X_t$$
$$-Y_c < \sigma_2 < Y_t$$
$$|\sigma_{12}| < S$$

**Tsai-Wu-Kriterium:**
$$F_1\sigma_1 + F_2\sigma_2 + F_{11}\sigma_1^2 + F_{22}\sigma_2^2 + F_{66}\sigma_{12}^2 + 2F_{12}\sigma_1\sigma_2 < 1$$

**Puck-Kriterium:**
- Zwischenfaserbruch (IFF)
- Faserbruch (FF)
- Bruchwinkelabhängig

---

## First-Ply-Failure (FPF)

**Definition:** Versagen der ersten Schicht im Laminat

**Vorgehen:**
1. Berechne Schnittgrößen $N$, $M$ aus Belastung
2. Bestimme $\varepsilon^0$, $\kappa$ aus ABD-Matrix
3. Für jede Schicht $k$:
   - Berechne $\varepsilon_x, \varepsilon_y, \gamma_{xy}$ an $z_k$ und $z_{k+1}$
   - Transformiere in lokales System: $\varepsilon_1, \varepsilon_2, \gamma_{12}$
   - Berechne Spannungen: $\sigma_1, \sigma_2, \sigma_{12}$
   - Prüfe Versagenskriterium
4. Bestimme kritische Last für FPF

---

## Progressive Schädigung

**Nach FPF:**
- Eigenschaftsdegradation der geschädigten Schicht
- Neuberechnung der ABD-Matrix
- Last-Verschiebungs-Verhalten wird nichtlinear
- Last wird auf intakte Schichten umverteilt

**Methoden:**
- Sudden degradation (sofortige Reduktion)
- Gradual degradation (kontinuierliche Reduktion)
- Continuum Damage Mechanics (CDM)

**Last-Failure (LF):** Versagen der letzten tragenden Schicht

---

<!-- _class: lead -->

# Zusammenfassung

---

## Kernpunkte der Materialtheorie

1. **Kinematik:** Deformationsgradient $\mathbf{F}$ beschreibt Transformation
2. **Verzerrungen:** Green-Lagrange $\mathbf{E}$ für große Deformationen
3. **Spannungen:** 2. Piola-Kirchhoff $\mathbf{S}$ energetisch konjugiert
4. **Hyperelastizität:** Freie Energie $\Psi(\mathbf{C})$
5. **Anisotropie:** Zusätzliche Invarianten $I_4, I_5$ für Faserrichtung
6. **Linearisierung:** Orthotropes Hooke'sches Gesetz mit 9 Konstanten
7. **Transformation:** Steifigkeiten ändern sich mit Faserwinkel $\theta$
8. **CLT:** ABD-Matrix verknüpft Schnittgrößen und Deformationen
9. **Versagen:** Verschiedene Kriterien für Faserbruch und Zwischenfaserbruch

---

<!-- _class: lead -->

# Vielen Dank für Ihre Aufmerksamkeit!

## Fragen?

Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal
christian.willberg@h2.de

---

## Literaturempfehlungen

1. **Holzapfel, G.A.** - "Nonlinear Solid Mechanics" (2000)
2. **Altenbach, H. et al.** - "Kontinuumsmechanik" (2015)
3. **Schürmann, H.** - "Konstruieren mit Faser-Kunststoff-Verbunden" (2007)
4. **Daniel, I.M., Ishai, O.** - "Engineering Mechanics of Composite Materials" (2006)
5. **Reddy, J.N.** - "Mechanics of Laminated Composite Plates and Shells" (2004)
6. **Puck, A., Schürmann, H.** - "Failure analysis of FRP laminates by means of physically based phenomenological models" (2002)