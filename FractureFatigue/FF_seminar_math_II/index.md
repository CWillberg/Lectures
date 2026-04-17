---
marp: true
header: 'Fracture & Fatigue - Mathematical Basics II'
theme: h2
paginate: true
math: katex
---
<!-- _class: lead -->
# Mathematical Basics II
## Vectors and Matrices
Prof. Dr.-Ing. Christian Willberg
Hochschule Magdeburg-Stendal

<div style="position: absolute; top: 200px; left: 850px;"> 
<img src="https://quickchart.io/qr?text=https://cwillberg.github.io/Lectures/FractureFatigue/FF_seminar_math_II/&light=0000&size=300&centerImageUrl=https://raw.githubusercontent.com/CWillberg/Lectures/main/assets/QR/h2.png"
     style="height:380px;width:auto;vertical-align:top;background-color:transparent;">
</div>


---
# Overview Seminar II

- Matrices - definition and notation
- Matrix transpose
- Matrix-vector multiplication
- Matrix-matrix multiplication
- Determinants

---

# What is a Matrix?

A matrix is a rectangular array of numbers:

$$\mathbf{A} = \begin{bmatrix} 
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33}
\end{bmatrix}$$

**Dimensions:** $m \times n$ (rows × columns)
- $m$ = number of rows
- $n$ = number of columns

**Example:** $3 \times 3$ matrix (square matrix)

---
# Special Matrices

**Identity matrix** $\mathbf{I}$ (diagonal of ones):
$$\mathbf{I} = \begin{bmatrix} 
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1
\end{bmatrix}$$

**Property:** $\mathbf{A}\mathbf{I} = \mathbf{I}\mathbf{A} = \mathbf{A}$

**Zero matrix** $\mathbf{0}$ (all zeros):
$$\mathbf{0} = \begin{bmatrix} 
0 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & 0
\end{bmatrix}$$

---

# Matrix Transpose - Derivation

For a matrix, transpose **swaps rows and columns**:

$$\mathbf{A} = \begin{bmatrix} 
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23}
\end{bmatrix}_{2 \times 3}$$

$$\mathbf{A}^T = \begin{bmatrix} 
a_{11} & a_{21} \\
a_{12} & a_{22} \\
a_{13} & a_{23}
\end{bmatrix}_{3 \times 2}$$

**Rule:** $(\mathbf{A}^T)_{ij} = \mathbf{A}_{ji}$

**Properties:** $(\mathbf{A}^T)^T = \mathbf{A}$ and $(\mathbf{AB})^T = \mathbf{B}^T\mathbf{A}^T$

---
# Symmetric Matrices

A matrix is **symmetric** if $\mathbf{A} = \mathbf{A}^T$

$$\mathbf{A} = \begin{bmatrix} 
1 & 2 & 3 \\
2 & 4 & 5 \\
3 & 5 & 6
\end{bmatrix}$$

**Check:** $a_{12} = a_{21} = 2$, $a_{13} = a_{31} = 3$, $a_{23} = a_{32} = 5$ ✓

**Important in mechanics:**
- Stress tensors are symmetric
- Strain tensors are symmetric
- Stiffness matrices are symmetric

---
# Exercise - Transpose

**a)** Calculate the transpose of $\mathbf{A} = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}$

**b)** Is the following matrix symmetric? $\mathbf{B} = \begin{bmatrix} 2 & 5 \\ 5 & 3 \end{bmatrix}$

**c)** Calculate $\vec{a} \vec{b}^T$ where $\vec{a} = \begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}$ and $\vec{b} = \begin{bmatrix} 4 \\ 5 \\ 6 \end{bmatrix}$

---


# How to code in Julia

```julia
using LinearAlgebra
a = [2 1 0; 1 1 3; 3 4 5]

d = transpose(a)
e = a'

symA = 0.5 .* (a' + a)
asymA = 0.5 .* (a' - a)

A = [1 2 3;4 5 6]


```

---

# Matrix-Vector Multiplication - Derivation

**Rule:** Matrix $\mathbf{A}$ $(m \times n)$ times vector $\vec{x}$ $(n \times 1)$ gives vector $\vec{b}$ $(m \times 1)$

$$\mathbf{A}\vec{x} = \vec{b}$$

**Step-by-step:**

$$\begin{bmatrix} 
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23}
\end{bmatrix}
\begin{bmatrix} x_1 \\ x_2 \\ x_3 \end{bmatrix}
= \begin{bmatrix} 
a_{11}x_1 + a_{12}x_2 + a_{13}x_3 \\
a_{21}x_1 + a_{22}x_2 + a_{23}x_3
\end{bmatrix}$$

Each element of $\vec{b}$: $b_i = \sum_{j=1}^{n} a_{ij}x_j$

**Alternative view:** Each row of $\mathbf{A}$ dot product with $\vec{x}$

---
# Matrix-Vector Multiplication - Example

$$\begin{bmatrix} 
2 & 1 & 0 \\
-1 & 3 & 2
\end{bmatrix}
\begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}
= ?$$

**Solution:**
Row 1: $2 \cdot 1 + 1 \cdot 2 + 0 \cdot 3 = 2 + 2 + 0 = 4$
Row 2: $-1 \cdot 1 + 3 \cdot 2 + 2 \cdot 3 = -1 + 6 + 6 = 11$

$$\vec{b} = \begin{bmatrix} 4 \\ 11 \end{bmatrix}$$

---
# Exercise 1.3 - Matrix-Vector Multiplication

Calculate the following matrix-vector products:

**a)** $\begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \begin{bmatrix} 5 \\ 6 \end{bmatrix}$

**b)** $\begin{bmatrix} 2 & -1 & 3 \\ 0 & 4 & 1 \end{bmatrix} \begin{bmatrix} 1 \\ 2 \\ -1 \end{bmatrix}$

**c)** $\begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix} \begin{bmatrix} 5 \\ 7 \\ 9 \end{bmatrix}$ (What is special about this matrix?)

---
# Matrix-Matrix Multiplication - Derivation

**Rule:** Matrix $\mathbf{A}$ $(m \times n)$ times matrix $\mathbf{B}$ $(n \times p)$ gives matrix $\mathbf{C}$ $(m \times p)$

$$\mathbf{C} = \mathbf{A}\mathbf{B}$$

**Element-wise:**
$$c_{ij} = \sum_{k=1}^{n} a_{ik}b_{kj}$$

**Think:** Each element $c_{ij}$ is the dot product of row $i$ of $\mathbf{A}$ and column $j$ of $\mathbf{B}$

**Important:** $\mathbf{AB} \neq \mathbf{BA}$ (matrix multiplication is NOT commutative!)

---
# Matrix-Matrix Multiplication - Example

$$\begin{bmatrix} 
1 & 2 \\
3 & 4
\end{bmatrix}
\begin{bmatrix} 
5 & 6 \\
7 & 8
\end{bmatrix}
= ?$$

**Solution:**
- $c_{11} = 1 \cdot 5 + 2 \cdot 7 = 5 + 14 = 19$
- $c_{12} = 1 \cdot 6 + 2 \cdot 8 = 6 + 16 = 22$
- $c_{21} = 3 \cdot 5 + 4 \cdot 7 = 15 + 28 = 43$
- $c_{22} = 3 \cdot 6 + 4 \cdot 8 = 18 + 32 = 50$

$$\mathbf{C} = \begin{bmatrix} 19 & 22 \\ 43 & 50 \end{bmatrix}$$

---
# Exercise 1.4 - Matrix-Matrix Multiplication

Calculate the following matrix products:

**a)** $\begin{bmatrix} 2 & 1 \\ 0 & 3 \end{bmatrix} \begin{bmatrix} 1 & 4 \\ 2 & 0 \end{bmatrix}$

**b)** $\begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 5 & 6 \\ 7 & 8 \end{bmatrix}$

**c)** $\begin{bmatrix} 1 & 2 & 3 \end{bmatrix} \begin{bmatrix} 1 \\ 0 \\ -1 \end{bmatrix}$ (What is the result dimension?)

---
## Determinant - What and Why?

The determinant is a scalar value that characterizes a square matrix.

**Symbol:** $\det(\mathbf{A})$ or $|\mathbf{A}|$

**Physical interpretation:**
- Scaling factor of volume transformation
- $\det(\mathbf{A}) = 0$ → matrix is singular (not invertible)
- $\det(\mathbf{A}) \neq 0$ → matrix is invertible

**Applications:**
- Solving systems of equations
- Finding eigenvalues
- Checking if a matrix is invertible

---
# Determinant of a $2 \times 2$ Matrix - Derivation

For a $2 \times 2$ matrix:

$$\mathbf{A} = \begin{bmatrix} a & b \\ c & d \end{bmatrix}$$

**Formula:**
$$\det(\mathbf{A}) = ad - bc$$

**Geometric interpretation:** Area of parallelogram spanned by column vectors

**Example:**
$$\det\begin{bmatrix} 3 & 1 \\ 2 & 4 \end{bmatrix} = 3 \cdot 4 - 1 \cdot 2 = 12 - 2 = 10$$

---
# Determinant of a $3 \times 3$ Matrix - Derivation

For a $3 \times 3$ matrix using **Sarrus' rule**:

$$\mathbf{A} = \begin{bmatrix} 
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33}
\end{bmatrix}$$

$$\det(\mathbf{A}) = a_{11}a_{22}a_{33} + a_{12}a_{23}a_{31} + a_{13}a_{21}a_{32}$$
$$- a_{13}a_{22}a_{31} - a_{11}a_{23}a_{32} - a_{12}a_{21}a_{33}$$

**Trick:** Extend matrix by first two columns and multiply diagonals (↘ positive, ↙ negative)

---

# Exercise 1.5 - Determinants

Calculate the determinants:

**a)** $\det\begin{bmatrix} 5 & 3 \\ 2 & 1 \end{bmatrix}$

**b)** $\det\begin{bmatrix} 2 & 0 & 1 \\ 1 & 3 & 0 \\ 0 & 2 & 4 \end{bmatrix}$

**c)** $\det\begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix}$ 


