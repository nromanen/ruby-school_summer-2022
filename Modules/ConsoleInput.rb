module ConsoleInput
def number
    puts "Enter any number"
    gets.chomp.to_i
  end

  def symbol
    puts "Enter any letters"
    gets.chomp.to_sym
  end

  def string
    print "Enter any string:\n"
    gets.chomp.to_s
  end

  def hash
    puts("Enter hash in format 'key: value' or 'key => value':\n")
    res = gets.chop.split(/ *:|(=>) */)
    { res[0].to_sym => res[1] }
  end