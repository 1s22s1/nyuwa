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
    n = parseint()
    an = parseints()

    dict = Dict()

    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    outcome = 0

    for (k, v) ∈ dict
        k > v ? outcome += v : outcome += (v-k)
    end

    println(outcome)
end

solve()
