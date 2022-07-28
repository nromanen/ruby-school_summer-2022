module ConsoleInput
    def self.string
        print "Enter any string: "
        result=gets
        result
    end
    def self.num
        print "Enter any number: "
        result=gets.to_f
        result
    end
    def self.char
        print "Enter any letters: "
        result=gets
        result= result.delete! "\n"
        while !result.match(/[^A-Za-z]/).eql?(nil)
            print "ERROR unxpected symbols, try again \n"
            result=gets
            result= result.delete! "\n"
        end
        result
    end
    def self.hash
        print "Enter number of values in hash \n"
        num=gets.to_f
    variable=Hash.new
    for i in 0..num
        print "Enter hash in format 'key: value' or 'key => value: '"
        result=gets
        if result.match(/=>/)
            pop=result.split(" => ", -2)
        variable[pop[0]]=pop[1].delete! "\n"
        elsif result.match(/:/)
            pop=result.split(": ", -1)
            variable[pop[0]]=pop[1].delete! "\n"
        else
            print "error"
        end
        
    end
    variable
    end
    end