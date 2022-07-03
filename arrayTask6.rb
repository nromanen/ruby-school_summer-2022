def square_or_square_root(array)
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
