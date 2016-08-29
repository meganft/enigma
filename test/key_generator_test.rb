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

  def test_find_rotations_from_key_generator
    key = Key.new

    key.first_key_rotation
    
    assert key.first_key_rotation
  end

end
