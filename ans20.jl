a = factorial(big(100))
s = split(string(a), "")
m = map(x -> parse(Int, x), s)
println(sum(m))
