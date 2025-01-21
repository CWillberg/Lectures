---
marp: true

theme: default
header: ''
footer: ''
backgroundImage: url('../assets/styles/background.png')
title: Leichtbau
author: Christian Willberg
---

<style>
footer {
    font-size: 14px; /* Change footer font size */
    color: #888; /* Change footer color */
    text-align: right; /* Change footer alignment */
}
</style>


## Leichtbau
Prof. Dr.-Ing. Christian Willberg<a href="https://orcid.org/0000-0003-2433-9183"><img src="../assets/styles/ORCIDiD_iconvector.png" alt="ORCID symbol" style="height:15px;width:auto;vertical-align: top;background-color:transparent;"></a>
Magdeburg-Stendal University of Applied Sciences

![bg right](https://upload.wikimedia.org/wikipedia/commons/a/a2/Bochumer_Verein-23-50078.jpg)

Contact: christian.willberg@h2.de



---

$\rightarrow : F_1 \cos\alpha + F_2 + F_3 \cos\beta=0$

$\rightarrow : F_1 \sin\alpha - F_e - F_3 \sin\beta=0$

$\sigma_i = \frac{F_i}{A_i}=E_i\varepsilon = E_i\frac{\delta u_i}{l_i}$
$F_i = E_iA_i\frac{\delta u_i}{l_i}$

Energie

$W_i = E_iA_i\frac{\delta u_i}{l_i} \delta u_i$


$F_e \delta u_y = F_1 \delta u_1 + F_2 \delta u_2 +  F_3 \delta u_3$
$\delta u_y = \sin \alpha \delta u_1 = \sin \beta \delta u_3$

$F_e \delta u_y = F_1 \frac{\delta u_y}{\sin \alpha} + F_2 \delta u_2 +  F_3 \frac{\delta u_y}{\sin \beta}$

---

$W_x$

$E_2A_2\frac{\delta u_x}{l_2} \delta u_x = E_1A_1\frac{\delta u_1}{l_1} \cos \alpha \delta u_1 + E_3A_3\frac{\delta u_3}{l_3} \cos \beta \delta u_3$

$E_2A_2\frac{\delta u_x}{l_2} \delta u_x = E_1A_1\frac{1}{l_1} \cos \alpha  \frac{\delta u_y}{\sin \alpha^2} + E_3A_3\frac{1}{l_3} \cos \beta  \frac{\delta u_y}{\sin \beta^2}$

$\delta u_x^2= l_2\frac{E_1A_1\frac{\cos \alpha}{l_1 \sin \alpha^2}  + E_3A_3\frac{\cos \beta }{l_3 \sin \beta^2}}{E_2A_2} \delta u_y^2$

$F_e \delta u_y = \left(\frac{E_1A_1}{l_1\sin \alpha^2}+\frac{E_3A_3}{l_3\cos\beta^2} \right) \delta u_y^2 + \frac{E_2A_2}{l_2} l_2\frac{E_1A_1\frac{\cos \alpha}{l_1 \sin \alpha^2}  + E_3A_3\frac{\cos \beta }{l_3 \sin \beta^2}}{E_2A_2} \delta u_y^2$

nach $\delta u_y$ auflösen und dann den Rest bestimmen
