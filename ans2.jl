function fib(x, y)
  return y, x+y
end
a, b, s = 1, 1, 0
while a+b < 4000_000
  global a, b, s
  a, b = fib(a, b)
  if iseven(b)
    s += b
  end
end
println(s)
