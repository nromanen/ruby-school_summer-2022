def ltw(num,s1,s2)
  res = []
  for i in 0..num-1
    if(i%2==0)
      res[i] = s1
    else
      res[i] = s2
    end
  end
  puts res
end
#####################################################################
puts "Enter number and two values:\n"
n = gets.to_i
val1 = gets.chomp
val2 = gets.chomp
ltw(n,val1,val2)