class Pizza
    @@count = 0
    @@number = 0
    def initialize(d,ingr)
        if (d == 25) || (d == 50)
            @ingred = ingr
            @d = d
            @@number +=1
            @numb =@@number 
        else
            @ingred = []
            @d = 0
            @@count +=1
            @numb = 0
        end
    end
    def to_s
        s = "ID = #{@numb}, d=#{@d}, ingr=["
        @ingred.each {|x| s = s + '' + x +',' }
        s = s + ']'
    end
    def self.failInstance
        " #{@@count}"
    end
end

pizza1 = Pizza.new(10, ['mushroom', 'cheese']) 
puts pizza1
pizza2 = Pizza.new 25, ['mushroom', 'cheese', 'cherry'] 
puts pizza2
pizza3 = Pizza.new(50, ['mushroom']) 
puts pizza3
pizza4 = Pizza.new 100, ['mushroom', 'cheese', 'cherry'] 
puts pizza4
puts "Fail = " + Pizza.failInstance
