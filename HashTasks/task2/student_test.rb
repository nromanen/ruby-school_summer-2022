# Hash Task 2

# Data split method
def split_data(students_data)
  # splits data
  students_data.split(/\n/).map do |value|
    split_value = value.split(/ *, */)
    # output model
    [split_value[0], split_value[1].to_i]
  end
end

# Main method
def student_rating(bottom, middle, top, raw_data)
  # splitting raw_data using method
  students = split_data(raw_data)
  # Creating empty hash
  result = Hash[ :top_level => [], :middle_level => [], :low_level => []]
  # Iterating splites data
  students.each do |value|
    # Classifying data
    puts(value.to_s)
    case value
      # top classify
    when value[1] >= middle && value[1] <= top
      result[:top_level] += value
      puts("Top\n#{result[:top_level]}")
      # middle classify
    when value[1] <= middle && value[1] >= bottom
      result[:middle_level] += value
      puts("Mid\n#{result[:middle_level]}")
      # lower classify
    else value[1] <= bottom
      result[:low_level] += value
      puts("bottom\n#{result[:low_level]}")
      # unexpected values classify

    end
  end
  result
end


print student_rating(50, 70, 100,
                            "Mikki,73\n
Emmanuel,44\n
Jhonatan,98\n
Debby,95\n
Martin,55\n
Corso,88\n
ShiHao,99\n
Ollie,13\n
Marry,82
")