module Inventory

  def warehouse(array)
    result = Hash.new(0)
    array.each do |value|
      product, amount = value.split(/ *- */)
      result[product.to_sym] += amount.to_i
    end
    result
  end

end