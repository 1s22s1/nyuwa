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
        j = i

        while j ≤ length(s) && s[i] == s[j]
            j += 1
        end

        push!(arr, (s[i], j-i))

        i = j
    end

    outcome = 0

    # For TLE
    for i ∈ eachindex(arr)
        outcome += sum(0:arr[i][2])
    end

    for i ∈ 1:length(arr)-1
        if arr[i][1] == '<' && arr[i+1][1] == '>'
            outcome -= min(arr[i][2], arr[i+1][2])
        end
    end

    # for i ∈ eachindex(arr)
    #     outcome += sum(0:arr[i][2])

    #     if i ≠ length(arr)
    #         if arr[i][1] == '<' && arr[i+1][1] == '>'
    #             outcome -= min(arr[i][2], arr[i+1][2])
    #         end
    #     end
    # end

    println(outcome)
end

solve()
