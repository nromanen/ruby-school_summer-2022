module Inventory
  def warehouse(array)
    sold = Hash.new
    array.map{ |elem| elem.scan(/\w+/) }
        .map{ |elem| [elem[0].to_sym, elem[1].to_i] }
        .each{
          |elem|
          if sold.has_key?(elem[0])
            sold[elem[0]] = sold[elem[0]] + elem[1]
          else
            sold.store(elem[0], elem[1])
          end
        }
    sold
  end
end

