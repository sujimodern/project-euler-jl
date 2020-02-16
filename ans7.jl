primenumbers = [2]
num = 3
while true
  global num
  isprime = true
  for p in primenumbers
    if num % p == 0
      isprime = false
      break
    end
  end
  if isprime
    push!(primenumbers, num)
  end
  if length(primenumbers) > 10_000
    break
  end
  num += 2
end
println(maximum(primenumbers))
