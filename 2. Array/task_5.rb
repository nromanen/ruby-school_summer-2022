def number (lines)
  lines.each_with_index do |element, key|
    lines[key] = "#{key + 1}: #{element}"
  end

  return lines
end

number(['a', 'b', 'c', 'd'])