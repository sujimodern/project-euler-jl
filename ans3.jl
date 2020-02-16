subject = 600851475143
upperlimit = Int(floor(sqrt(subject)))
candidates = []
primenumbers = []

for i = 3:upperlimit
  if subject % i == 0
    push!(candidates, i)
  end
end

for candidate in candidates
  isprime = true
  for i = 3:Int(floor(sqrt(candidate)))
    if candidate % i == 0
      isprime = false
      break
    end
  end
  if isprime
    push!(primenumbers, candidate)
  end
end
println(maximum(primenumbers))
