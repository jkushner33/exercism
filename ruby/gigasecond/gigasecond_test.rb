require 'minitest/autorun'
require 'date'
require 'time'

require_relative 'gigasecond'

class GigasecondTest < MiniTest::Unit::TestCase
  def test_1
    gs = Gigasecond.from(Date.new(2011, 4, 25))
    assert_equal Date.new(2043, 1, 1), gs
  end

  def test_2
    gs = Gigasecond.from(Date.new(1977, 6, 13))
    assert_equal Date.new(2009, 2, 19), gs
  end

  def test_3
    gs = Gigasecond.from(Date.new(1959, 7, 19))
    assert_equal Date.new(1991, 3, 27), gs
  end

  def test_time_with_seconds
    gs = Gigasecond.from(Time.new(1959, 7, 19, 23, 59, 59))
    assert_equal Date.new(1991, 3, 28), gs
  end

  # # modify the test to test your 1 Gs anniversary
  def test_yourself
    your_birthday = Date.new(1988, 6, 2)
    gs = Gigasecond.from(your_birthday)
    assert_equal Date.new(2020, 2, 9), gs
  end
end
