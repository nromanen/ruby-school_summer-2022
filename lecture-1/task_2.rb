file = File.new("lecture-1/Ukr names.txt","r:UTF-8")
fake_file = File.new("lecture-1/fake names.txt","r:UTF-8")

pattern = /^[А-ЩЮЯҐЄІЇ][а-щь'юяґєії]{1,14}(-([А-ЩЮЯҐЄІЇ][а-щьюяґєії']{1,14}$)|$)/
CONTENT = file.read
FAKE_CONTENT = fake_file.read

while true
  puts 'Enter number (1 -- Enter your own name, 2 -- use full real name list, 3 -- use random name from real list, 4 -- use fake name list 0 -- exit)'
  conf = gets.chomp.to_i
  names = CONTENT.split("\n")


  case conf
  when 1
    print 'Введіть ім\'я: '
    content = gets
  when 2
    content = CONTENT
  when 3
    content = names[rand(0..names.length)]
  when 4
    content = FAKE_CONTENT
  when 0
    break
  end

  if content.respond_to?('each_line')
    content.each_line do |line|
      rez = line.match(pattern)
      if rez == nil
        puts 'nil'
      else
        puts rez
      end
    end
  else
    rez = content.match(pattern)
    if rez == nil
      puts 'nil'
    else
      puts rez
    end
  end
end