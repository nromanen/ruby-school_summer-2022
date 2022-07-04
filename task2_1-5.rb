puts "task 1 power 2"

def power_two (a)
    count = 0
    power = []
    while count <=a do
        power.push(2**count)
        count +=1
    end
    return power
end

puts power_two(4)

puts "task 2 summ squeares"

def square_sum(numbers)
  n_length = numbers.length
  count = 0
  sum = 0
  while count<n_length do
    sum += numbers[count]**2
    count += 1
  end
  return sum
end

a=[5, 2, 5]

puts square_sum(a)

puts "task 3 say hello!"

def say_hello(name, city, state)
  str = "Hello,"
  n_length  = name.length
  count = 0
  while count < n_length do
    str <<" #{name[count]}"
    count +=1
  end
  str << "! Welcome to #{city}, #{state}!"
  return str
end

puts say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')


puts "task 4 GPS"

x = [0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61]
s = 20
u = 41

def gps(s, x)
  if x.length<=1
    return 0
  else
    count = 0
    res = []
    x_length = x.length
    while count < x_length - 1 do
      res[count] = (x[1+count]-x[count])*3600/s
      count += 1
    end
    return res.max
  end
end

puts  gps(s, x)-gps(s, x)%1, u

puts "task 5 testing 1-2-3"

def number lines
  null_array = []
  if lines == null_array
    return null_array
  else
    res = []
    count = 0
    while count < lines.length do
      res[count] = "#{1+count}: #{lines[count]}"
      count += 1
    end
    return res
  end
end

puts number([]), []
puts number(["a", "b", "c"]), ["1: a", "2: b", "3: c"]
