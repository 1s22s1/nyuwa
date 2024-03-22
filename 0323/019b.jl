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

    i = 1
    while i ≤ length(s)
        j = i

        while j ≤ length(s) && s[i] == s[j]
            j += 1
        end

        print("$(s[i])$(j-i)")

        i = j
    end

    println("")
end

solve()
