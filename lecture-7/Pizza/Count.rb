
class Count
  attr_reader :total, :failure
  def initialize
    @total = 0
    @failure = 0
  end

  def increment_total
    @total+=1
  end
  def increment_failure
    @failure+=1
  end
end