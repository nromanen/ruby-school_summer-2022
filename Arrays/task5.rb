#Arrays: Task 4

def numbering_lines(content)
  for  i in 0..content.length
    content[i] = "#{i+1}: #{content[i]}"
  end
  print content
end

numbering_lines(['First line', 'I love bananas', 'Imma scatman', 'Very original line', 'Cats !'])

