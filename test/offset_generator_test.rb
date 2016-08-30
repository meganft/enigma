gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_generator'

class OffsetGeneratorTest < Minitest::Test

  def test_it_can_generate_random_key
    offset = OffsetGenerator.new

    offset.key_generator

    assert offset.key_generator
  end

  def test_key_is_five_digits
    offset = OffsetGenerator.new

    assert_equal 5, offset.key_generator.length
  end

  def test_can_generate_date
    offset = OffsetGenerator.new

    assert offset.date_generator
  end

end
