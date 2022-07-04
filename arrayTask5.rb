def strEdit(array)
for i in 0..array.length()-1 do
    array[i].prepend("#{i+1}: ")
end
return array
end
