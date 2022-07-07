def classifier(grade, max_grade, deviation_percent, min_percent)
    return :top if grade >= max_grade - max_grade * deviation_percent * 0.01
    return :bottom if grade < max_grade * min_percent * 0.01
    :middle
end

def classificate_students(students_csv, max_grade, deviation_percent, min_percent)
    students = {top: [], middle: [], bottom: []}
    students_csv.split(/ *\n */).map do |item|
        name, grade = item.split(/ *, */)
        tmp_student = {name:, grade:}
        tmp_student[:name] = name
        tmp_student[:grade] = grade.to_i
        students[classifier(grade.to_i, max_grade, deviation_percent, min_percent)].push(tmp_student)
    end
    sort_students(students)
end

def sort_students(students)
    sorted_students = {top: [], middle: [], bottom: []}
    students.each do |key, value|  
        value = value.sort do |a, b|
            if b[:grade].to_i - a[:grade].to_i == 0
               a[:name] <=> b[:name]
            else
                b[:grade].to_i - a[:grade].to_i
            end      
        end
        sorted_students[key.to_sym] = value
    end
    sorted_students
end

def delete_grades(students_with_grades)
    names = Hash.new(0)
    students_with_grades.each do |key, array|
        names[key.to_sym] = array.map{|item| item = item[:name]}
    end
    names
end