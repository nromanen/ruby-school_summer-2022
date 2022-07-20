MAX_MARK = 100
UPPER_MARK = 0.10
LOWER_MARK = 0.15

def create_hash(students)
  hash = Hash(:top => [], :middle => [], :bottom => [])
  students.each do |element|
    if element[1].to_i >  (MAX_MARK - (MAX_MARK * UPPER_MARK))
      hash[:top].push(element)
    elsif element[1].to_i < MAX_MARK * LOWER_MARK
      hash[:bottom].push(element)
    else
      hash[:middle].push(element)
    end
  end
  p hash
end

def sort_studends(data_base)
  students = data_base.delete(' ').split(',').each_slice(2).map{ |student_name, mark| [student_name, mark.to_i] }
  students = students.sort_by{|name, mark| [-mark, name]}
  create_hash(students)
end

sort_studends('Dina, 100, Kate, 43, Tanya, 100, Anna, 100, David, 84, Lisa, 100, Kris, 65, Mary, 100, Alex, 43, John, 9, Ivan, 0')