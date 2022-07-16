class Mark
  attr_accessor :subject
  attr_accessor :mark

  def initialize(subject, mark)
    @subject = subject
    @mark = mark
  end

  def to_s
    "#{@subject}: #{@mark}"
  end
end
