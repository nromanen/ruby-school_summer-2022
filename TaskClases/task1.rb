# classes task1

# class initialize
class Mark
  # attribute accessor aka Getter / Setter
  attr_accessor :subject, :value
  # initialization method aka constructor
  def initialize(subject, value)
    # values
    @subject = subject
    @value = value
  end
  # output format
  def to_s
    "#{@subject} : #{@value}"
  end
end

# creating object
obj = Mark.new('Math', 77)
puts "Subject: #{obj}"
# editing values from outside of class
obj.subject = 'History'
obj.value = 55
puts "Subject: #{obj}"

# class 2 initialization
class Student < Mark
  # @!attributes accessor
  attr_accessor :name, :marks
  # initializing method
  def initialize(name)
    # values
    @name = name
    @marks = Array.new
  end

  # method, which checking existing values
  def subject_exists?(subject_title)
    existence = false
    # iterating object
    for i in @marks
      # checking object
      i.subject == subject_title ? existence = true : existence = false
    end
    existence
  end

  # adding value
  def add_mark(obj)
    # requirements
    if !subject_exists?(obj.subject)
      @marks.push(obj)
    else puts "Mark \"#{obj}\" already exists"
    end
  end

  # output format
  def to_s
    "Student: #{@name} | #{@marks.map {|value| value.to_s}}"
  end
end

# creating object
student = Student.new('Andrea')
# calling class method
student.add_mark(obj)
# output
puts "#{student}\n\n"
