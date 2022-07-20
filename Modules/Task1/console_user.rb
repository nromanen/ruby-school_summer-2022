require_relative 'console_input.rb'

class ConsoleUser
  attr_reader :cache

  include ConsoleInput

  def initialize(credentials)
    @credentials = credentials
    @cache = Array.new
  end

  def input_number
    format_result ConsoleInput.number
  end

  def input_str
    format_result ConsoleInput.string
  end

  def input_symbol
    format_result ConsoleInput.symbol
  end

  def input_hash
    format_result ConsoleInput.c_hash
  end

  private

  def format_result(value)
    @cache.push(value)
    (value.is_a?(Symbol) ? value.inspect : value.to_s)
  end

end
