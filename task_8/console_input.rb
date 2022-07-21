module ConsoleInput
    def self.string
        puts 'Enter any string:\n'
        gets.chomp.to_s
      end
    
      def self.number
        puts 'Enter any number:\n'
        gets.chomp.gsub(/[.,]/, '.' => '.', ',' => '.').to_f
      end
    
      def self.symbol
        puts 'Enter any letters:\n'
        gets.chop.to_sym
      end
    
      def self.new_hash
        puts("Enter hash in format 'key: value' or 'key => value':\n")
        res = gets.chop.split(/ *:|(=>) */)
        { res[0].to_sym => res[1] }
      end
end