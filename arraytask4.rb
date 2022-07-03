def gps(array, sec)
    res=[]
    for i in 0..array.length()-2 do
        res.append((array[i+1].to_f-array[i].to_f)/sec*60*60)
    end
    return res.max().to_i
end
