def merge(row)
    result = []
    result = row.reject(&:zero?)
    result.each_with_index do |num, idx|
        if result[idx] == result[idx+1]
            result[idx] += result[idx]
            result[idx+1] = 0
        end
    end
    result = result.reject(&:zero?)
    (1..row.length - result.length).each {result.append(0)}
    result
end