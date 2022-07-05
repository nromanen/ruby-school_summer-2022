def students_by_scores(max, low, up, students)
  min_range = 0 .. max * low / 100
  max_range = max - up .. max
  scores = Hash[:top => [], :middle => [], :bottom => []]
  split_scores = students.split(/[\s,']/).each_slice(2).to_a
  split_scores.map { |student, score| [student, score.to_i]}
              .sort {|student, score| student[1] <=> score[1]}
              .reverse
              .each do |e|
    if min_range.include?(e[1])
      scores[:bottom].push(e[0])
    elsif max_range.include?(e[1])
      scores[:top].push(e[0]).sort
    else
      scores[:middle].push(e[0]).sort
    end
  end
  puts scores
end

students_by_scores(100, 15, 10,
                   "S1,5\nS2,18\nS3,45\nS4,90\nS5,100\nS6,94\nS7,1")