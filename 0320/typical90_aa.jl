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

    set = Set([])

    for i ∈ 1:n
        s = parsestring()

        if s ∉ set
            println(i)

            push!(set, s)
        end
    end
end

solve()
