def sqInRect(lng, wdth)
  sq = []
  if lng==wdth
    puts 'nil'
  elsif lng>wdth
    while lng>0 do
      wdth,lng=[wdth,lng].minmax
      sq<<wdth
      lng-=wdth
      end
  elsif lng<wdth
    while wdth>0 do
      lng,wdth=[lng,wdth].minmax
      sq<<lng
      wdth-=lng
    end
    end
  sq
end
puts sqInRect(3,3)