require'pry'

class Key

	attr_accessor :key

  def key_generator
    @key = (0..9).to_a.shuffle
    @key = @key[0..4].join
  end

end 

	#
  # def first_key_rotation
  #   @a = @key[0..1]
  # end
	#
  # def second_key_rotation
  #   @b = @key[1..2]
  # end
	#
  # def third_key_rotation
  #   @c = @key[2..3]
  # end
	#
  # def fourth_key_rotation
  #   @d = @key[3..4]
  # end

# end

# puts key = Key.new
# puts key.generator
# puts key.first_key_rotation
# puts key.second_key_rotation
# puts key.third_key_rotation
# puts key.fourth_key_rotation

#   ).to_a.shuffle
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
