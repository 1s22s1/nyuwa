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
    w, b = parseints()

    s = "wbwbwwbwbwbw"^20

    for i ∈ eachindex(s), j ∈ i:length(s)
        sub_s = s[i:j]

        cur_w, cur_b = 0, 0

        for c ∈ sub_s
            if c == 'w'
                cur_w += 1
            else
                cur_b += 1
            end
        end

        if cur_w == w && cur_b == b
            println("Yes")

            exit()
        end
    end

    println("No")
end

solve()
