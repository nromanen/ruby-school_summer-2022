
def n_to_pow(int_number)
  arr = []
  (0..int_number).each { |n| arr[n] = 2**n }
  arr
end
n = gets.to_i
puts n_to_pow(n)