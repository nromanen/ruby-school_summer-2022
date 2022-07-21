require_relative 'string_float_or_int.rb'

module ConsoleInput

  String.include ValidStringFloatOrInteger

     def self.string
        puts 'Enter any string:\n'
        gets.chomp.to_s
      end
    
      def self.number
        print "Enter any number:\n"
        res = gets.chomp.gsub(/[.,]/, '.' => '.', ',' => '.')
        begin
          if res.float?
            res.to_f
          elsif res.int?
            res.to_i
          else
            raise ArgumentError.new("Error when entering data; should be float (x.xx) or int (x)")
          end
        rescue Exception => e
          print "#{e.message} >>> #{res}"
          res
        end
      end
    
      def self.symbol
        puts 'Enter any letters:\n'
        gets.chop.to_sym
      end
    
      def self.new_hash
        puts("Enter hash in format 'key: value' or 'key => value':\n")
        str = gets.chop
        begin

          unless str.include?('=>') || str.include?(':')
            raise ArgumentError.new("Error when entering data; required format is 'key: value' or 'key => value'")
          end
          res = str.split(/ *:|(=>) */)
          { res[0].to_sym => res[1] }
        rescue Exception => e
          print "#{e.message} -> #{str}"
        end

      end
end