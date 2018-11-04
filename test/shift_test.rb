require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'
require './lib/enigma'
require 'date'
require 'pry'

class ShiftTest < Minitest::Test
  def test_it_exists
    shift =  Shift.new("01234", "220489")
    assert_instance_of Shift, shift
  end



  # def test_it_can_calculate_key_shift
  #   shift = Shift.new
  #   key =  "01234"
  #   assert_equal "01", shift.key_shift_a(key)
  #   assert_equal "12", shift.key_shift_b(key)
  #   assert_equal "23", shift.key_shift_c(key)
  #   assert_equal "34", shift.key_shift_d(key)
  # end

  def test_it_can_calculate_date_offset
    shift = Shift.new("01234", "220489")

    assert_equal "9121", shift.date_offset
  end

  def test_it_calculate_total_shift
    shift = Shift.new("01234", "220489")

    assert_equal 10, shift.total_shift_a
    assert_equal 13, shift.total_shift_b
    assert_equal 25, shift.total_shift_c
    assert_equal 35, shift.total_shift_d
  end

end
