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

        # Increment
        while j ≤ n-1 && an[j] ≥ an[j+1]
            j += 1
        end

        # Decrement
        while k ≤ n-1 && an[k] ≤ an[k+1]
            k += 1
        end

        outcome += 1

        i = max(j, k) + 1
    end

    println(outcome)
end

solve()
