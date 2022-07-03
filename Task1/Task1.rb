text = ('abc1');
symbols = ('####');

def isUpperCase(str)
    str =~ /[A-Z]/
end
def isLowerCase(str)
    str =~ /[a-z]/
end
 def isDigit(str) 
    str =~ /\d/
end
 def isSymbol(str)
    str =~ /\W/ 
 end
def printRegex(str) 
    print("#{isUpperCase(str)}_#{isLowerCase(str)}_#{isDigit(str)}_#{isSymbol(str)}")
    puts "\n"
end 
printRegex(text)
printRegex(symbols)