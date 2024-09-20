
# Variablen
a = 1
b = 2

c = a + b

d = "hall"

e = "o"

println(d * e)

# Vectoren

vec_1 = zeros(3)

vec_2 = zeros(3)

vec_1 + vec_2

vec_1 .+ c

## Matrizen

mat_1 = zeros(3, 3)

println(mat_1)

mat_1[1, 1] = 1
mat_1[1, 2] = 1
mat_1[1, 3] = 1

println(mat_1)

# Dictionaries

data = Dict("var" => a, "mat" => mat_1)

data["var"]

data["b"] = b

# Schleifen
for i in 1:3
    println(vec_1[i])
end

# Funktionen

function schreibe_zahl(zahl)

    println("Die Zahl ist $zahl")

end

schreibe_zahl(1)

function schreibe_zahl_2(zahl)
    zahl = 50 * zahl
    println("Die Zahl ist $zahl")

end
schreibe_zahl_2(2)

y(zahl) = println("Die Zahl ist $zahl")

