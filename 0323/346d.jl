function min_cost_to_good_string(N, S, costs)
    # Check if S is already a good string
    good_string = false
    for i in 1:N-1
        if S[i] == S[i + 1]
            good_string = true
            break
        end
    end

    if good_string
        return 0
    end

    # Find the minimum cost to make S a good string
    min_cost = Inf
    for i in 1:N-1
        if S[i] != S[i + 1]
            min_cost = min(min_cost, costs[i])
        end
    end

    return min_cost
end

# Input
N = parse(Int, readline())
S = readline()
costs = parse.(Int, split(readline()))

# Output
println(min_cost_to_good_string(N, S, costs))
