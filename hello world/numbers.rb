class Numbers
  @list = []
  def initialize
    @list = [
      ["100.class",100.class.to_s],
      ["100.0.class",100.0.class.to_s]
    ]
  end
  def get
    @list
  end
end