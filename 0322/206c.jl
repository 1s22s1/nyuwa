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

    dict = Dict()

    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    arr = dict |> values |> collect

    # For TLE
    # outcome = 0

    # for i ∈ 1:length(arr), j ∈ i+1:length(arr)
    #     outcome += arr[i]*arr[j]
    # end

    # println(outcome)

    println((sum(arr)^2 - sum(map(x -> x ^2, arr))) ÷ 2)
end

solve()
