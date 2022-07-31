# frozen_string_literal: true

module Inventory
  def warehouse(array)
    list = {}

    array.each do |element|
      goods, count = element.split(/ *-{1,} */)

      if list[goods.to_sym].nil?
        list[goods.to_sym] = count.to_i
      else
        list[goods.to_sym] += count.to_i
      end
    end

    list
  end
end
