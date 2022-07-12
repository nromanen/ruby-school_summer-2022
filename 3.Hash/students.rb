def csv_to_array(csv_students)
    students = []
    csv_students.split(/ *\n */).map do |item|
        name, grade = item.split(/ *, */)
        students.push({name: name, grade: grade.to_i})
    end
    students
end

def sort_students(students)
    sorted_students = students.sort do |a, b|
            b[:grade].to_i - a[:grade].to_i == 0 ? a[:name] <=> b[:name] : b[:grade].to_i - a[:grade].to_i    
    end
    sorted_students
end

def ranker(grade, max_grade, deviation_percent, min_percent)
    return :top if grade >= max_grade - max_grade * deviation_percent * 0.01
    return :bottom if grade < max_grade * min_percent * 0.01
    :middle
end

def rank_students(csv_text, max_grade, deviation_percent, min_percent)
    ranked_students = {top: [], middle: [], bottom: []}
    students = sort_students(csv_to_array(csv_text))
    students.each do |item|
        ranked_students[ranker(item[:grade], max_grade, deviation_percent, min_percent)].push(item[:name])
    end
    ranked_students
end