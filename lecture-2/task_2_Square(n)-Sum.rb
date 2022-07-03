
def square_sum(numbers)
  s = 0
  numbers.each do |num|
    s = s + num.pow(2)
  end
  s
end

 puts square_sum([1, 2])
 puts square_sum([0, 3, 4, 5])
 puts square_sum([])
 puts square_sum([-1, -2])
 puts square_sum([-1, 0, 1])