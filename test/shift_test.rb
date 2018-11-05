require_relative './test_helper'

class ShiftTest < Minitest::Test
  def test_it_exists
    shift =  Shift.new("01234", "220489")
    assert_instance_of Shift, shift
  end

  def test_it_can_calculate_date_offset
    shift = Shift.new("01234", "220489")

    assert_equal "9121", shift.date_offset
  end

  def test_it_calculate_total_shift
    shift_1 = Shift.new("01234", "220489")

    assert_equal 10, shift_1.total_shift_a
    assert_equal 13, shift_1.total_shift_b
    assert_equal 25, shift_1.total_shift_c
    assert_equal 35, shift_1.total_shift_d

    shift_2 = Shift.new("02715", "040895")

    assert_equal 3, shift_2.total_shift_a
    assert_equal 27, shift_2.total_shift_b
    assert_equal 73, shift_2.total_shift_c
    assert_equal 20, shift_2.total_shift_d
  end


    def test_it_can_assign_shift_based_on_index
      shift = Shift.new("01234", "220489")
      index_1 = 1
      index_2 = 10
      index_3 = 3
      index_4 = 5
      index_5 = 8

      assert_equal  13 , shift.shifter(index_1)
      assert_equal  25 , shift.shifter(index_2)
      assert_equal  35 , shift.shifter(index_3)
      assert_equal  13, shift.shifter(index_4)
      assert_equal  10 , shift.shifter(index_5)
    end


end
