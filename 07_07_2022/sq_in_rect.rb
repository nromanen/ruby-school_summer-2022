def sq_in_rect(lng, wdth)
  if lng == wdth
    nil
  else
    res = []
    while lng > 0 && wdth > 0
      if lng <= wdth
        res.push(lng)
        wdth -= lng
      else
        res.push(wdth)
        lng -= wdth
      end
    end
    res
  end
end

p sq_in_rect(5, 5) #expected nil
p sq_in_rect(5, 3) #expected [3, 2, 1, 1]