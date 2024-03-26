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

    # inc or dec or both
    mode = "both"

    outcome = 0

    i = 1
    while i ≤ n
        j = i

        while j < n
            if mode == "both"
                j += 1
            elseif mode == "inc"
            elseif mode == "dec"
            end
        end

        outcome += 1
        i = j + 1
    end

    println(outcome)
end

solve()
