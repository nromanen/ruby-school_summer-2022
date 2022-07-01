def get_squared_or_rooted(num)
  root = Math.sqrt(num)
  (root % 1).zero? ? root.floor : num**2
end

def square_or_square_root(arr)
  arr.map{ |elem| get_squared_or_rooted(elem) }
end

p square_or_square_root([4, 3, 9, 7, 2, 1]) # expected [2, 9, 3, 49, 4, 1]
p square_or_square_root([100, 101, 5, 5, 1, 1]) # expected [10, 10201, 25, 25, 1, 1]
p square_or_square_root([1, 2, 3, 4, 5, 6]) # expected [1, 4, 9, 2, 25, 36]



