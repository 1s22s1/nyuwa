an = [1, 1, 2, 3, 5, 8, 13]

println((sum(an)^2 - sum(map(x -> x ^2, an))) ÷ 2)
