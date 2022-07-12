module Inventory
  def warehouse(array)
      res = Hash.new(0)
      array.each do |item|
        product, count = item.split('-')
        res[product.strip.to_sym] += count.strip.to_i
      end
      res
  end
end