def alternate(n, first, second)
  (Array[first, second] * n).slice(0, n)
end

p alternate(5, true, false) #expect [true, false, true, false, true]
p alternate(20, "blue", "red") #expect ['blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red', 'blue', 'red'])
p alternate(0, "lemons", "apples") #expect []
