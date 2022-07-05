module Inventory
  def warehouse(array)
    res = Hash.new
    array.map{ |e| e.scan(/\w+/) }
         .each { |e|
           if res[e[0].to_sym].nil?
             res[e[0].to_sym] = e[1].to_i
           else
             res[e[0].to_sym] += e[1].to_i
           end
         }
    res
  end
end