gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decryptor'

class EncryptorTest < Minitest::Test

  def test_it_can_decrypt_message
    d = Decryptor.new

    assert d.decrypt("hello")
  end

  def  test_it_decrypts_correct_number_of_characters
   d = Decryptor.new
   message = d.decrypt("hello")

   assert_equal 5, message.length

   message = d.decrypt("turing")

   assert_equal 6, message.length
 end

end
