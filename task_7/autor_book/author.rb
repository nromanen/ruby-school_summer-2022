class Author

    attr_reader :first_name  
    attr_reader :surname
    attr_reader :middle_name
  
    @@authors = []
  
    def initialize(first_name, surname, middle_name)
      @first_name = first_name
      @surname = surname
      @middle_name = middle_name
    end
  
    def self.create_author(first_name, surname, middle_name = '')
  
      if self.is_valid?(first_name) &&
        self.is_valid?(surname) &&
        (middle_name == '' ? true : self.is_valid?(middle_name))
  
        res = new(first_name, surname, middle_name)
        self.add_author(res)
        res
      end
    end

    def self.is_valid?(str)
      /^(\p{Upper}\p{Lower}*)(-\p{Upper}\p{Lower}+)?$/.match?(str)
    end
  
    def self.to_s
      "------Автори------\n" +
        @@authors.map.with_index do |author, index|
          "#{index + 1}: #{author.first_name} #{author.surname} #{author.middle_name == '' ? '.' : "#{author.middle_name}." }"
        end.join("\n")
    end
  
    private
  
    def self.add_author(object)
      missing = @@authors.none? do |author|
        author.first_name.eql?(object.first_name) &&
          author.surname.eql?(object.surname) &&
          author.middle_name.eql?(object.middle_name)
      end
  
      if missing
        @@authors.push(object)
      end
    end
  end