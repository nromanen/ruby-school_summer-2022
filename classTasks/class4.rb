class Author
    attr_reader :name, :surname, :fname
    @@Authors=[]
def initialize(*param)
if param.length<3
    param.push("")
end
    if check?(param[0], param[1], param[2])
    @name=param[0]
    @surname=param[1]
    @fname=param[2]
    @@Authors<<self
    end
end
def Author.Authors_get
    for i in @@Authors
        print i.name, " ", i.surname, " ", i.fname, "\n"
    end
end
def Author.Authors_mas
    @@Authors
end
def check?(name, surname, fname)
    result=true
    if name.length>15 or surname.length>15 or fname.length>15
        result=false
    end
    if !name.match(/[^A-Za-z-]/).eql?(nil) or !surname.match(/[^A-Za-z-]/).eql?(nil) or !fname.match(/[^A-Za-z-]/).eql?(nil)
        result=false
    end
    for i in @@Authors
        if i.name==name and i.surname==surname and i.fname==fname
            result=false
            break
        end
    end
    result
end
def to_s
    "#{name} #{surname} #{fname} "
end
end
class Book 
    attr_reader :year, :bookname, :bookpublisher, :authors
    def initialize(year, bookname, bookpublisher, authors)
        if check?(year, bookname, bookpublisher)
        @year=year
        @bookname=bookname
        @authors=authors
        @bookpublisher=bookpublisher
        else
        @year=nil
        @bookname=nil
        @authors=nil
        @bookpublisher=nil
        end
    end
    def check? (year, bookname, bookpublisher)
        result=true
        if year>2022 or !bookname.match(/[\W.,-;] /).eql?(nil) or !bookpublisher.match(/[\W.,-;] /).eql?(nil)
            result=false
        end
        result
    end
    def to_s
    result="#{bookname},#{@bookpublisher}, #{year}, authors: ["
        authors.each{|el|  result=result+el.to_s+"  "}
        "#{result}]"
    end
end
author=Author.new("Li9l", "Mo-r9ty", "Peep")
author=Author.new("Lil", "Morty", "Peep")
author1=Author.new("Bob", "Marley")
Author.Authors_get
book =Book.new 2001, "History", "Entertainment", Author.Authors_mas
print book