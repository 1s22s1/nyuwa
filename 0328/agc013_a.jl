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
        j, k = i, i

        # Inc
        while j < n && an[j+1] ≥ an[j]
            j += 1
        end

        # Dec
        while k < n && an[k+1] ≤ an[k]
            k += 1
        end

        outcome += 1
        i = max(j, k) + 1
    end

    println(outcome)
end

solve()
