def sq_in_rect(length, width)
    result = []
    if length == width
        nil
    else
        until (length * width).zero?
        length, width = [length, width].minmax
        result.push(length)
        width -= length
        end
        result
    end
end