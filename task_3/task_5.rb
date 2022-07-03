def number(lines)
  new_lines = []
  (0...lines.length).each do |i|
    new_lines.push "#{i + 1}: #{lines[i]}"
  end
  new_lines
end
