module Inventory
  def warehouse(array)
    res = Hash.new(0)
    for i in 0..array.length-1
      product,count = array[i].split('-')
      res[product.strip.to_s] += count.strip.to_s
    end
    return res
  end
end
