def number lines
    if lines.size < 1
        return lines
    end

    result = []
    (1..lines.length).each do |i|
        result.append("#{i}: #{lines[i-1]}")
    end
    result
end