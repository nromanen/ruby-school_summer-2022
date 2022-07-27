def students_result(max, upper_bound, lower_bound, students)
  top_mark = max - lower_bound
  bottom_mark = upper_bound
  rating = {:top=>[], :middle=>[], :bottom=>[]}
  students_array = students.split(',').each_slice(2).map{ |student_name, student_mark| [student_name, student_mark.to_i] }
  students_array.sort! do |a, b|
    b[1] <=> a[1]
  end
                .each do |item|
    if item[1] <= bottom_mark
      rating[:bottom].push(item[0])
    elsif item[1] <= top_mark
      rating[:middle].push(item[0])
    else
      rating[:top].push(item[0])
    end
  end
  print rating
end

students_result(100, 10, 15, 'Alex,90,Maria,20,Den,35,Pasha,80,Aaria,20,John,5,Bob,2')
