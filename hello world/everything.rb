class Everything
  @list = []
  def initialize
    @list = [
      ["'alice'.capitalize",'alice'.capitalize],
      ["5.next",5.next.to_s],
      ["false.class",false.class.to_s],
      ["[5, 12, 4].sort",[5, 12, 4].sort.to_s],
      ["Object.methods",Object.methods.to_s]
    ]
  end
  def get
    @list
  end
end