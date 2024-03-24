str = "aaabbc"

pre_index = 1
outcome = []

for i ∈ 1:length(str)-1
    if str[i] == str[i+1]
        push!(outcome, str[pre_index:i])

        global pre_index = i+1
    end
end

push!(outcome, str[pre_index:end])

@show outcome
