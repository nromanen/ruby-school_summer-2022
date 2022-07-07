def sort_students(students)
    sorted_students = {top: [], middle: [], bottom: []}
    students.each do |key, value|
        value = value.sort {|a, b| b[:name] <=> a[:name]}
        value = value.sort {|a, b| b[:grade][0].to_i - a[:grade][0].to_i}
        sorted_students[key.to_sym] = value
    end
    sorted_students
end

def classifier(grade, max_grade, deviation_percent, min_percent)
    return :top if grade >= max_grade - max_grade * deviation_percent * 0.01
    return :bottom if grade < max_grade * min_percent * 0.01
    :middle
end

def classificate_students(students_csv)
    students = {top: [], middle: [], bottom: []}
    students_csv.split(/ *\n */).map do |item|
        name, grade = item.split(/ *, */)
        tmp_student = {name: [], grade: []}
        tmp_student[:name].push(name)
        tmp_student[:grade].push(grade.to_i)
        students[classifier(grade.to_i, 100, 10, 15)].push(tmp_student)
    end
    sort_students(students)
end






