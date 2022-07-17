def students_scores(max, low, up, students)
    scores = Hash[top: [], middle: [], bottom: []]
    min_range = 0 .. max * low / 100
    max_range = max - up .. max
    split_scores = students.split(/[\s,']/)
                           .each_slice(2)
                           .to_a
    split_scores.map { |student, score| [student, score.to_i] }
                .sort { |student, score| score[1] <=> student[1] }
                .each {  |e|
                  if min_range.include?(e[1])
                    scores[:bottom].push(e[0])
                  elsif max_range.include?(e[1])
                    scores[:top].push(e[0])
                  else
                    scores[:middle].push(e[0])
                  end
                }
    puts scores
  end
  
  students_scores(100, 15, 10,"Dina,100\nKate,43\nTanya,100\nAnna,100\nDavid,84\nLisa,100\nKris,65\nMary,100\nAlex,43\nJohn,9")