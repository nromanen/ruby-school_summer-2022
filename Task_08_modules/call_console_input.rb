require_relative './console_input.rb'

class ModuleCall
  include ConsoleInput
end

obj = ModuleCall.new
obj.number
puts obj.hash
obj.symbol
obj.string
