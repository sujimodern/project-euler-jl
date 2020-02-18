primes = [2]

function updateprimes(n)
  global primes
  isprime = true
  for p in primes
    if n % p == 0
      isprime = false
      break
    end
  end
  if isprime
    push!(primes, n)
  end
end

function primefactorize(n)
  global primes
  pf = repeat([0], n)
  for p in primes
    m = n
    while m % p == 0
      pf[p] += 1
      m /= p
    end
  end
  return pf
end

n, m = 2, 3
pfn = primefactorize(n)
dv = 2
while dv <= 500
 global n, m, pfn, pfm, dv 
 updateprimes(m)
 pfm = primefactorize(m)
 if m % 2 == 0
  pfm[2] -= 1
 end
 push!(pfn, 0)
 dv = prod(map(x -> x + 1, filter(x -> x > 0, (pfn + pfm))))
 n = m
 pfn = pfm
 m += 1
end
t = Int((n-1) * n / 2)
println(t)
