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

    dict = Dict()

    for i ∈ 1:n
        s = readline()

        dict[s] = get(dict, s, 0) + 1
    end

    arr = collect(dict)
    most = maximum(map(x -> x[2], arr))
    filtered_arr = filter(x -> x[2] == most, arr) |> sort

    for element ∈ filtered_arr
        println(element[1])
    end
end

solve()
