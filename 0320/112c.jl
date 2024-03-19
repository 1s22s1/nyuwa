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
    xyhn = [parseints() for _ ∈ 1:n]

    for x ∈ 0:100, y ∈ 0:100
        condition = true

        for xyh ∈ xyhn
            if xyh[2] ≠ 1
                condition = false
            end
        end

        if condition
            println("...")

            exit()
        end
    end
end

solve()
