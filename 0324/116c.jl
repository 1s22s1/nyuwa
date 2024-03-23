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
    hn = parseints()

    outcome = 0

    for i ∈ 1:maximum(hn)

        j = 1
        while j ≤ n
            k = j

            while k ≤ n && i ≤ hn[k]
                k += 1
            end

            if hn[j] ≥ i
                outcome += 1
                j = k
            else
                j = k + 1
            end
        end
    end

    println(outcome)
end

solve()
