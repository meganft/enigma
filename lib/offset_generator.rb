require 'pry'

class OffsetGenerator

  attr_accessor :key, :first_offset, :second_offset, :third_offset, :fourth_offset

  def key_generator
    @key = (0..9).to_a.shuffle
    @key = @key[0..4].join
  end

  def date_generator
    require 'date'
    date = Date.today
    month = date.mon.to_s
    day = date.mday.to_s
    year = date.year.to_s.slice(2,3)
    @date_squared = ((month + day + year).to_i**2).to_s
    return @date_squared
  end

  def offset(range, slice_at)
    key_generator.slice(range).to_i + date_generator.slice(slice_at).to_i
  end

  def first_offset
    offset(0..1, -4)
  end

  def second_offset
    offset(1..2, -3)
  end

  def third_offset
    offset(2..3, -2)
  end

  def fourth_offset
    offset(3..4, -1)
  end

end
#
# puts d = OffsetGenerator.new
# puts d.key_generator
# puts d.date_generator
#
# puts d.first_offset
# puts d.second_offset
# puts d.third_offset
# puts d.fourth_offset
