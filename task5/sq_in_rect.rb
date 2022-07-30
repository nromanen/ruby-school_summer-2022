def sq_in_rect(l, w)
  rects = []
  while l>0 do
    w,l = [w,l].minmax
    rects << w
    l -= w
  end
  rects.size > 1 ? rects : nil
end

puts sq_in_rect(5, 5)
puts sq_in_rect(5, 3)