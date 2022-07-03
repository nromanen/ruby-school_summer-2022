pattern1 = /[A-Z]/
pattern2 = /[a-z]/
pattern3 = /[\d]/
pattern4 = /[\W]/

strings = 
[
    "abc1",
    "#####"
]

strings.each do |string|
    puts "#{string =~ pattern1}_#{string =~ pattern2}_#{string =~ pattern3}_#{string =~ pattern4}"
end