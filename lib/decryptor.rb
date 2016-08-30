require 'pry'
require './lib/encryptor'

class Decryptor

  attr_reader :offset

  def initialize
    @encryptor = Encryptor.new
  end

  def char_map
    @alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z).reverse
  end

  def decrypt(message)

    characters = message.chars
    @decrypted_message = []
    characters.each_with_index do |char, index|
      if index % 4 == 0
        offset = @encryptor.offset.first_offset
      elsif index % 4 == 1
        offset = @encryptor.offset.second_offset
      elsif index % 4 == 2
        offset = @encryptor.offset.third_offset
      elsif index % 4 == 3
        offset = @encryptor.offset.fourth_offset
      end

      @rotated_character = char_map.rotate(char_map.index(char) + offset).first

      @decrypted_message << @rotated_character
    end
    return @decrypted_message.join

  end

end
#
# puts d = Decryptor.new
# my_message = "this is so secret ..end.."

# # #
#   def alphabet
#     @alphabet = ("a".."z").to_a
#   end
#
#   def encrypt(message)
#     @message = message
#     @characters = message.chars
#     encrypted_letters = []
#     @characters.each do |letter|
#       if @rotation_place % 4 == 0
#         offset = self.first_key_rotation
#         @encrypted_letters << @alphabet.rotate(offset)
#         @rotation_place += 1
#       elsif @rotation_place % 4 == 1
#         offset = self.second_key_rotation
#         @alphabet.rotate(offset)
#         @rotation_place += 1
#       elsif @rotation_place % 4 == 2
#         offset = self.third_key_rotation
#         @alphabet.rotate(offset)
#         @rotation_place += 1
#       elsif @rotation_place % 4 == 3
#         offset = self.fourth_key_rotation
#         @alphabet.rotate(offset)
#         @rotation_place += 1
#       end
#       # @encrypt_letter = alphabet.rotate(offset)
#       encrypted_letters.join
#     end
#   end
#
#
#
# puts key.encrypt_letter("l")
# puts key.encrypt("hi")
# letters = phrase.chars
#       encrypted_letters = letters.map do |letter|
#         decrypt_letter(letter)
#       end
#       encrypted_letters.join
#   end


#
