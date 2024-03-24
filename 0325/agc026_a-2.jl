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

    outcome = 0

    i = 1
    while i ≤ n
        j = i

        while j ≤ n && an[i] == an[j]
            j += 1
        end

        outcome += (j-i) ÷ 2

        i = j
    end

    println(outcome)
end

solve()
