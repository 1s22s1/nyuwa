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

    s = split("wbwbwwbwbwbw"^20, "")

    l, r = 1, 1

    current_w, current_b = 0, 0

    while r ≤ length(s)
        while current_w ≤ w && current_b ≤ b && r ≤ length(s)
            if s[r] == "w"
                current_w += 1
            else
                current_b += 1
            end

            r += 1

            if current_w == w && current_b == b
                println("Yes")

                exit()
            end
        end

        l
    end

    println("No")
end

solve()
