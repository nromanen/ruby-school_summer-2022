module ConsoleInput
    class Console
        def self.read
            gets.chomp()
        end
    end

    class Convert
        def self.to_number str
            return str.to_f if str =~ /^\d*\.{1}\d*$/
            return str.to_i if str =~ /^\d*$/
        end
    
        def self.to_hash str
            res = Hash.new(0)
            arr = str.gsub(" ", "").gsub("=>", ":").split(",")
            
            arr.each do |item|
                res[item[0...item=~/\:/].to_sym] = item[(item=~/\:/)+1..-1].to_s
                
            end
            res
        end

        def self.to_symbol str
            str.to_sym
        end
    
        def self.to_string str
           str.to_s
        end
    end
end

p "Enter any number"
number = ConsoleInput::Convert.to_number(ConsoleInput::Console.read)
p number
p number.class

p "Enter hash in format 'key: value, key: value ...' or 'key => value, key => value ...'"
my_hash = ConsoleInput::Convert.to_hash(ConsoleInput::Console.read)
p my_hash
p my_hash.class

p "Enter any letters"
symbol = ConsoleInput::Convert.to_symbol(ConsoleInput::Console.read)
p symbol
p symbol.class

p "Enter any string"
string = ConsoleInput::Convert.to_string(ConsoleInput::Console.read)
p string
p string.class