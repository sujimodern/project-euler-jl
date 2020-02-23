import Dates

s = Dates.Date(1901, 1, 1)
c = s
e = Dates.Date(2000, 12, 31)
d = Dates.Day(1)

counter = 0
while c != e
  global c, counter
  if Dates.day(c) == 1 && Dates.dayofweek(c) == 7
    counter += 1
  end
  c += d
end
println(counter)
