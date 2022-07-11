def dividing_students_according_to_grades(max_score, low_percentage, high_percentage, students)
    high_score = max_score - ((max_score * high_percentage) / 100)
    low_score = max_score * low_percentage / 100
    
    table_of_students = Hash[:top => [], :middle => [], :bottom => []]

    list = split_list(students)

    list = sort_list(high_score, low_score, table_of_students, list)
end

def sort_list(high_score, low_score, table_of_students, list)
    list.sort_by{ |couple| couple[0]}
        .sort_by{ |couple| couple[1]}.reverse.each do |el|
            case el[1]
            when 0 ... low_score
                table_of_students[:bottom].push(el[0])
            when low_score .. high_score
                table_of_students[:middle].push(el[0])
            else
                table_of_students[:top].push(el[0])
            end
        end
    return table_of_students
end

def split_list(students)

    students.split(', ')
                   .each_slice(2)
                   .map{ |student_name, mark| [student_name, mark.strip.to_i] }

end



print dividing_students_according_to_grades(100, 15, 10, 
    "Andrey, 92
    , Alan, 70
    , Bob, 31
    , Cris, 26
    , David, 89
    , Eva, 98
    , Gon, 11
    , Flora, 13
    , Yana, 4
    , Jon, 78"
)



