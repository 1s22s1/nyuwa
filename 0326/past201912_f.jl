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

    vector = []

    i = 1
    while i ≤ length(s)
        j = i + 1

        while j ≤ length(s) && islowercase(s[j])
            j += 1
        end

        push!(vector, s[i:j])

        i = j + 1
    end

    println(sort(vector, by=lowercase) |> join)
end

solve()
