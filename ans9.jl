for a = 1:1000
  for b = (a+1):1000
    c = sqrt(a^2 + b^2)
    if c == floor(c) && a + b + c == 1000
      c = Int(floor(c))
      println(a * b * c)
    end
  end
end
