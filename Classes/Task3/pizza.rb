class Pizza
  @@counter = 0
  @@failed_instances = 0

  def initialize(diagonal, ingredients)
    if diagonal != 25 && diagonal != 50
      @@failed_instances += 1
      self.initialize_default_values
      return
    end

    @pizza_id = @@counter += 1
    @diagonal = diagonal
    @ingredients = ingredients
  end

  def self.failed_instances
    @@failed_instances
  end

  def to_s
    "Id: #{@pizza_id}\n" +
      "Size: #{@diagonal}\n" +
      "Ingredients: #{@ingredients}\n"
  end

  private

  def initialize_default_values
    @diagonal = 0
    @ingredients = Array.new
    @pizza_id = 0
  end

end
