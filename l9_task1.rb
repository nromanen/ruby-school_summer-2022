class Mark 
    def initialize(sb,vl)
        @subject = sb
        @value = vl
    end
    def showing
      @subject + " : " + @value.to_s
    end 
end

mk = Mark.new('C++',95)

puts mk.showing

class Student
    def initialize(nm)
        @name = nm
        @marks = []
    end
    def add(mrk)
        print "KT1: "
        puts mrk.showing
        @marks.push(mrk)
    end
    def show_st
        print @name + ', Marks:' 
     #   @marks[0].showing
        @marks.each {|x| print "["+x.showing+"],"}
        puts
    end
end
st = Student.new('Student1')
st.add(mk)
mk1 = Mark.new("Python",80)
st.add(mk1)
mk2 = Mark.new("Asm",85)
st.add(mk2)
st.show_st
