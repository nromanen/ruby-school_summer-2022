def alternate (n, f, s)
  arr = Array.new
  i = 0
  while i < n do
    if i % 2 == 0
      arr.push(f)
    else
      arr.push(s)
    end
    i += 1
  end
  print("#{arr}\n")
end

alternate(5, true, false)
alternate(10, "blue", "red")
alternate(0, "sds", "sdsww")