module Inventory
  def warehouse(array)
    result = {}
    array.each do |item|
      string_array = item.split
      if result.has_key?(string_array[0].to_sym)
        result[string_array[0].to_sym] += string_array[2].to_i
      else
        result.store(string_array[0].to_sym, string_array[2].to_i)
      end
    end
    result
  end
end
