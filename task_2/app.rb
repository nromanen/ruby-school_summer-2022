require './task_2/name'
require './task_2/index'

task = false

def menu_input
  puts "What do you want to do? Enter:\n 1 - index,\n 2 - name validation, \n e - exit"
  gets.chomp
end

def menu(task)
  task_choice = ''
  until task
    task_choice = menu_input
    if %w[1 2 e].include?(task_choice)
      task = true
    else
      puts 'Wrong value. Please, try again'
    end
  end
  choice(task_choice)
end

def index_task
  puts 'Enter your string'
  user_input = gets.chomp
  puts "Your result - #{Index.task(user_input)}"
end

def name_task
  puts 'Enter your name'
  user_input = gets.chomp
  if Name.validate_name(user_input)
    puts "Your name #{user_input} was validated"
  else
    puts "Your name #{user_input} was NOT validated"
  end
end

def choice(variant)
  case variant
  when '1'
    index_task
    menu(false)
  when '2'
    name_task
    menu(false)
  else
    exit
  end
end

menu(task)
