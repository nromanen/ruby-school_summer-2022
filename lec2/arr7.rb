def fill_by_length (n, f, s)
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

fill_by_length(5, true, false)
fill_by_length(10, "blue", "red")
fill_by_length(0, "sds", "sdsww")
