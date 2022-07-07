def c (array)
    count = 0
    hash = {}
    while count < array.length do
        sym = array[count].match(/^\p{L}{0,20}/)[0]
        num = array[count].match(/[0-9]{0,20}$/)[0]
        num = num.to_i
        sym = sym.to_sym
        if hash.key?(sym) 
            hash[sym] = hash[sym] + num
        else
            hash[sym] = num
        end
        count+=1
    end
    return hash
end

p = ['one -18', 'two - 3', 'one-2']

puts c(p)