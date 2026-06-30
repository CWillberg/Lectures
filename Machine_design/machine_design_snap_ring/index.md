---
marp: true
theme: h2
header: 'Machine Design — Snap Ring & Shaft Stress'
paginate: true
---
<style>
img[alt="ORCID"] {
    height: 15px !important;
    width: auto !important;
    vertical-align: top !important;
    display: inline !important;
    margin: 0 !important;
}
section {
  font-family: 'Segoe UI', sans-serif;
  font-size: 23px;
  color: #1e2a3a;
}

h1 { font-size: 34px; color: #1a5276; }
h2 { font-size: 24px; color: #1a5276; }
h3 { font-size: 20px; }

.aufgabe {
  border: 2px solid #e67e22;
  background: #fdf2e9;
  padding: 12px 16px;
  border-radius: 6px;
  margin: 10px 0;
}

.loesung {
  border-left: 4px solid #27ae60;
  background: #eafaf1;
  padding: 10px 14px;
  border-radius: 0 6px 6px 0;
  margin: 10px 0;
}

.eq {
  border: 2px solid #c39bd3;
  background: #f4ecf7;
  padding: 10px 16px;
  border-radius: 6px;
  text-align: center;
  margin: 10px 0;
}

.hinweis {
  border-left: 4px solid #2e86c1;
  background: #eaf2f8;
  padding: 10px 14px;
  font-size: 20px;
  border-radius: 0 6px 6px 0;
  margin: 10px 0;
}

.zwei-spalten {
  display: flex;
  gap: 30px;
}
.zwei-spalten > * { flex: 1; }

table th { background: #1a5276; color: white; }
table tr:nth-child(even) { background: #f2f3f4; }
</style>



# Snap Ring Design and Shaft Stress Analysis



Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/Machine_design/machine_design_snap_ring/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

## 1 — Why Snap Rings?

Bearings must be **retained axially** on a shaft or in a housing.

Common methods:
- Shaft shoulder + end cap (rigid, costly to disassemble)
- Lock nut (adjustable, needs thread)
- **Snap ring / circlip** (simple, fast, reversible)

![bg right:38% 90%](https://upload.wikimedia.org/wikipedia/commons/5/51/Sicherungsringe.jpg)

<div class="hinweis">

**DIN 471** — shaft snap rings (external)  
**DIN 472** — bore snap rings (internal)

</div>

---

## 2 — Components and Geometry

<div class="zwei-spalten">

<div>

**Snap ring parameters:**

| Symbol | Meaning |
|--------|---------|
| $d_1$ | shaft nominal diameter |
| $d_3$ | groove diameter |
| $m$ | groove width |
| $t$ | groove depth = $(d_1 - d_3)/2$ |
| $s$ | ring thickness |
| $b$ | ring width |

</div>

<div>

**Key relationships (DIN 471):**

$$d_3 = d_1 - 2t$$

$$m \geq s + \text{clearance}$$

The groove depth $t$ determines:
- Available load-bearing area
- Stress concentration at groove root

<div class="hinweis">
Groove dimensions are standardised. Always use DIN 471 tables!
</div>

</div>
</div>

---

## 3 — Axial Force Capacity

The snap ring transmits axial force **via the groove flank**.

**Bearing face area** of the ring in the groove:

$$A_R = \frac{\pi}{4}\left(d_1^2 - d_3^2\right)$$

<div class="eq">

$$F_{\text{ax, perm}} = A_R \cdot p_{\text{perm}}$$

</div>

where $p_\text{perm}$ is the **permissible surface pressure** on the groove flank.

Typical values (steel): $p_\text{perm} = 200 \ldots 350 \;\text{N/mm}^2$

---

## 4 — Required Retention Force

The axial load on the bearing arises from:

$$F_\text{ax} = F_\text{bearing, axial} + F_\text{preload} + F_\text{inertia}$$

<div class="aufgabe">

**Design criterion:**

$$F_\text{ax} \leq F_\text{ax, perm} = A_R \cdot p_\text{perm}$$

If not satisfied → choose next larger shaft diameter or use a stepped ring (DIN 984).

</div>

<div class="hinweis">
Safety factor recommendation: $S_F \geq 1.5$ against axial displacement of the bearing.
</div>

---

## 5 — Groove as Stress Concentrator

The groove is a **notch** in the shaft cross-section.

<div class="zwei-spalten">

<div>

**Reduced cross-section:**
$$d_3 = d_1 - 2t$$

**Net area:**
$$A_3 = \frac{\pi}{4} d_3^2$$

**Net section modulus (bending):**
$$W_{b,3} = \frac{\pi}{32} d_3^3$$

**Net polar section modulus (torsion):**
$$W_{t,3} = \frac{\pi}{16} d_3^3$$

</div>

<div>

**Stress concentration factor $K_t$:**

For a circumferential groove:

$$K_{t,b} \approx 1 + \frac{2t}{r} \cdot f(t/r, d_3/d_1)$$

Typical values for standard snap ring grooves:

| $d_1$ [mm] | $K_{t,b}$ |
|-----------|-----------|
| 20–30 | 1.8–2.2 |
| 40–60 | 2.0–2.5 |
| 80–100 | 2.2–2.8 |

</div>
</div>

---

## 6 — Nominal Stresses at the Groove

**Bending stress** (from transverse loads $M_b$):

<div class="eq">

$$\sigma_b = \frac{M_b}{W_{b,3}} = \frac{32\, M_b}{\pi\, d_3^3}$$

</div>

**Torsional shear stress** (from torque $T$):

<div class="eq">

$$\tau_t = \frac{T}{W_{t,3}} = \frac{16\, T}{\pi\, d_3^3}$$

</div>

**Axial normal stress** (from axial retention force $F_\text{ax}$):

<div class="eq">

$$\sigma_\text{ax} = \frac{F_\text{ax}}{A_3} = \frac{4\, F_\text{ax}}{\pi\, d_3^2}$$

</div>

---

## 7 — Combined (von Mises) Stress

All load components act simultaneously at the groove cross-section.

Using the **distortion energy criterion** (von Mises):

<div class="eq">

$$\sigma_v = \sqrt{\left(\sigma_b + \sigma_\text{ax}\right)^2 + 3\,\tau_t^2}$$

</div>

Including the **stress concentration factor**:

<div class="eq">

$$\sigma_{v,\text{notch}} = \sqrt{\left(K_{t,b}\,\sigma_b + \sigma_\text{ax}\right)^2 + 3\left(K_{t,t}\,\tau_t\right)^2}$$

</div>

<div class="hinweis">
$K_{t,t} \approx 0.6 \cdot K_{t,b}$ for torsion in shallow circumferential grooves (empirical approximation).
</div>

---

## 8 — Safety Against Yielding

**Static failure criterion:**

<div class="eq">

$$S_y = \frac{R_{p0.2}}{\sigma_{v,\text{notch}}} \geq S_{y,\min}$$

</div>

Recommended minimum safety factors:

| Loading type | $S_{y,\min}$ |
|---|---|
| Static, well-known loads | 1.5 |
| Dynamic, moderate uncertainty | 2.0 |
| Impact / shock loads | 2.5–3.0 |

<div class="loesung">

For groove cross-sections with stress concentrations, always check **both** static (yielding) and fatigue (endurance limit) safety!

</div>

---

## 9 — Fatigue Safety at the Groove

For rotating shafts, bending is **fully reversed** ($R = -1$):

$$\sigma_{a,b} = \sigma_b \quad (\text{amplitude})$$

**Notch-corrected fatigue stress amplitude:**

<div class="eq">

$$\sigma_{a,\text{notch}} = K_f \cdot \sigma_b$$

</div>

where $K_f$ is the **fatigue notch factor**:

$$K_f = 1 + q\,(K_t - 1)$$

$q$ = notch sensitivity factor (material-dependent, $0 \leq q \leq 1$)

**Fatigue safety:**

$$S_f = \frac{\sigma_{W,b}}{\sigma_{a,\text{notch}}} \geq 1.5$$

---

## 10 — Worked Example

**Given:** Shaft $d_1 = 40\;\text{mm}$, steel S355J2 ($R_{p0.2} = 355\;\text{N/mm}^2$, $\sigma_{W,b} = 240\;\text{N/mm}^2$)

DIN 471: groove depth $t = 1.75\;\text{mm}$, groove radius $r = 0.3\;\text{mm}$

Loads: $M_b = 180\;\text{Nm}$, $T = 90\;\text{Nm}$, $F_\text{ax} = 5\;\text{kN}$

<div class="loesung">

**Step 1 — Groove diameter:**  
$d_3 = 40 - 2 \times 1.75 = 36.5\;\text{mm}$

**Step 2 — Nominal stresses:**  
$\sigma_b = 32 \times 180\,000 / (\pi \times 36.5^3) = 119.7\;\text{N/mm}^2$  
$\tau_t = 16 \times 90\,000 / (\pi \times 36.5^3) = 29.9\;\text{N/mm}^2$  
$\sigma_\text{ax} = 4 \times 5000 / (\pi \times 36.5^2) = 4.8\;\text{N/mm}^2$

</div>

---

## 10 — Worked Example (cont.)

<div class="loesung">

**Step 3 — Stress concentration ($K_{t,b} = 2.1$, $K_{t,t} = 1.26$):**

$$\sigma_{v} = \sqrt{(2.1 \times 119.7 + 4.8)^2 + 3\,(1.26 \times 29.9)^2}$$
$$= \sqrt{(256.3)^2 + 3\,(37.7)^2} = \sqrt{65\,690 + 4\,264} = 264\;\text{N/mm}^2$$

**Step 4 — Static safety:**

$$S_y = \frac{355}{264} = \mathbf{1.34} \quad \Rightarrow \text{insufficient! } (S_{y,\min} = 1.5)$$

**Consequence:** Increase shaft diameter → $d_1 = 45\;\text{mm}$, repeat calculation.

</div>

<div class="hinweis">
Small changes in $d_1$ have a strong effect: stresses scale with $d_3^{-3}$!
</div>

---

## 11 — Summary: Design Procedure

```
1. Determine loads: M_b, T, F_ax
2. Select shaft diameter d1 (initial sizing)
3. Look up DIN 471: groove depth t, radius r, ring dimensions
4. Calculate groove diameter d3 = d1 - 2t
5. Check axial retention capacity: F_ax ≤ A_R · p_perm
6. Calculate nominal stresses: σ_b, τ_t, σ_ax
7. Determine stress concentration factors K_t,b and K_t,t
8. Calculate combined stress σ_v,notch (von Mises)
9. Check static safety: S_y = R_p0.2 / σ_v ≥ 1.5
10. Check fatigue safety: S_f = σ_W,b / σ_a,notch ≥ 1.5
```

<div class="aufgabe">

If any criterion fails → increase $d_1$ by one standard step and repeat from step 3.

</div>

---

## References & Standards

- **DIN 471** — Retaining rings for shafts (Sicherungsringe für Wellen)
- **DIN 472** — Retaining rings for bores
- **DIN 743** — Shaft and axle calculation (fatigue safety)
- Niemann, Winter, Höhn: *Maschinenelemente*, Vol. 1, Springer
- Shigley's *Mechanical Engineering Design*, McGraw-Hill
- VDI 2230 — Systematic calculation of highly stressed bolted joints *(for stress concentration reference)*

<div class="hinweis">
DIN 471 tables give: $d_3$, $m$, $s$, $b$, $F_\text{ax,perm}$ — always verify from the official standard, not the textbook summary.
</div>

---

# Part II — Interference Fit (Klemmverbindung)

**Extension: Axial and Radial Force Transmission**

Prof. Dr.-Ing. Christian Willberg [![ORCID](../../assets/styles/ORCIDiD_iconvector.png)](https://orcid.org/0000-0003-2433-9183)

Topics:
- Operating principle and types of interference fits
- Contact pressure from interference — Lamé equations
- Transmissible axial force and torque
- Stress state in shaft and hub
- Safety against slipping and yielding

---

## 12 — Operating Principle

An interference fit (press fit / shrink fit) transmits loads **purely by friction** at the contact surface — no additional elements needed.

<div class="zwei-spalten">

<div>

**Load transmission:**

- **Axial force** $F_\text{ax}$ via friction on cylindrical contact face
- **Torque** $T$ via friction on cylindrical contact face
- Both simultaneously possible

**Fit types (DIN ISO 286):**

| Type | Assembly |
|------|----------|
| Press fit | longitudinal pressing |
| Shrink fit | heating hub (or cooling shaft) |
| Expansion fit | hydraulic pressure |

</div>

<div>

**Key advantage over snap ring:**

The interference fit carries **both** axial and radial (torque) loads in a single joint — no groove stress concentration in the shaft.

<div class="hinweis">
The snap ring retains the bearing axially; the interference fit can replace snap ring **and** key in one — if designed correctly.
</div>

</div>
</div>

---

## 13 — Geometry and Interference

<div class="zwei-spalten">

<div>

**Nominal dimensions:**

| Symbol | Meaning |
|--------|---------|
| $d_F$ | nominal fit diameter |
| $l_F$ | fit length (overlap) |
| $D_a$ | hub outer diameter |
| $Z$ | interference (Übermaß) |

**Interference:**

$$Z = d_\text{shaft} - d_\text{hub,bore} > 0$$

**Effective interference** (after assembly, accounting for surface flattening):

$$Z_\text{eff} = Z - 1.6\,(R_{z,\text{shaft}} + R_{z,\text{hub}})$$

</div>

<div>

**Fit selection (DIN ISO 286):**

| Fit | Clearance/Interference |
|-----|----------------------|
| H7/p6 | light press fit |
| H7/r6 | medium press fit |
| H7/s6 | heavy press fit |
| H7/u6 | shrink fit |

<div class="hinweis">
$R_z$ = mean roughness depth. Surface finish correction is mandatory — smooth surfaces lose less interference.
</div>

</div>
</div>

---

## 14 — Contact Pressure (Lamé)

The interference generates a **radial contact pressure** $p_F$ at the fit surface.

For a **solid shaft** ($d_i = 0$) and thick-walled hub, from Lamé's equations:

<div class="eq">

$$p_F = \frac{Z_\text{eff}}{d_F} \cdot \frac{E_\text{hub} \cdot E_\text{shaft}}{E_\text{hub} \cdot Q_\text{shaft} + E_\text{shaft} \cdot Q_\text{hub}}$$

</div>

where the geometry factors are:

$$Q_\text{hub} = \frac{D_a^2 + d_F^2}{D_a^2 - d_F^2} + \nu_\text{hub}$$

$$Q_\text{shaft} = 1 - \nu_\text{shaft} \quad \text{(solid shaft)}$$

<div class="hinweis">
For same material (both steel, $E = 210\;\text{GPa}$, $\nu = 0.3$): formula simplifies significantly — see next slide.
</div>

---

## 15 — Contact Pressure: Same Material

For **shaft and hub both steel** ($E$, $\nu$ identical):

<div class="eq">

$$p_F = \frac{Z_\text{eff} \cdot E}{2 d_F} \cdot \frac{D_a^2 - d_F^2}{D_a^2}$$

</div>

This can be written compactly using the diameter ratio $\kappa = d_F / D_a$:

<div class="eq">

$$p_F = \frac{Z_\text{eff} \cdot E}{2 d_F} \cdot \left(1 - \kappa^2\right)$$

</div>

**Interpretation:**
- Larger interference $Z_\text{eff}$ → higher $p_F$
- Thinner hub wall (larger $\kappa$) → lower $p_F$
- Longer fit $l_F$ does **not** change $p_F$ — but increases load capacity

---

## 16 — Transmissible Axial Force and Torque

The friction force on the cylindrical contact area $A_F = \pi \, d_F \, l_F$ is:

$$F_\text{friction} = \mu \cdot p_F \cdot A_F = \mu \cdot p_F \cdot \pi \, d_F \, l_F$$

**Transmissible axial force:**

<div class="eq">

$$F_\text{ax, perm} = \mu \cdot p_F \cdot \pi \cdot d_F \cdot l_F$$

</div>

**Transmissible torque:**

<div class="eq">

$$T_\text{perm} = \mu \cdot p_F \cdot \pi \cdot d_F \cdot l_F \cdot \frac{d_F}{2} = F_\text{friction} \cdot \frac{d_F}{2}$$

</div>

Friction coefficient $\mu$ (steel on steel):

| Assembly method | $\mu$ |
|---|---|
| Longitudinal pressing (dry) | 0.10 – 0.12 |
| Shrink fit (dry) | 0.12 – 0.15 |
| With oil (pressing) | 0.05 – 0.08 |

---

## 17 — Combined Loading

When **both** $F_\text{ax}$ and $T$ act simultaneously, the friction capacity is shared.

The resultant friction force must not exceed the total available friction:

<div class="eq">

$$\sqrt{F_\text{ax}^2 + \left(\frac{2T}{d_F}\right)^2} \leq \frac{F_\text{friction}}{S}$$

</div>

where $S \geq 1.5 \ldots 2.0$ is the **slip safety factor**.

<div class="aufgabe">

**Design check (combined loading):**

$$S = \frac{\mu \cdot p_F \cdot \pi \cdot d_F \cdot l_F}{\sqrt{F_\text{ax}^2 + (2T/d_F)^2}} \geq S_\text{min}$$

</div>

<div class="hinweis">
For purely axial or purely torsional loading, use the individual formulas. For combined loads, always use the resultant form above.
</div>

---

## 18 — Stress State in Shaft and Hub

The contact pressure $p_F$ creates biaxial stress states in both parts.

<div class="zwei-spalten">

<div>

**Solid shaft** — compression at surface:

$$\sigma_{r,\text{shaft}} = -p_F$$

$$\sigma_{\varphi,\text{shaft}} = -p_F$$

(hydrostatic compression — favourable for fatigue)

Von Mises in shaft:

$$\sigma_{v,\text{shaft}} = p_F$$

</div>

<div>

**Hub (thick-walled cylinder)** — critical at inner surface:

$$\sigma_{r,\text{hub}} = -p_F$$

$$\sigma_{\varphi,\text{hub}} = p_F \cdot \frac{D_a^2 + d_F^2}{D_a^2 - d_F^2}$$

Von Mises in hub (inner surface):

$$\sigma_{v,\text{hub}} = \sqrt{\sigma_{\varphi}^2 + \sigma_{r}^2 - \sigma_{\varphi}\sigma_{r}}$$

</div>
</div>

<div class="hinweis">
The hub inner surface is typically the critical location — hoop stress $\sigma_\varphi$ is always tensile and can cause splitting.
</div>

---

## 19 — Safety Against Yielding

**Shaft** (hydrostatic state — rarely critical):

$$S_{y,\text{shaft}} = \frac{R_{p0.2}}{\sigma_{v,\text{shaft}}} = \frac{R_{p0.2}}{p_F} \geq 1.5$$

**Hub** (hoop stress governs — always check!):

$$\sigma_{v,\text{hub}} = p_F \cdot \sqrt{3} \cdot \frac{D_a^2}{D_a^2 - d_F^2} \quad \text{(simplified, same material)}$$

<div class="eq">

$$S_{y,\text{hub}} = \frac{R_{p0.2}}{\sigma_{v,\text{hub}}} \geq 1.5$$

</div>

**Maximum permissible contact pressure** (hub must not yield):

$$p_{F,\text{max}} = \frac{R_{p0.2}}{\sqrt{3}} \cdot \frac{D_a^2 - d_F^2}{D_a^2}$$

<div class="loesung">
This defines the **upper limit** of interference $Z_\text{max}$ — the fit must stay between $Z_\text{min}$ (slip safety) and $Z_\text{max}$ (yield limit).
</div>

---

## 20 — Interference Limits: Design Window

Every interference fit must satisfy **two simultaneous conditions**:

<div class="zwei-spalten">

<div>

**Lower limit** — no slipping:

$$p_F(Z_\text{min}) \geq \frac{\sqrt{F_\text{ax}^2 + (2T/d_F)^2}}{\mu \cdot \pi \cdot d_F \cdot l_F \cdot S}$$

→ Minimum interference $Z_\text{min}$

**Upper limit** — no yielding:

$$p_F(Z_\text{max}) \leq p_{F,\text{max}} = \frac{R_{p0.2}}{\sqrt{3}} \cdot \frac{D_a^2 - d_F^2}{D_a^2}$$

→ Maximum interference $Z_\text{max}$

</div>

<div>

**Design window:**

$$Z_\text{min} < Z_\text{eff} < Z_\text{max}$$

The selected fit (e.g. H7/r6) must place the effective interference entirely within this window across the full tolerance range.

<div class="aufgabe">
Check **both** the minimum material case ($Z_\text{eff,min}$, slip risk) and the maximum material case ($Z_\text{eff,max}$, yield risk).
</div>

</div>
</div>

---

## 21 — Worked Example: Interference Fit

**Given:** $d_F = 40\;\text{mm}$, $D_a = 80\;\text{mm}$, $l_F = 50\;\text{mm}$

Steel/Steel: $E = 210\;\text{GPa}$, $\nu = 0.3$, $R_{p0.2} = 355\;\text{N/mm}^2$

Selected fit H7/r6: $Z = 0.034\;\text{mm}$, $R_z = 6.3\;\mu\text{m}$ each surface, $\mu = 0.12$ (shrink)

Loads: $F_\text{ax} = 5\;\text{kN}$, $T = 90\;\text{Nm}$ (same as snap ring example)

<div class="loesung">

**Step 1 — Effective interference:**  
$Z_\text{eff} = 0.034 - 1.6 \times (0.0063 + 0.0063) = 0.034 - 0.020 = 0.014\;\text{mm}$

**Step 2 — Contact pressure** ($\kappa = 40/80 = 0.5$):  
$p_F = \dfrac{0.014 \times 210\,000}{2 \times 40} \cdot (1 - 0.25) = 27.6\;\text{N/mm}^2$

</div>

---

## 21 — Worked Example (cont.)

<div class="loesung">

**Step 3 — Available friction force:**  
$F_\text{friction} = 0.12 \times 27.6 \times \pi \times 40 \times 50 = 20\,800\;\text{N} = 20.8\;\text{kN}$

**Step 4 — Combined load resultant:**  
$F_\text{res} = \sqrt{5000^2 + (2 \times 90\,000/40)^2} = \sqrt{5000^2 + 4500^2} = 6726\;\text{N}$

**Step 5 — Slip safety:**  
$S = 20\,800 / 6\,726 = \mathbf{3.09} \geq 1.5$ ✓

**Step 6 — Hub yield check:**  
$\sigma_{v,\text{hub}} = 27.6 \times \sqrt{3} \times 80^2/(80^2 - 40^2) = 27.6 \times 1.732 \times 1.333 = 63.8\;\text{N/mm}^2$  
$S_{y,\text{hub}} = 355 / 63.8 = \mathbf{5.6} \geq 1.5$ ✓

</div>

<div class="hinweis">
Compare with snap ring example: no groove → no $K_t$ penalty. The fit zone on the shaft has a **favourable** compressive stress state.
</div>

---

## 22 — Snap Ring vs. Interference Fit

| Criterion | Snap ring | Interference fit |
|---|---|---|
| Axial retention | ✓ (direct) | ✓ (friction) |
| Torque transmission | ✗ (needs key) | ✓ (friction) |
| Shaft weakening | groove notch ($K_t > 1.8$) | none (compression) |
| Disassembly | easy, non-destructive | difficult (press-out / heat) |
| Load capacity | limited by groove area | scales with $l_F$ and $Z$ |
| Cost / complexity | very low | machining tolerance critical |
| Typical application | light axial retention | heavy-duty hubs, gears, bearings |

<div class="loesung">
**Combined use:** In practice, a snap ring often acts as a **secondary** axial stop (safety against loss), while the interference fit carries the primary load — the two elements complement each other.
</div>

---

## 23 — Summary: Interference Fit Procedure

```
1.  Define loads: F_ax, T  (combined resultant F_res)
2.  Choose fit diameter d_F, hub outer D_a, fit length l_F
3.  Select fit class (DIN ISO 286) → nominal interference Z
4.  Compute Z_eff = Z − 1.6·(Rz_shaft + Rz_hub)
5.  Compute contact pressure p_F  (Lamé, same or mixed material)
6.  Check slip safety:
      S = μ·p_F·π·d_F·l_F / F_res ≥ 1.5
7.  Check hub yield:
      σ_v,hub ≤ R_p0.2 / 1.5
8.  Check shaft yield (usually uncritical for solid shaft):
      p_F ≤ R_p0.2 / 1.5
9.  Verify design window: Z_min < Z_eff < Z_max
      across full tolerance range of selected fit
10. If slip safety insufficient → increase l_F or select tighter fit
    If hub yields → increase D_a or use lower-strength fit class
```

---

## References & Standards

- **DIN ISO 286-1/2** — Tolerances and fits system
- **DIN 471** — Retaining rings for shafts
- **DIN 743** — Shaft and axle calculation
- **DIN 7190-1** — Interference fits — calculation and design
- Niemann, Winter, Höhn: *Maschinenelemente*, Vol. 1, Springer
- Shigley's *Mechanical Engineering Design*, McGraw-Hill
- Lüpfert: *Berechnung von Pressverbänden*, Vieweg

<div class="hinweis">
DIN 7190-1 is the primary standard for interference fit calculation — it covers Lamé equations, assembly forces, and fit selection in full detail.
</div>