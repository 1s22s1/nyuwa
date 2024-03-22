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

    i = 1

    while i ≤ n
        j = i

        while j ≤ n &&
            j += 1
        end

        i = j
    end
end

solve()
