def min_cost_to_good_string(N, S, costs):
    # Check if S is already a good string
    good_string = False
    for i in range(N - 1):
        if S[i] == S[i + 1]:
            good_string = True
            break

    if good_string:
        return 0

    # Find the minimum cost to make S a good string
    min_cost = float('inf')
    for i in range(N - 1):
        if S[i] != S[i + 1]:
            min_cost = min(min_cost, costs[i])

    return min_cost

# Input
N = int(input())
S = input()
costs = list(map(int, input().split()))

# Output
print(min_cost_to_good_string(N, S, costs))
