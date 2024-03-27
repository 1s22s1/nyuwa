function parseint()
    return readline() |> x -> parse(Int, x)
end
function parsestring()
    return readline()
end

function parseints()
    return readline() |> split |> x -> parse.(Int, x)
end

function parsestrings()
    return readline() |> split
end

function solve()
    s = parsestring()
    n = parseint()

    vector = []

    i = 1
    while i ≤ length(s)
        j = i

        while j ≤ length(s) && s[i] == s[j]
            j += 1
        end

        push!(vector, (s[i], j-i))

        i = j
    end

    outcome = 0

    if vector[begin][1] == vector[end][1]
        outcome += (vector[begin][2] + vector[end][2]) ÷ 2
        outcome *= (n-1)
        outcome += vector[begin][2] ÷ 2
        outcome += vector[end][2] ÷ 2

        other_outcome = 0
        for i ∈ 2:length(vector)-1
            other_outcome += vector[i][2] ÷ 2
        end

        outcome += (other_outcome * n)
    else
        for i ∈ eachindex(vector)
            outcome += vector[i][2] ÷ 2
        end

        outcome *= n
    end

    println(outcome)
end

solve()
