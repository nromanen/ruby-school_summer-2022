class Author
    attr_reader :first, :second, :father
    def initialize(f_name, s_name, fth_name = "")
        @first = f_name
        @second = s_name
        @father = fth_name
    end
    def to_s
        "#{second} #{father} #{first}"
    end
end

a1 = Author.new('Frat','Valeriy','Gregor')
a2 = Author.new('Frat','Victoria')
puts "Result1:"
puts a1
puts a2
class Autors
    attr_reader :autors
    def initialize
        @autors = []
    end
    def add_aut(autor)
        @autors.push(autor)
    end
    def to_s
        s=""
        @autors.each {|x| s = s + x.to_s + "\n" }
        s 
    end
end
aut_ar = Autors.new
aut_ar.add_aut(a1)
aut_ar.add_aut(a2)
aut_ar.add_aut(a2)
puts "Result2:"
puts aut_ar

class Book
    def initialize(aut_arr, title, edition, year)
        flag = true
       if aut_arr.uniq.count == aut_arr.count
        @autors = aut_arr
       else 
        flag = false
       end
        @title = title
        @edition = edition 
       if (year.length == 4) && (year.to_i <=2022)
        @year = year
       else flag = false
       end
        if !flag 
            @autors = []
            @title = nil
            @edition = nil
            @year = nil
        end
    end
       def to_s
        s = "Autors:\n"
        @autors.each {|x| s = s + x.to_s + "\n" }
        s = s + "Title: " + @title.to_s + "\n"
        s = s + "Edition: " + @edition.to_s + "\n"
        s = s + "Year: " + @year.to_s + "\n"
       end
end

puts "Result3:"
bk = Book.new([a1,a2],"Potop", "Bridok", "2021")
puts bk
bk = Book.new([a1,a2,a2],"Potop", "Bridok", "2021")
puts bk
bk = Book.new([a1,a2],"Potop", "Bridok", "2025")
puts bk
