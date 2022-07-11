module Inventory
  def warehouse(myArray)
    res = Hash.new(0)
    myArray.map{ |val| val.split(/ *- */) }
        .map{ |val| [val[0].to_sym, val[1].to_i] }
        .each{|val|
          if res.key?(val[0])
            res[val[0]] += val[1]
          else
            res.store(val[0], val[1])
          end
        }
    return res
  end
end