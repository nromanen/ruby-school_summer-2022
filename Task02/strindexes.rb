upper_case_pattern = /[A-Z]/
lower_case_pattern = /[a-z]/
digit_pattern = /[\d]/
special_symbol_pattern = /[\W]/

strings = 
[
    "abc1",
    "#####"
]

strings.each do |string|
    puts "#{string =~ upper_case_pattern}_#{string =~ lower_case_pattern}_#{string =~ digit_pattern}_#{string =~ special_symbol_pattern}"
end