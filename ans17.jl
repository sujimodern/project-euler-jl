sp = " "
num1 = split("one two three four five six seven eight nine", sp)
num2 = split("eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen", sp)
num3 = split("ten twenty thirty forty fifty sixty seventy eighty ninety", sp)
num4 = split("hundred thousand", sp)
conj = "and"

function n2w(i)
  words = []
  if i == 1000
    push!(words, num1[1], num4[2])
  else
    if i >= 100
      push!(words, num1[Int(floor(i/100))], num4[1])
      if i % 100 != 0
        push!(words, conj)
      end
    end
    if i % 100 != 0
      if 11 <= i%100 <= 19
        push!(words, num2[Int(floor(i%100%10))])
      else 
        if i % 100 >= 10
          push!(words, num3[Int(floor(i%100/10))])
        end
        if i % 10 != 0
          push!(words, num1[Int(floor(i%10))])
        end 
      end
    end
  end
  return words
end

total = 0
for i = 1:1000
  global total += sum(map(x -> length(x), n2w(i)))
end
println(total)
