def sqinRect(l,w)
  if l == w
    return nil
  end
  squares = []
  while w > 1 || l >= 1
    if l < w
      l,w = w,l
    end
    squares.append(w)
    l -= w
  end
  puts "#{squares}"
end

sqinRect(5,3)
sqinRect(3,5)
sqinRect(5,5)

