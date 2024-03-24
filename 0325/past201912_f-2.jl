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

    pre_index = 1
    arr = []

    for i ∈ 1:length(s)-1
        if isuppercase(s[i]) && isuppercase(s[i+1])
            @show s[i], s[i+1], isuppercase(s[i]), isuppercase(s[i+1])
            push!(arr, s[pre_index:i])

            pre_index = i+1
        end
    end

    push!(arr, s[pre_index:end])

    @show arr

    # println(sort(arr, by=lowercase) |> join)
end

solve()
