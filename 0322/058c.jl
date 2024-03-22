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

    dicts = []

    for _ ∈ 1:n
        s = parsestring()

        dict = Dict()

        for c ∈ s
            dict[c] = get(dict, c, 0) + 1
        end

        push!(dicts, dict)
    end

    outcome = ""

    for c ∈ ('a':'z')
        count = map(dict -> get(dict, c, 0), dicts) |> minimum

        outcome *= c^count
    end

    println(outcome)
end

solve()
