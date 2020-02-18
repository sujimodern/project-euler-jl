function collatz(n, count=1)
  if n == 1
    return count
  end
  if iseven(n)
    n = Int(n / 2)
  else
    n = 3n + 1
  end
  count += 1
  collatz(n, count)
end

maxc = 0
maxnum = 0
for i = 1:1000_000
  global maxc, maxnum
  newc = collatz(i)
  if newc > maxc
    maxc = newc
    maxnum = i
  end
end
println(maxnum)
