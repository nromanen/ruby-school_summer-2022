def number(lines)
  lines.map.with_index { |elem, index| "#{index + 1}: #{elem}" }
end

p number([]) #expected []
p number(%w[a b c]) #expected ["1: a", "2: b", "3: c"]