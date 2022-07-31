
def say_hello(array, city, state)

    #result = "Hello, #{array[0]} #{array[1]}! Welcome to #{city}, #{state}!" # v.1
    result = "Hello, #{array.join(' ')}! Welcome to #{city}, #{state}!" # v.2

    return result

end

say_hello(["Den", "Burak"], "Chernivtsi", "Ukraine")