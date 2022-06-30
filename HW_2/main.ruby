text = ('abc1');
symbols = ('####');
def bigLetter(str)
    str =~ /[A-Z]/
end;

def smallLetter(str)
    str =~ /[a-z]/
end;

def number(str)
    str =~ /\d/
end;

def symbol(str)
    str =~ /[\[ \] \\ \/ \^ \$ \. \| \? \* \+ \( \) \{ \} \#]/
end;

puts "text example : #{bigLetter(text)}_#{smallLetter(text)}_#{number(text)}_#{symbol(text)}";
puts "symbols example : #{bigLetter(symbols)}_#{smallLetter(symbols)}_#{number(symbols)}_#{symbol(symbols)}";