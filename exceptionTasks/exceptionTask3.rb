def third_order
    num=rand(1-10)
    begin
        order ||= 0
        puts "What is result #{num}*#{num}*#{num}?"
        res=gets.to_f
        
        raise "the roof"
    rescue
         if order<2 and res!=num*num*num
        order+=1  
        puts "try again"
        retry
      
         elsif order==2
          puts "Try next time."
        elsif res==num*num*num
          puts "Good job"
      end
    end
end
third_order