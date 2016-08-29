require 'pry'
require './lib/date_generator'

class Enigma

  attr_accessor :rotation_place, :message

  def alphabet
    @alphabet = ("a".."z").to_a
  end

  # def characters
  #   @characters = message.chars
  # end

  def encrypt(message)
    @message = message
    @characters = message.chars
    encrypted_letters = []
    @characters.each do |letter|
      if @rotation_place % 4 == 0
        offset = self.first_key_rotation
        @encrypted_letters << @alphabet.rotate(offset)
        @rotation_place += 1
      elsif @rotation_place % 4 == 1
        offset = self.second_key_rotation
        @alphabet.rotate(offset)
        @rotation_place += 1
      elsif @rotation_place % 4 == 2
        offset = self.third_key_rotation
        @alphabet.rotate(offset)
        @rotation_place += 1
      elsif @rotation_place % 4 == 3
        offset = self.fourth_key_rotation
        @alphabet.rotate(offset)
        @rotation_place += 1
      end
      # @encrypt_letter = alphabet.rotate(offset)
      encrypted_letters.join
    end
  end



end

puts e = Enigma.new
puts e.generator
# puts key.first_key_rotation
# puts key.second_key_rotation
# puts key.third_key_rotation
# puts key.fourth_key_rotation
#
# puts key.encrypt_letter("l")
# puts key.encrypt("hi")
# letters = phrase.chars
#       encrypted_letters = letters.map do |letter|
#         decrypt_letter(letter)
#       end
#       encrypted_letters.join
#   end

# binding.pry
#   def encrypt(message)
#
# #
# #
# # end
#
# puts key = Enigma.new
# puts key.generator
# puts key.first_key_rotation
# puts key.second_key_rotation
# puts key.third_key_rotation
# puts key.fourth_key_rotation
#
# puts key.encrypt_letter("l")
# puts key.encrypt("hi")
# # puts rotate = Rotation.new
# # puts rotate.alphabet
#
#
#   # offset calculate a,b,c,d, like above
#   # method that adds a,b,c,d of both together
#   # then have a,b,c,d rotation numbers
#   # can rotate an array by a these rotation numbers
#   # key_array = key.split(",")
#           # key_array.map do |num|
#           # |num|.to_i
#   # you put in a phrase, it rotates the first character by a amount
#   # create character map
#   # array.rotate(a number, combined from both)
#   # store the [0] index from this rotated array
#   # that is the new encrypted letter
#
#
