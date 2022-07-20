module Inventory
  # Main Func
  def warehouse(unsorted_data)
    # Creating empty HASH with default value '0'
    result = Hash.new(0)
    # Iterating string
    unsorted_data.each do |value|
      # Splitting values with '-'
      product, price = value.split('-')
      # format result
      sorted_data[product.to_sym] += price.to_i
    end
    #returning result
    result
  end
end

