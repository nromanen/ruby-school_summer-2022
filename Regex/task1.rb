text = 'Lorem % ipsum 1.'

def cap(str)
   (str =~ /[A-Z]/).to_s
 end

 def low (str)
   (str =~ /[a-z]/).to_s
 end

 def num (str)
   (str =~ /[0-9]/).to_s
 end

 def spec (str)
   (str =~ /\W/).to_s
 end

print "Capital : #{cap(text).to_s} | Lowercase : #{low(text).to_s}
          \nNumber : #{num(text).to_s} | Special : #{spec(text).to_s}"
