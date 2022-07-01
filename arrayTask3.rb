def sayHello(array, state, city)
    res="Hello,"
    for i in array do
        res+=" "+i
    end
    res+="! Welcome to #{state}, #{city}!\n"
    print res
end

sayHello(['John', 'Smith'], 'Phoenix', 'Arizona')
