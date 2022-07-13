def sqInRect(l, w)
    rects = []
    while l>0 do
      w,l = [w,l].minmax
      rects << w
      l -= w
    end
    rects.size > 1 ? rects : nil
end