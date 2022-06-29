name = "Анна-Мар'яна"
file = File.new("lecture-1/Ukr names.txt","r:UTF-8")

content = file.read


content.each_line do |line|
  puts line.match(/^[А-ЩЮЯҐЄІЇ][а-щь'юяґєії]{1,14}(-([А-ЩЮЯҐЄІЇ][а-щьюяґєії']{1,14})|$)/)
end