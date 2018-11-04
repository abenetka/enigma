require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryption'
require 'date'
require 'pry'

class EncryptionTest < Minitest::Test
  def test_it_exists
     encryption = Encryption.new("hello world", "01234", "220489")
     assert_instance_of Encryption, encryption
  end

  def test_it_can_break_down_a_message_into_small_arrays
    encryption = Encryption.new("hello world", "01234", "220489")

    expected = [["h", "e", "l", "l"], ["o", " ", "w", "o"], ["r", "l", "d"]]
    assert_equal expected, encryption.split_message
  end

  def test_it_can_find_an_index
    encryption = Encryption.new("ali", "01234", "220489")
    expected = "kyg"
    assert_equal expected, encryption.encryption
  end

  def test_it_can_assign_shift_based_on_index
    encryption = Encryption.new("hello world", "01234", "220489")
    index = 1
    assert_equal  13 , encryption.shifter(index)
  end



end
