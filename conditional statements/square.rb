def sqInRect(len, high)
    res=[]
    if high!=len
        while high>0 and len>0 
            if high>len 
                high=high-len 
                res.push(len)
            else
                len=len-high 
                res.push(high)
            end
        end
    res
    end
end