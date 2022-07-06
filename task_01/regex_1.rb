# frozen_string_literal: true

# Get string
print 'Enter your words: '
regex = gets

# Get index
def first_up_latter(regex)
  regex =~ /[A-Z]/
end

def second_lower_letter(regex)
  regex =~ /[a-z]/
end

def number(regex)
  regex =~ /\d/
end

def special_symbol(regex)
  regex =~ %r{[.,!@"'#$%^&*;:()\-+=_`~/\\{}\[\]|<>]}
end

#  Search in string
def regex_func(regex)
  p "#{first_up_latter(regex)}_#{second_lower_letter(regex)}_#{number(regex)}_#{special_symbol(regex)}"
end

# Result
regex_func(regex)