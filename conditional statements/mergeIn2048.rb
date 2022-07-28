def merge nums
    result=nums.sort
    for i in 0..result.length-2 do
    if result[i]==result[i+1] and result[i]!=0
        result[i]=result[i]+result[i+1]
        result[i+1]=0
      break
    end    
    end
    result.sort!{|a,b| b<=>a}
    result
end

