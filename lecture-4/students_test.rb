require 'test/unit'
require './lecture-4/students'


class Students_test < Test::Unit::TestCase
  include Students

  def string_for_extraction_test
    "Наташа -18 Марія-12 Роман- 2 оранжерея - 4 Гогиль-Могиль - 3"
  end
  def string_for_correctness_test
    "Наташа -18 Марія-120 Роман- -2 Гогиль-Могиль - 3 оранжерея - 4"
  end
  def string_for_sorting_test
    "Наташа -20 Марія-10 Ббб-25 Ааа-25 Ввв-25"
  end
  def string_for_distribution_test
    "Наташа -91 Марія-90 Ббб-89 Ааа-10 Ввв-25"
  end

  def test_extraction
    assert_equal({ Наташа: 18, Марія: 12, Роман: 2, "Гогиль-Могиль".to_sym => 3 },
                 text_to_hash(string_for_extraction_test),
                 "Result should be {:one=>18,:asw=>12,:ewe=>2, 'Гогиль-Могиль': 3}")
  end

  def test_correctness
    assert_equal({ Наташа: 18, 'Гогиль-Могиль': 3 },
                 check_for_correctness(text_to_hash string_for_correctness_test),
                 "Result should be { Наташа: 18, Гогиль-Могиль: 3 }")
  end

  def test_sorting
    assert_equal([[:Ааа, 25], [:Ббб, 25], [:Ввв, 25], [:Наташа, 20], [:Марія, 10]],
                 sorting(check_for_correctness(text_to_hash string_for_sorting_test)),
                 "Result should be")

  end

  def test_distribution
    assert_equal([[[:Наташа, 91], [:Марія, 90]], [[:Ббб, 89], [:Ввв, 25]], [[:Ааа, 10]]],
                 distribution(sorting(check_for_correctness(text_to_hash string_for_distribution_test))),
                 "lazy")
  end

  def test_process
    assert_equal([[[:Наташа, 91], [:Марія, 90]], [[:Ббб, 89], [:Ввв, 25]], [[:Ааа, 10]]],
                 process(string_for_distribution_test),
                 "lazy")
  end
end