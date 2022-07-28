def sayHello(array, state, city)
    res="Hello,"
    for i in array do
        res+=" "+i
    end
    res+="! Welcome to #{city}, #{state}!"
    return res
end

