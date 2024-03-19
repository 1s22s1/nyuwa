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
    n, k = parseints()

    dict = Dict()

    for i ∈ 1:n
        dict[i%k] = get(dict, i%k, 0) + 1
    end

    outcome = 0

    for i ∈ 1:k
        if ((k-i) + (k-i)) % k == 0
            # outcome += dict[i%k]*dict[k-i]*dict[k-i]

            # For RE
            outcome += get(dict, i%k, 0)*get(dict, k-i, 0)^2
        end
    end

    println(outcome)
end

solve()
