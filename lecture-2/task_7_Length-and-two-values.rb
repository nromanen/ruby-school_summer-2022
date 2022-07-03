def alternate(n, first, second)
  arr = []
  (0...n).each do |i|
    arr.append i.even? ? first : second
  end
  arr
end

puts alternate(5, true, false).to_s