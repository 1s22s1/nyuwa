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

    println(k*(k+1)÷2 - sum(an))
end

solve()
