def categorize_students(max_score, low_percentage, high_percentage, list)
  low_score, high_score = calculate_low_high_score(max_score, low_percentage, high_percentage)
  students = split_text(list)
  students = sort_list(students)
  put_in_hash(students, low_score, high_score)
end

def split_text(text)
  text.split(/\n/).map do |value|
    split_value = value.split(/ *, */)
    [split_value[0], split_value[1].to_i]
  end
end

def sort_list(list)
  list = list.sort { |a, b| b[1] <=> a[1] }
  check = true
  while check
    check = false
    (0...list.length - 1).each do |i|
      if list[i][1] == list[i + 1][1] && ((list[i][0] <=> list[i + 1][0]) == 1)
        check = true
        list[i], list[i + 1] = list[i + 1], list[i]
      end
    end
  end
  list
end

def put_in_hash(list, low_score, high_score)
  hash = { top: [], middle: [], low: [] }
  list.each do |value|
    hash[:top].push value[0] if value[1] >= high_score
    hash[:middle].push value[0] if value[1] < high_score && value[1] > low_score
    hash[:low].push value[0] if value[1] <= low_score
  end
  hash
end

def calculate_low_high_score(max_score, low_percentage, high_percentage)
  low_score = max_score * low_percentage / 100
  high_score = max_score - ((max_score * high_percentage) / 100)
  [low_score, high_score]
end