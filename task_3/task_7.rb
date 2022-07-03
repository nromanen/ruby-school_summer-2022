def alternate(number, first, second)
  (0...number).map do |i|
    i.even? ? first : second
  end
end
