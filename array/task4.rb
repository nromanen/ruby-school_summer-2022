def gps(s,x)
  puts "Average speed per hour on each section:\n"
  delta_d = []
  for i in 0..8
    delta_d[i] = x[i+1]-x[i]
    puts (3600*delta_d[i])/s
  end
end
# test
# s = 15
# x = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]
puts "Enter interval to record John's car distance travelled:\n"
s = gets.to_i
x[0]=0.0
puts "Enter recorded distances(float number)\n"
for i in 1..9
  x[i] = gets.to_f
end
puts "Recorded distances:"
puts x
gps(s,x)