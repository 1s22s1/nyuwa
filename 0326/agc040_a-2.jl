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

    vector = zeros(length(s)+1)

    for i ∈ eachindex(s)
        if s[i] == '<'
        end
    end
end

solve()
