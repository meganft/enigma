require'pry'
class Enigma

	attr_reader :key, :a, :b, :c, :d


  def generator
    @key = (0..9).to_a.shuffle
    @key = @key[0..4].join  #this returns a string
  end

  def first_key_rotation
    @a = @key[0..1]
  end

  def second_key_rotation
    @b = @key[1..2]
  end

  def third_key_rotation
    @c = @key[2..3]
  end

  def fourth_key_rotation
    @d = @key[3..4]
  end

  def alphabet
    @alphabet = ("a".."z").to_a
  end

  # def characters
  #   @characters = message.chars
  # end

  def encrypt_letter(index)
      if index % 4 == 0
      offset = self.first_key_rotation
    elsif index % 4 == 1
      offset = self.second_key_rotation
    elsif index % 4 == 2
      offset = self.third_key_rotation
    elsif index % 4 == 3
      offset = self.fourth_key_rotation
    end
    # @encrypt_letter = alphabet.rotate(offset)
  end
# binding.pry
  def encrypt(message)
      @characters = message.chars
        encrypted_letters = @characters.each_with_index do |letter, index|
          encrypt_letter(letter, index)
        end
      encrypted_letters.join
    end

end

puts key = Enigma.new
puts key.generator
puts key.first_key_rotation
puts key.second_key_rotation
puts key.third_key_rotation
puts key.fourth_key_rotation

puts key.encrypt_letter("l")
puts key.encrypt("hi")
# puts rotate = Rotation.new
# puts rotate.alphabet


  # offset calculate a,b,c,d, like above
  # method that adds a,b,c,d of both together
  # then have a,b,c,d rotation numbers
  # can rotate an array by a these rotation numbers
  # key_array = key.split(",")
          # key_array.map do |num|
          # |num|.to_i
  # you put in a phrase, it rotates the first character by a amount
  # create character map
  # array.rotate(a number, combined from both)
  # store the [0] index from this rotated array
  # that is the new encrypted letter


#
#   def generator
#     key = (0..9).to_a.shuffle
#     key = key[0..4].join
#     key_collection << (key)
#     if key_collection.include?(key)
#       key = (0..9).to_a.shuffle
#       key = key[0..4].join
#       key
#     else
#       key_collection << (key)
#       key
#     end
#   end
# #
# end
