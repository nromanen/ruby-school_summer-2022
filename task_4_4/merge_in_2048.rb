def merge(myArr)
    res = []
    prov = myArr.reject(&:zero?)
    prov.each_with_index { 
        |el, index|
      if index == prov.length - 1
        res.push(el)
        break
      else
        if el == prov[index + 1]
            res.push(el * 2)
            prov[index + 1] = 0
        else
            res.push(el) unless el == 0
        end
      end
    }
  
    while res.length < myArr.length
        res.push(0)
    end
  
    return res
  end
  
  print merge([2,0,2,2]) # 4,2,0,0
  print merge([2,0,2,4]) # 4,4,0,0
  print merge([4,4,0,4]) # 8,4,0,0
  print merge([2,2,4,16]) # 16,4,4,0