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

    arr = []

    i = 1
    while i ≤ length(s)
        j = i + 1

        while j ≤ length(s) && islowercase(s[j])
            j += 1
        end

        push!(arr, s[i:j])

        i = j + 1
    end

    println(sort(arr, by=lowercase) |> join)
end

solve()
