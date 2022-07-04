def read_console
  puts('Enter non-negative integer: ')
  gets.chomp.to_i
end

def create_array(int)
  result = Array.new(int + 1).map.each_with_index { |_, index| 2**index }
  result.each { |i| print i, ', ' }
end

number = read_console
create_array(number)
