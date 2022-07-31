TIME = 3600

def gps(distance,  seconds)

    result = []

    for i in 0..distance.length()-2  do
        result.append((distance[i+1] - distance[i]) / seconds * TIME)
    end

    return result.max().to_i

end

gps([0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61], 20) # 41
gps([0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25], 12) # 219