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

    dict = Dict()

    for i ∈ 1:n
        a = parseint()

        dict[a] = get(dict, a, 0) + 1
    end

    println(filter(kv -> kv[2] % 2 == 1, dict) |> length)
end

solve()
