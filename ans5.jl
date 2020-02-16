a = 1
for b = 2:20
  global a
  a = Int(a*b / gcd(a, b))
end
println(a)
