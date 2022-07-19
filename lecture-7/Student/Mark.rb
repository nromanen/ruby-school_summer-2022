
class Mark
  attr_reader :value, :subject

  public def initialize(subject, value)
    @subject = subject
    @value = value
  end

  public def to_s
    "#{@subject} : #{@value}"
  end
end
