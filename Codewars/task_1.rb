#Powers of 2
#n = 0  ==> [1]        # [2^0]
#n = 1  ==> [1, 2]     # [2^0, 2^1]
#n = 2  ==> [1, 2, 4]  # [2^0, 2^1, 2^2]
n = gets.chomp().to_i

result = []

(0..n).each do |index|
    result.append(2**index)
end

print result