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

        while j < n && an[j] == an[j+1]
            j += 1
        end

        outcome += (j-i+1) ÷ 2

        i = j + 1
    end

    println(outcome)
end

solve()
