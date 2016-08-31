require'pry'

class Key

	attr_accessor :key

  def key_generator
    @key = (0..9).to_a.shuffle
    @key = @key[0..4].join
  end

end

# puts key = Key.new
# puts key.key_generator

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
