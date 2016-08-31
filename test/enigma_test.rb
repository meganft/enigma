gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_can_encrypt_message
    e = Enigma.new

    assert e.encrypt("hello")
  end

  def test_it_can_decrypt_message
    e = Enigma.new

    assert e.decrypt("hello")
  end

end
