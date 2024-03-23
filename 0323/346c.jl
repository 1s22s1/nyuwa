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
    n, k = parseints()
    an = Set(filter(x -> x ≤ k, parseints()))

    outcome = k*(k+1)÷2 - sum(an)

    println(outcome)
end

solve()
