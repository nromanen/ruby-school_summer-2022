class Mark
  attr_accessor :subject, :value

  def initialize(subject, value)
    @subject = subject
    @value = value
  end

  def to_s
    "#{@subject} : #{@value}"
  end
end
