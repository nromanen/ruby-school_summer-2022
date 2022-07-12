blok1 = Proc.new do |x|
    if x<0 then x*x
    else x
    end  
end


def sum o_blok
    a = o_blok.call 4
    b = o_blok.call 0
    c = o_blok.call -12
    return a + b + c
end

result = sum blok1
puts  result
 