# including module method
require_relative 'module.rb'

# initing class, where calling module
class ModuleCall
  # including module to class
  include ConsoleInput
end

# calling module methods from class object
obj = ModuleCall.new
obj.number
obj.string
obj.symbol
obj.hash