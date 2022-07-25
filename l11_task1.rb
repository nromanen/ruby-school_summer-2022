module ConsoleInput

    def string
        begin
            puts "Enter any string:"
            res = gets.chomp 
            if res.length == 0 then  raise puts 'String is full!'  end
            "String:" + res 
        rescue
        end    
    end

    def letter
        begin
             puts "Enter any letters:"
             res = gets.chomp 
             k = 0
             while k < res.length
                if (res[k] < 'A') || (res[k] > 'z') 
                    raise puts 'Not letter!' 
                    #puts res.slice(k)
                end
                k += 1
             end
            "Letter:" + res
        rescue
        end
    end


    def number
        begin
        puts "Enter any number:"
        res = gets.chomp
        case 
             when (res == '0')
                 res_n = 0
                 flag = true
             when (res == '0.0') || (res == '0,0')
                   res = 0.0
                   flag = true
        else
            k = 0
            r = 0
            flag = true
            n = res.length
            while k < n
               if (res[k] == '.') || (res[k] == ',') 
                 r +=1 
                 res[k] = '.'
               end
               if ((res[k] >= '0') && (res[k] <= '9') || (res[k] == '.') || (res[k] == ',')) != true then flag = false end   
               k += 1
            end
            if r > 1 then flag = false end
            if flag == true
                if r == 0 then res_n = res.to_i end
                if r == 1 then res_n = res.to_f end 
            else
                raise puts 'Not number!'  
            end
        end
        "Number : #{res_n}"
        rescue
        end
    end

 
    def hash_
        begin
        puts "Enter hash in format 'key: value' or 'key => value':"
        res = gets.chomp
        flag = false 
        pos = res.index(':') 
        if pos != nil
            key = res[0..pos-1]
            val = res[pos+1..res.length-1]
            flag = true
        else 
            pos = res.index('=>')
            if pos != nil
               key = res[0..pos-1]
               val = res[pos+2..res.length-1]
            else
                raise puts 'Not hash!'   
            end   
        end
        hs = {key => val}

        "Hash : #{hs}"
    rescue
    end
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
