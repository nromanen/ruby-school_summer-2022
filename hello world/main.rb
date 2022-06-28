require './hello world/everything'
require './hello world/numbers.rb'
require './hello world/strings.rb'

def get_string_to_output(list_string)
  final_string = ''
  list_string.each { |x|
    final_string = final_string + "\t" + x[0] + "  =>  " + x[1] + "\n\n"
  }
  final_string
end


conf = 1
while conf != 0
  puts "Enter number (1 -- Hello word, 2 -- Everything ex, 3 -- Numbers, 4 -- Strings, 0 -- exit)"

  conf = gets.chomp.to_i
  case conf
  when 1
    puts 'Hello word'
  when 2
    puts get_string_to_output Everything.new.get
  when 3
    puts get_string_to_output Numbers.new.get
  when 4
    conf1 = 1
    while conf1 != 0
      puts "Enter number (1 -- Create string, 2 -- Interpolation, 3 -- Concatenation, 4 -- Accessing, 5 -- Useful methods, 0 -- exit)"
      conf1 = gets.chomp.to_i
      case conf1

      when 1
        puts get_string_to_output(Strings.new.get_create_string_list)
      when 2
        puts get_string_to_output(Strings.new.get_interpolation_list)
      when 3
        puts get_string_to_output(Strings.new.get_concatenation_list)
      when 4
        puts get_string_to_output(Strings.new.get_accessing_list)
      when 5
        puts get_string_to_output(Strings.new.get_useful_methods_list)
      when 0
        nil
      else
        puts 'what?'
      end
    end
  when 0
    nil
  else
    puts 'what?'
  end
end
