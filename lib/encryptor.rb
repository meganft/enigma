require 'pry'
require './lib/offset_generator'
require './lib/key_generator'

class Encryptor

  attr_accessor :offset, :key

  def initialize
    @offset = OffsetGenerator.new
    @key = Key.new
  end

  def char_map
    @alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z .)
  end

  def encrypt(message)

    characters = message.chars
    @our_key = @key.key_generator
    @date = @offset.date_generator
    @encrypted_message = []

    characters.each_with_index do |char, index|
      if index % 4 == 0
        offset = @offset.first_offset
      elsif index % 4 == 1
        offset = @offset.second_offset
      elsif index % 4 == 2
        offset = @offset.third_offset
      elsif index % 4 == 3
        offset = @offset.fourth_offset
      end
      @rotated_character = char_map.rotate(char_map.index(char) + offset).first
      @encrypted_message << @rotated_character
      end
    return offset = @encrypted_message.join

  end

end

# puts e = Encryptor.new
# # # # my_message = "this is so secret ..end.."
# puts output = e.encrypt("hellothisisalongword..")
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
