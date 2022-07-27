def sq_in_rect(lng, wdth)
  if lng == wdth
    nil
  else
    result = []
    while lng != 0 && wdth != 0
      if lng > wdth
        result.push(wdth)
        lng -= wdth
      elsif lng < wdth
        result.push(lng)
        wdth -= lng
      else
        result.push(lng)
        wdth = 0
        lng = 0
      end
    end
    result
  end
end

print sq_in_rect(5, 4)
