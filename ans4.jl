function ispalindrome(a)
  s = string(a)
  mid = Int(floor(length(s)/ 2))
  r = true
  for j = 1:mid
    if s[j] != s[end-(j-1)]
      r = false
      break
    end
  end
  return r
end

function istwo3digitprod(a)
  r = false
  for i = 100:999
    if a%i == 0 && 100 <= a/i <= 999
      r = true 
      break
    end
  end
  return r
end

for i = 999*999:-1:100*100
  if ispalindrome(i) && istwo3digitprod(i)
    println(i)
    break
  end
end
