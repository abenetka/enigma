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







end
