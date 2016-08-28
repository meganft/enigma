class Key

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

end


class Rotation
  attr_reader :alphabet
  def alphabet
    @alphabet = { "a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f" => 5, "g" => 6,"h" => 7,"i" => 8, "j" => 9,"k" => 10, "l"  => 11, "m" => 12, "n" => 13, "o" => 14,"p" => 15,"q" => 16, "r" => 17, "s" => 18, "t" => 19, "u" => 20, "v" => 21, "w" => 22, "x" => 23, "y" => 24,"z" => 25}
  end
end

puts key = Key.new
puts key.generator
puts key.first_key_rotation
puts key.second_key_rotation
puts key.third_key_rotation
puts key.fourth_key_rotation

puts rotate = Rotation.new
puts rotate.alphabet


def encrypt(message)
  characters = message.chars

  message.

end



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


# generator idea to account for duplicates
# attr_reader :key_collection
# def key_collection
#   key_collection = []
# end
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
