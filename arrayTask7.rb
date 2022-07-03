def alternate(num, first, second)
    res=[]
    for i in 0..num-1 do
        if i%2==0 
            res.append(first)
          else
          res.append(second)
        end
    end
return res 
end
