class Pizza
  attr_accessor :ingredients
  attr_accessor :number
  attr_accessor :d

  @@order_count = 0
  @@fail_count = 0

  def initialize(d, ingredients)
    if d == 25 || d == 50
      @d = d
      @ingredients = ingredients
      @@order_count += 1
      @number = @@order_count
    else
      # >> Якщо діагональ не дорівнює одному з цих значень, то піцца не створюється.
      # Список інгредієнтів має бути порожнім.
      # Номер піци дорівнювати нулю.
      # Діагональ також дорівнює нулю.
      @number = 0
      @d = 0
      @ingredients = []
      @@fail_count += 1
    end
  end

  def self.failInstance
    @@fail_count
  end

  def to_s
    "#{@number} - #{@d}, #{@ingredients}"
  end
end
