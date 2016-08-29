gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/date_generator'

class Date
  def test_can_generate_date
  date = Date.new

  date.date_generator

  assert date_generator
end

end
