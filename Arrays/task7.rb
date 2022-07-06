#Arrays: Task 7

def length_and_two_values(repeat, var1, var2)
  arr = []
  for i in 1..repeat
  i%2 == 0 ? arr.push(var1) : arr.push(var2)
  end
  arr
end

print length_and_two_values(5, true, false)

