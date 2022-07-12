def merge(row)
  row_length = row.length
  empty = 0
  row.delete(empty)
  i = 1
  while i < row.length
    if row[i-1] == row[i]
      row[i-1] += row[i]
      row[i] = 0
    else
      i += 1
    end
  end
  row.delete(empty)
  (0...row_length - row.length).each{row.append(empty)} if row_length > row.length
  row
end