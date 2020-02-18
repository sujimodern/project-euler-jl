x = 2_000_000
ba = BitArray(repeat([1], x))
ba[1] = 0

for i = 4:2:x
  ba[i] = 0
end

for i = 3:2:x
  for j = 2:Int(floor(x/i))
    ba[i*j] = 0
  end
end

t = 0
for i = 2:x
  global t
  if ba[i]
    t += i 
  end
end

println(t)
