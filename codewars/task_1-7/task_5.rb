def number lines
    return lines if lines.size < 1
    (1..lines.length).map {|i| "#{i}: #{lines[i-1]}"} 
end