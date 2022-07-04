module Inventory
  def warehouse(array)
    result = {}
    array.each do |value|
      product, amount = value.split(/ *- */)
      if result[:"#{product}"].nil?
        result[:"#{product}"] = amount.to_i
      else
        result[:"#{product}"] += amount.to_i
      end
    end
    result
  end
end
