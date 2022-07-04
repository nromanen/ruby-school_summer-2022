require 'test/unit'
require_relative 'inventory'

class InventoryTest < Test::Unit::TestCase
  include Inventory
  def test_empty
    assert_equal({}, Inventory.warehouse([]), 'Result should be empty')
  end

  def test_unique
    assert_equal({ one: 18, two: 3 }, Inventory.warehouse(['one -18', 'two - 3']))
  end

  def test_duplicate
    assert_equal({ one: 20, two: 3 }, Inventory.warehouse(['one -18', 'two - 3', 'one-2']))
  end
end
