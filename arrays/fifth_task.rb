def text_editor(array)
  if array.empty?
    array
  else
    result = Array.new(array.length).map.each_with_index { |_, index| "#{index + 1}: #{array.at(index)}" }
  end
end

result = text_editor(["a", "b", "c"])
result.each {|item| print item, ', '}