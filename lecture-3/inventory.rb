

module Inventory

  def warehouse(array)
    rez = {}
    array.each do |line|
      matches = line.match(/([^ -]{1,10})( -|-|- | - )(\d{1,10})/)
      key = matches[1].to_sym
      value = matches[3].to_i

      if rez.key?(key)
        rez[key] = rez[key] + value
      else
        rez.merge!(Hash[matches[1].to_sym => matches[3].to_i])
      end
    end
    rez
  end
end