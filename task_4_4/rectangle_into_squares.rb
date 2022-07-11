def sqInRect(length, width)
    myArr = Array.new
    if length != width
        while length > 0 && width > 0
            if length <= width
                myArr.push(length)
                width -= length
            else
                myArr.push(width)
                length -= width
            end
          end
          return myArr
    else
        nil
    end
end


p sqInRect(5,5)
p sqInRect(5,3)
p sqInRect(3,3)
p sqInRect(4,5)