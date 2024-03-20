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

    for i ∈ 0:k-1

        if (k - i)*2 % k == 0
            # outcome += dict[i] * dict[(k-i)%k]^2

            # For RE
            outcome += get(dict, i, 0) * get(dict, (k-i)%k, 0)^2
        end
    end

    println(outcome)
end

solve()
