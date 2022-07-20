require_relative 'console_input.rb'

class Task
  include ConsoleInput
end

task = Task.new
puts task.string
puts task.number
puts task.symbol
puts task.new_hash