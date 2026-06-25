---
marp: true
theme: h2
paginate: true
header: 'Seminar – Fracture & Fatigue'
math: katex
---

<!-- _class: title -->

# Seminar: Fracture & Fatigue
## Calculations & Julia Code Exercises

Prof. Dr.-Ing.  Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../../assets/styles/ORCIDiD_iconvector.png" alt="ORCID Symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences

**Topics:** Wöhler · Miner · Kirsch · Griffith · Paris

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/FractureFatigue/FF_seminar_VIII/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>

---

## Structure of Each Unit

Each topic follows the same pattern:

1. **Key equation(s)** – compact theory recap
2. **Julia code** – working implementation you can run
3. **Exercise** – small numerical problem
4. **Solution** – step-by-step with code output

<div class="hinweis">

All Julia code runs with standard library + `Plots.jl`. Copy each block into a Julia REPL or Pluto notebook.

</div>

---

<!-- _class: section-header -->


## Wöhler Curve & S-N Relationship

---

## Wöhler Curve – Key Equations

The stress amplitude $\sigma_a$ and number of cycles to failure $N_f$ follow a power law (Basquin):

<div class="eq">

$$\sigma_a^k \cdot N_f = C \qquad \Leftrightarrow \qquad \sigma_a = \frac{\sigma_D}{\left(N_f / N_D\right)^{1/k}}$$

</div>

| Parameter | Meaning |
|-----------|---------|
| $k$ | Slope exponent (Wöhler exponent, typically 3–10) |
| $\sigma_D$ | Fatigue limit at $N_D$ cycles |
| $N_D$ | Reference cycle count ($10^6$–$10^7$) |

---

## Julia: Wöhler Curve Plot

```julia
using Plots

# Material: steel, k=5, σ_D=280 MPa at N_D=2e6
k  = 5.0
σD = 280.0   # MPa
ND = 2e6

# S-N relationship: σ_a = σD * (ND/N)^(1/k)
N  = 10 .^ range(4, 8, length=200)
σa = σD .* (ND ./ N) .^ (1/k)

plot(N, σa,
    xscale = :log10,
    xlabel = "Cycles to failure N_f",
    ylabel = "Stress amplitude σ_a [MPa]",
    title  = "Wöhler Curve (S-N diagram)",
    lw = 2, color = :steelblue, label = "S-N curve")

hline!([σD], ls=:dash, color=:red, label="Fatigue limit σ_D")
vline!([ND], ls=:dot,  color=:gray, label="N_D = 2×10⁶")
```

---

## Exercise 1 – Wöhler

<div class="aufgabe">

A steel component has $\sigma_D = 300\,\text{MPa}$ at $N_D = 2\times10^6$ and Wöhler exponent $k = 6$.

**a)** At what stress amplitude $\sigma_a$ does the component fail after exactly $N_f = 50{,}000$ cycles?

**b)** How many cycles can it sustain at $\sigma_a = 400\,\text{MPa}$?

</div>

```julia
# Your calculation here:
k  = 6.0;  σD = 300.0;  ND = 2e6

# a) stress at Nf = 50 000
Nf = 50_000
σa = ???

# b) cycles at σa = 400 MPa
σ_given = 400.0
Nf2 = ???
```

---

## Solution 1 – Wöhler

<div class="loesung">

```julia
k = 6.0;  σD = 300.0;  ND = 2e6

# a) σ_a at N_f = 50 000
Nf  = 50_000
σa  = σD * (ND / Nf)^(1/k)
println("a) σ_a = $(round(σa, digits=1)) MPa")
# → σ_a = 449.4 MPa

# b) N_f at σ_a = 400 MPa
σ_given = 400.0
Nf2 = ND * (σD / σ_given)^k
println("b) N_f = $(round(Nf2/1e6, digits=3)) × 10⁶ cycles")
# → N_f = 0.352 × 10⁶ = 352 000 cycles
```

</div>

---

<!-- _class: section-header -->


## Miner's Rule – Damage Accumulation

---

## Miner's Rule – Key Equation

<div class="eq">

$$D = \sum_{i=1}^{k} \frac{n_i}{N_{f,i}} \leq 1$$

</div>

- $n_i$ — applied cycles at stress level $\sigma_i$
- $N_{f,i}$ — cycles to failure at $\sigma_i$ (from Wöhler curve)
- $D = 1$ → failure predicted

<div class="hinweis">

In practice, failure often occurs at $D \approx 0.3$–$1.5$ (scatter!). Conservative design uses $D_{\text{allow}} < 1$.

</div>

---

## Julia: Miner Damage Calculation

```julia
# Wöhler parameters
k = 5.0;  σD = 280.0;  ND = 2e6
Nf(σ) = ND * (σD / σ)^k   # cycles to failure

# Load spectrum: (stress amplitude [MPa], applied cycles)
spectrum = [(200, 1e5), (250, 5e4), (300, 2e4),
            (350, 5e3), (400, 1e3)]

D = sum(n / Nf(σ) for (σ, n) in spectrum)

println("Damage sum D = $(round(D, digits=4))")
D ≥ 1 ? println("→ FAILURE expected") :
        println("→ Safe (remaining life: $(round((1-D)*100,digits=1))%)")
```

---

## Exercise 2 – Miner's Rule

<div class="aufgabe">

An aluminium component ($\sigma_D = 160\,\text{MPa}$, $N_D = 5\times10^6$, $k = 4$) experiences the following weekly load spectrum:

| $\sigma_a$ [MPa] | $n$ per week |
|:---:|:---:|
| 120 | 10 000 |
| 150 | 2 000 |
| 180 | 500 |
| 200 | 100 |

**a)** Calculate the damage per week.
**b)** After how many weeks does failure occur (D = 1)?

</div>

---

## Solution 2 – Miner's Rule

<div class="loesung">

```julia
k = 4.0;  σD = 160.0;  ND = 5e6
Nf(σ) = ND * (σD / σ)^k

spectrum = [(120, 10_000), (150, 2_000),
            (180, 500),    (200, 100)]

D_week = sum(n / Nf(σ) for (σ, n) in spectrum)
weeks  = 1.0 / D_week

println("D per week = $(round(D_week, digits=5))")
println("Weeks to failure = $(round(weeks, digits=1))")
# → D/week ≈ 0.01012
# → Failure after ≈ 98.8 weeks
```

</div>

---

<!-- _class: section-header -->


## Kirsch – Stress Concentration at a Hole

---

## Kirsch Solution – Key Equations

For an infinite plate with hole (radius $a$) under uniaxial $\sigma$:

<div class="eq">

$$\sigma_\theta(r,\theta) = \frac{\sigma}{2}\!\left[\left(1+\frac{a^2}{r^2}\right) - \left(1+\frac{3a^4}{r^4}\right)\cos 2\theta\right]$$

</div>

At the hole boundary ($r = a$, $\theta = 90°$):

$$\sigma_{\theta,\max} = 3\sigma \quad \Rightarrow \quad K_t = 3$$

---

## Julia: Kirsch Stress Distribution

```julia
using Plots

σ∞ = 100.0;  a = 1.0   # reference values

σ_θ(r, θ) = σ∞/2 * ((1 + a^2/r^2) -
             (1 + 3a^4/r^4) * cos(2θ))

# Along x-axis (θ = 90°, perpendicular to load)
r_vec = range(a, 5a, length=300)
σ_vals = σ_θ.(r_vec, π/2)

plot(r_vec ./ a, σ_vals ./ σ∞,
    xlabel = "r / a",
    ylabel = "σ_θ / σ∞",
    title  = "Kirsch: Hoop stress along θ = 90°",
    lw = 2, color = :steelblue, label = "σ_θ / σ∞")

hline!([3.0], ls=:dash, color=:red, label="Kt = 3 at r = a")
hline!([1.0], ls=:dot,  color=:gray, label="Far field")
```

---

## Exercise 3 – Kirsch

<div class="aufgabe">

A steel plate ($\sigma_y^\text{yield} = 350\,\text{MPa}$) with a hole of radius $a = 8\,\text{mm}$ is loaded with $\sigma = 100\,\text{MPa}$.

**a)** What is $\sigma_{\theta,\max}$ at the hole boundary?

**b)** Compute $\sigma_\theta$ at $r = 1.5a$ and $r = 3a$ along $\theta = 90°$. How quickly does the stress decay?

**c)** Is the material still in the elastic regime?

</div>

---

## Solution 3 – Kirsch

<div class="loesung">

```julia
σ∞ = 100.0;  a = 8e-3   # m
σ_yield = 350.0          # MPa

σ_θ(r, θ) = σ∞/2 * ((1 + a^2/r^2) -
             (1 + 3a^4/r^4) * cos(2θ))

for mult in [1.0, 1.5, 3.0]
    r = mult * a
    σ = σ_θ(r, π/2)
    println("r = $(mult)a → σ_θ = $(round(σ, digits=1)) MPa")
end
# r = 1.0a → σ_θ = 300.0 MPa  (Kt = 3)
# r = 1.5a → σ_θ = 185.2 MPa
# r = 3.0a → σ_θ = 119.1 MPa

println("Elastic? ", 300.0 < 350.0 ? "Yes ✓" : "No – plasticity!")
```

</div>

---

<!-- _class: section-header -->


## Griffith – Energy Release Rate

---

## Griffith – Key Equations

Energy release rate for a central crack of length $2a$:

<div class="eq">

$$G = \frac{\sigma^2 \pi a}{E'}, \qquad E' = \begin{cases} E & \text{plane stress} \\ E/(1-\nu^2) & \text{plane strain}\end{cases}$$

</div>

Fracture criterion: $G \geq G_c$, critical stress:

$$\sigma_c = \sqrt{\frac{G_c E'}{\pi a}}$$

Connection to $K_I$: $\quad G = K_I^2 / E'$, $\quad K_I = \sigma\sqrt{\pi a}$

---

## Julia: Critical Stress vs. Crack Length

```julia
using Plots

# Material: Al alloy, plane stress
E  = 70e3     # MPa
Gc = 20e3     # N/m = mJ/mm² (K_Ic ≈ 37.4 MPa√m)
E_prime = E   # plane stress

a_vec = range(1, 50, length=200)   # crack half-length [mm]

σ_c(a) = sqrt(Gc * E_prime / (π * a))

plot(a_vec, σ_c.(a_vec),
    xlabel = "Crack half-length a [mm]",
    ylabel = "Critical stress σ_c [MPa]",
    title  = "Griffith: Critical stress vs. crack size",
    lw = 2, color = :firebrick, label = "σ_c(a)")

hline!([200], ls=:dash, color=:gray, label="σ_applied = 200 MPa")
```

---

## Exercise 4 – Griffith

<div class="aufgabe">

A glass plate ($E = 70\,\text{GPa}$, $G_c = 10\,\text{J/m}^2$, plane stress) contains a central crack.

**a)** Calculate the critical stress $\sigma_c$ for crack lengths $2a = 1\,\text{mm}$, $5\,\text{mm}$, $20\,\text{mm}$.

**b)** The plate is loaded at $\sigma = 50\,\text{MPa}$. What is the critical crack length $a_c$?

**c)** Compute $K_{Ic}$ from $G_c$.

</div>

```julia
E  = 70e9    # Pa
Gc = 10.0    # J/m²
```

---

## Solution 4 – Griffith

<div class="loesung">

```julia
E = 70e9;  Gc = 10.0   # Pa, J/m²

# a) critical stress for given crack sizes
for two_a in [1e-3, 5e-3, 20e-3]
    a  = two_a / 2
    σc = sqrt(Gc * E / (π * a))
    println("2a=$(Int(two_a*1000))mm → σ_c = $(round(σc/1e6,digits=1)) MPa")
end
# 2a=1mm  → σ_c = 21.1 MPa
# 2a=5mm  → σ_c = 9.4 MPa
# 2a=20mm → σ_c = 4.7 MPa

# b) critical crack length at σ = 50 MPa
σ  = 50e6
ac = Gc * E / (π * σ^2)
println("a_c = $(round(ac*1e3, digits=3)) mm → 2a_c = $(round(2ac*1e3,digits=3)) mm")
# a_c ≈ 0.178 mm → 2a_c ≈ 0.357 mm

# c) K_Ic
KIc = sqrt(Gc * E)
println("K_Ic = $(round(KIc/1e6*sqrt(1),digits=2)) MPa√m")
# K_Ic ≈ 0.84 MPa√m  (glass is brittle!)
```

</div>

---


## Paris Law – Fatigue Crack Growth

---

## Paris Law – Key Equation

<div class="eq">

$$\frac{da}{dN} = C \cdot (\Delta K)^m, \qquad \Delta K = \Delta\sigma \sqrt{\pi a}$$

</div>

Integration from $a_0$ to $a_c$ gives cycles to failure:

$$N_f = \int_{a_0}^{a_c} \frac{da}{C(\Delta\sigma\sqrt{\pi a})^m}$$

For $m \neq 2$, analytical solution:

$$N_f = \frac{2}{C\,(2-m)\,(\Delta\sigma\sqrt{\pi})^m}\left(a_c^{1-m/2} - a_0^{1-m/2}\right)$$

---

## Julia: Paris Law Integration

```julia
using Plots

# Material: steel
C  = 1.5e-11   # m/cycle per (MPa√m)^m
m  = 3.0
Δσ = 150.0     # MPa  (stress range)
a0 = 1e-3      # 1 mm initial crack
ac = 20e-3     # 20 mm critical crack (from Griffith)

ΔK(a)    = Δσ * sqrt(π * a)
da_dN(a) = C * ΔK(a)^m

# Numerical integration (Euler)
a_vec = [a0];  N_vec = [0.0];  da = 1e-5
while a_vec[end] < ac
    dN = da / da_dN(a_vec[end])
    push!(a_vec, a_vec[end] + da)
    push!(N_vec, N_vec[end] + dN)
end

plot(N_vec ./ 1e3, a_vec .* 1e3,
    xlabel="Cycles N [×10³]", ylabel="Crack length a [mm]",
    title="Paris Law: crack growth", lw=2, color=:firebrick)
```

---

## Exercise 5 – Paris Law

<div class="aufgabe">

An aluminium panel ($C = 5\times10^{-12}\,\text{m/cycle}$, $m = 3.8$, $K_{Ic} = 30\,\text{MPa}\sqrt{\text{m}}$) has an initial crack $a_0 = 2\,\text{mm}$ and is cyclically loaded with $\Delta\sigma = 80\,\text{MPa}$.

**a)** What is the critical crack length $a_c$ (use $K_{Ic} = \Delta\sigma\sqrt{\pi a_c}$)?

**b)** Compute $N_f$ by numerical integration.

**c)** What is $da/dN$ at $a_0$ and at $a_c$?

</div>

---

## Solution 5 – Paris Law

<div class="loesung">

```julia
C  = 5e-12;  m = 3.8;  KIc = 30.0   # MPa√m
Δσ = 80.0;   a0 = 2e-3               # m

# a) critical crack length
ac = (KIc / (Δσ * sqrt(π)))^2
println("a_c = $(round(ac*1e3, digits=1)) mm")
# a_c ≈ 44.5 mm

# b) numerical integration
ΔK(a)    = Δσ * sqrt(π * a)
da_dN(a) = C * ΔK(a)^m
a = a0;  N = 0.0;  da = 1e-5
while a < ac
    N += da / da_dN(a);  a += da
end
println("N_f ≈ $(round(N/1e6, digits=3)) × 10⁶ cycles")
# N_f ≈ 0.187 × 10⁶ ≈ 187 000 cycles

# c) growth rate at a0 and ac
println("da/dN at a0 = $(round(da_dN(a0)*1e9,digits=3)) nm/cycle")
println("da/dN at ac = $(round(da_dN(ac)*1e6,digits=3)) µm/cycle")
```

</div>

---

## Summary: Key Formulas

| Topic | Formula | Unit |
|-------|---------|------|
| **Wöhler** | $\sigma_a^k N_f = C$ | MPa, cycles |
| **Miner** | $D = \sum n_i/N_{f,i} \leq 1$ | – |
| **Kirsch** | $\sigma_{\theta,\max} = 3\sigma$ | MPa |
| **Griffith** | $\sigma_c = \sqrt{G_c E' / \pi a}$ | MPa |
| **Paris** | $da/dN = C(\Delta K)^m$ | m/cycle |

<div class="hinweis">

All five topics are connected: Wöhler + Miner describe macro-level fatigue; Griffith sets the critical crack size; Paris tracks growth from $a_0$ to $a_c$.

</div>
