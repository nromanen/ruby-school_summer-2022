def number(lines)
  (0...lines.length).map do |value|
    "#{value + 1}: #{lines[value]}"
  end
end
