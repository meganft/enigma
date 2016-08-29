gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'

class KeyTest < Minitest::Test
  def test_can_generate_random_key
    key = Key.new

    key.generator

    assert key.generator
  end

  def test_key_is_five_digits
    key = Key.new

    assert_equal 5, key.generator.length
  end

end
