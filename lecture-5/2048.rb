module Game2048

  def is_power_of_two(x)
    (x & (x - 1)) == 0;
  end

  def step(row)
    w_row = row
    (0...w_row.length).each { |i|
      next if w_row[i] == 0
      (i+1...w_row.length).each{|j|
        if w_row[i] == w_row[j]
          w_row[i] += w_row[j]
          w_row[j] = 0
          i = j+1
        elsif w_row[j] != 0
          i = i+1
        end
      }
    }
    shift row
  end

  def shift(row)
    w_row = row
    start_length = w_row.length

    w_row.each_index { |i|
      w_row[i] = nil if w_row[i] == 0
    }

    w_row = w_row.compact

    while w_row.length != start_length
      w_row.push 0
    end
    w_row
  end

  def merge(row)
    row.each do |el|
      unless is_power_of_two el
        raise StandardError.new "This is not 2048 game! HELP ME"
      end
    end
    step row
  end
end

