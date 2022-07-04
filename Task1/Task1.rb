text = ('abc1');
symbols = ('Б####');

def isUpperCase(str)
    str =~ /[A-Z]/
end
def isLowerCase(str)
    str =~ /[a-z]/
end
 def isDigit(str) 
    str =~ /\d/
end
 def isSpecialSymbol(str)
    str =~ /[[:punct:]]/
 end
def printRegex(str) 
    print("#{isUpperCase(str)}_#{isLowerCase(str)}_#{isDigit(str)}_#{isSpecialSymbol(str)}")
    puts "\n"
end 
printRegex(text)
printRegex(symbols)