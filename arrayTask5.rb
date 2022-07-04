def number array
  result=[]
  array.length().times{|i|result.push("#{i+1}: #{array[i]}")}
return result
end
