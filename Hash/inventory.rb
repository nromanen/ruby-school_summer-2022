module Inventory
  def warehouse(array)
    res = Hash.new
    array.map{ |x| x.scan(/\w+/) }
         .each { |x|
           if res[x[0].to_sym].nil?
             res[x[0].to_sym] = x[1].to_i
           else
             res[x[0].to_sym] += x[1].to_i
           end
         }
    res
  end
end
