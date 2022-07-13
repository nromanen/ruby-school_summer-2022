def mean(town, strng)
    return -1 unless strng.match "#{town}:"
    num = strng.split(/\n/).select{|s| s.match "#{town}"}[0].scan(/\d+\.\d+/).map(&:to_f)
    me = num.sum.fdiv num.size
end
  
def variance(town, strng)
    return -1 unless strng.match "#{town}:"
    num = strng.split(/\n/).select{|s| s.match "#{town}"}[0].scan(/\d+\.\d+/).map(&:to_f)
    me = num.sum.fdiv num.size
    va = num.reduce(0){|accum, i| accum +(i-me)**2/num.size.to_f }
end