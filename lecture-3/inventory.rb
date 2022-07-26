module Inventory
  def warehouse(array)
    rez = {}
    array.each do |line|
      format_line(line, rez)
    end
    rez
  end

  private

  def format_line(line, rez)
    matches = line.match(/([^ -]{1,10})( *- *)(\d{1,10})/)
    key = matches[1].to_sym
    value = matches[3].to_i

    if rez.key?(key)
      rez[key] = rez[key] + value
    else
      rez.merge!(Hash[matches[1].to_sym => matches[3].to_i])
    end
  end
end