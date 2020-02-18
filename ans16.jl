p = BigInt(2) ^ 1000
s = sum(map(x -> parse(Int, x), split(string(p), "")))
println(s)
