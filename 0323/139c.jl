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

    outcome = -1

    i = 1
    while i ≤ n
        j = i

        while j < n && hn[j] ≥ hn[j+1]
            j += 1
        end

        @show i, j
        outcome = max(outcome, j-i)
        i = j+1
    end

    println(outcome)
end

solve()
