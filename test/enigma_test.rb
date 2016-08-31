require_relative 'test_helper'
require './lib/enigma1'

class EnigmaTest < Minitest::Test

  def test_it_encrypts_message
    e = Enigma.new

    refute_equal "hello", e.encrypt("hello")

    refute_equal "turing", e.encrypt("turing")
  end

  def test_it_encrypts_correct_number_of_characters
    e = Enigma.new
    message = e.encrypt("hello")

    assert_equal 5, message.length

    message = e.encrypt("turing")

    assert_equal 6, message.length

  end

  def test_it_can_encrypt_message
    e = Enigma.new

    assert e.encrypt("hello")
  end

  def test_it_can_decrypt_message
    e = Enigma.new

    assert e.decrypt("hello")
  end

  def test_it_can_decrypt_message
    e = Enigma.new

    assert e.decrypt("hello", "12345")
  end

  def  test_it_decrypts_correct_number_of_characters
   e = Enigma.new
   message = e.decrypt("hello", "12345")

   assert_equal 5, message.length

   message = e.decrypt("turing", "12345")

   assert_equal 6, message.length
 end

 def test_it_cracks_message
   e = Enigma.new 

   assert_equal

 end


end
