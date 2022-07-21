class Author
  attr_accessor :f_name
  attr_accessor :l_name
  attr_accessor :patronymic
  @@Authors = []

  def initialize(f_name, l_name, patronymic)
    @f_name = f_name
    @l_name = l_name
    @patronymic = patronymic
  end

  def self.add_author(f_name, l_name, patronymic = '')
    if f_name.match(/[^A-Za-z-]/).eql?(nil) && l_name.match(/[^A-Za-z-]/).eql?(nil) &&
      (patronymic == '' ? true : patronymic.match(/[^A-Za-z]/).eql?(nil))
      if f_name.length < 15 && l_name.length < 15 && patronymic.length < 15
        duplicate_check = @@Authors.none? do |e|
          e.eql?([f_name, l_name, patronymic])
        end
        if duplicate_check
          @@Authors.push([f_name, l_name, patronymic])
        end
      end
    end
  end

  def self.find_author(f_name, l_name, patronymic = '')
    @@Authors.select do |e|
      e.eql?([f_name, l_name, patronymic])
    end
  end

  def self.print
    i = 0
    while i <= @@Authors.size
      puts "#{@@Authors[i].join(" ")}"
      i+=1
    end
  end
end