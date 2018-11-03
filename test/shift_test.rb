require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'
require './lib/enigma'
require 'date'
require 'pry'

class ShiftTest < Minitest::Test
  def test_it_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_it_can_generate_a_key
    shift = Shift.new
    assert_equal 5, shift.key_generator.length
  end

  def test_it_can_generate_the_date
    shift = Shift.new
    assert_equal 6, shift.date_generator.length
  end

  def test_it_can_calculate_key_shift
    shift = Shift.new
    key =  "01234"
    assert_equal "01", shift.key_shift_a(key)
    assert_equal "12", shift.key_shift_b(key)
    assert_equal "23", shift.key_shift_c(key)
    assert_equal "34", shift.key_shift_d(key)
  end

  def test_it_can_calculate_date_offset
    shift = Shift.new
    date = "220489"
    assert_equal "9121", shift.date_offset(date)
  end

  







end
