println("hello world")


a = 3
b = 4

d = a + b

# Vektoroperationen
vec_1 = rand(5)
vec_2 = rand(5)


mean= (vec_1 + vec_2)./2

mean_2 = zeros(5)
summe = 0
summe_2 = 0
for i in 1:5
    mean_2[i] = (vec_1[i] + vec_2[i])/2
    summe = summe + mean_2[i]

    summe_2 += mean_2[i]
end

println("mean $mean and mean2 $mean2")

println("$(sum(mean)), $summe, $summe_2" )