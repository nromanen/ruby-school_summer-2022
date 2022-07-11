SECONDS_IN_HOUR = 3600

def gps(array, sec)
    result=[]
    for i in 0..array.length()-2 do
        result.append((array[i+1].to_f-array[i].to_f)/sec*SECONDS_IN_HOUR)
    end
    return result.max().to_i
end

puts gps([0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25],15)

