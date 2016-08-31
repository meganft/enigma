require_relative 'test_helper'
require './lib/offset_generator'

class OffsetGeneratorTest < Minitest::Test

  def test_can_generate_date
    offset = OffsetGenerator.new("12345", date=Date.today)

    assert offset.date_generator
  end

  def test_it_can_create_first_offset
    offset = OffsetGenerator.new("12345", date=Date.today)

    assert_equal 21, offset.first_offset
  end

end
