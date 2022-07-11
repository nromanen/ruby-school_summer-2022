
require 'test/unit'
require './lecture-5/2048'


class Students_test < Test::Unit::TestCase
  include Game2048

  def test_power_of_two
    assert_equal(true ,is_power_of_two(4), "it is not power of 2")
  end

  def test_marge
    assert_equal([4,2,0,0], merge([2,0,2,2]))
    assert_equal([4,4,0,0], merge([2,0,2,4]))
    assert_equal([4,0,0,0], merge( [0,0,2,2]))
  end
end
