def gps(array, sec)
    res=[]
    for i in 0..array.length()-2 do
        res.append((array[i+1].to_f-array[i].to_f)/sec*60*60)
    end
    print res.max().to_i
end
gps([0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25], 15)