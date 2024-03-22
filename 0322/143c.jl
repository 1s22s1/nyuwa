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
    s = parsestring()

    outcome = 0

    i = 1
    while i ≤ n
        j = i

        while j ≤ n && s[i] == s[j]
            j += 1
        end

        i = j
        outcome += 1
    end

    println(outcome)
end

solve()
