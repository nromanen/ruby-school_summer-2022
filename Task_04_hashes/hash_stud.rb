def split_data(students_data)
  students_data.split(/\n/).map do |value|
    split_value = value.split(/ *, */)
    [split_value[0], split_value[1].to_i]
  end
end

def students_clasifficate(underdogs, middle, top, raw_data)
  students = split_data(raw_data)
  result = Hash[ :top_level => [], :middle_level => [], :low_level => [], :bad_values => []]
  students.each do |value|
    puts(value.to_s)
    case value
    when value[1] >= middle && value[1] <= top
      result[:top_level] += value
      puts("Top\n#{result[:top_level]}")
    when value[1] <= middle && value[1] >= underdogs
      result[:middle_level] += value
      puts("Mid\n#{result[:middle_level]}")
    when value[1] <= underdogs
      result[:low_level] += value
      puts("UnderDogs\n#{result[:low_level]}")
    else
      result[:bad_values] += value
      print("Incorrect data #{value[0]} and #{value[1]}\n")
    end
  end
  result
end

print students_clasifficate(50, 70, 100,
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