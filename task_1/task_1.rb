  def capital_letter(str)
    (str =~ /[A-Z]/).to_s
  end
 
  def lowercase_letter (str)
    (str =~ /[a-z]/).to_s
  end
 
  def number (str)
    (str =~ /[0-9]/).to_s
  end
 
  def special (str)
    (str =~ /\W/).to_s
  end
 
  text_1 = '1PassLog* _'
  text_2 = '1abCd3_' 
 
 puts "#{capital_letter(text_1)}_#{lowercase_letter(text_1)}_#{number(text_1)}_#{special(text_1)}"
 puts "#{capital_letter(text_2)}_#{lowercase_letter(text_2)}_#{number(text_2)}_#{special(text_2)}"