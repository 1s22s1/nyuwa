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
    an =  parseints()

    dict = Dict()

    for a ∈ an
        dict[a%200] = get(dict, a%200, 0) + 1
    end

    outcome = 0

    for (_, v) ∈ dict
        if v > 1
            outcome += (v * (v-1)) ÷ 2
        end
    end

    println(outcome)
end

solve()
