def segregate_students_by_ranks(max, low_percentage, high_percentage, students)
  high_bound = max - (max * high_percentage / 100)
  low_bound = (max * low_percentage / 100)
  leaderboard = Hash[:top => [], :middle => [], :bottom => []]
  students_list = students.split(',').each_slice(2).map{ |name, score| [name, score.strip.to_i] }
  students_list.sort do |curr_student, next_student|
                  (curr_student[0] <=> next_student[0]) == 0 ?
                    curr_student[1] <=> next_student[1] : curr_student[0] <=> next_student[0]
                end
                .each do |elem|
                  case elem[1]
                  when 0 ... low_bound
                    leaderboard[:bottom].push(elem[0])
                  when low_bound .. high_bound
                    leaderboard[:middle].push(elem[0])
                  else
                    leaderboard[:top].push(elem[0])
                  end
  end
  leaderboard
end

p segregate_students_by_ranks(100, 10, 15,
                              "Dina,100
,Kate,43
,Tanya,100
,Anna,100
,David,84
,Lisa,100
,Kris,65
,Mary,100
,Alex,43
,John,9")