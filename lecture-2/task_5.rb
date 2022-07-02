def number lines
  lines.each_index do |i|
    lines[i] = "#{i+1}: #{lines[i]}"
  end
  lines
end

puts number(["a", "b", "c"])