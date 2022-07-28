def result(array)
    res=0
    for i in array do
        res+=i ** 2
    end
    return res 
end

array=[1, 2, 2]
print array,"=",result(array)