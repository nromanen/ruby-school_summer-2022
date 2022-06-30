name = "Анна-Мар'яна"
file = File.new("lecture-1/Ukr names.txt","r:UTF-8")
fake_file = File.new("lecture-1/fake names.txt","r:UTF-8")

pattern = /^[А-ЩЮЯҐЄІЇ][а-щь'юяґєії]{1,14}(-([А-ЩЮЯҐЄІЇ][а-щьюяґєії']{1,14})|$)/
content = file.read
fake_content = fake_file.read


content.each_line do |line|
  puts line.match(pattern)
end

fake_content.each_line do |line|
  rez = line.match(pattern)
  if rez == nil
    puts 'nil'
  else
    puts rez
  end
end