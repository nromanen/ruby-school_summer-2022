def mean(town, strng)
  data = parse(town, strng, data)
  return -1 if data == ''

  data.map { |d| d.split[1].to_f }.inject(:+) / 12
end

def variance(town, strng)
  data = parse(town, strng, data)
  return -1 if data == ''

  avg = data.map { |d| d.split[1].to_f }.inject(:+) / 12
  data.map { |d| (d.split[1].to_f - avg)**2 }.inject(:+) / 12
end

def parse(town, strng, data)
  cities = strng.split("\n").map { |city| city.split(':') }
  cities.each { |city| data = city[1].split(',') if city[0] == town }
  data || ''
end
