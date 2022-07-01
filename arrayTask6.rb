def sqrArray(array)
    result=[]
    for i in array do
        if Math.sqrt(i)%1==0 
            result.append(Math.sqrt(i).to_i)
    else
        result.append(i**2)
    end
    end
    return result 
end

array=[4,3,9,7,2,1]
print array,"->",sqrArray(array)