module ConsoleInput

    def string
        puts "Enter any string:"
        res = gets.chomp 
        "String:" + res 
    end


    def letter
        puts "Enter any letters:"
        res = gets.chomp  
        "Letter:" + res
    end


    def number
        puts "Enter any number:"
        res = gets.chomp.to_i  
        "Number : #{res}"
    end

 
    def hash_
        puts "Enter hash in format 'key: value' or 'key => value':"
        res = gets.chomp 
        pos = res.index(':') 
        if pos != nil
            key = res[0..pos-1]
            val = res[pos+1..res.length-1]
        else 
            pos = res.index('=>')
            key = res[0..pos-1]
            val = res[pos+2..res.length-1]
        end
        hs = {key => val}

        "Hash : #{hs}"
    end

end


class Ques_answer
    include ConsoleInput
end

tst = Ques_answer.new

#puts tst.string
#puts tst.letter
#puts tst.number
puts tst.hash_
