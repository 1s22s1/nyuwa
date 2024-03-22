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

    an = parseints()
    bn = parseints()
    cn = parseints()

    adict = Dict()
    bdict = Dict()
    cdict = Dict()

    for a ∈ an
        adict[a%46] = get(adict, a%46, 0) + 1
    end

    for b ∈ bn
        bdict[b%46] = get(bdict, b%46, 0) + 1
    end

    for c ∈ cn
        cdict[c%46] = get(cdict, c%46, 0) + 1
    end

    outcome = 0

    for (ak, av) ∈ adict, (bk, bv) ∈ bdict, (ck, cv) ∈ cdict
        if (ak+bk+ck) % 46 == 0
            outcome += av*bv*cv
        end
    end

    println(outcome)
end

solve()
