def sum 
    result =0
    [4, 0, -12].each{|num| result=result+ (yield num)}
end
sum {|arg| arg>0? arg :  arg**2}