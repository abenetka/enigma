require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require 'date'
require 'pry'

class EnigmaTest < Minitest::Test
  def test_it_exists
     enigma = Enigma.new
     assert_instance_of Enigma, enigma
  end

  def test_it_can_generate_a_key
    shift = Shift.new
    assert_equal 5, shift.key_generator.length
  end

  def test_it_can_generate_the_date
    shift = Shift.new
    assert_equal 6, shift.date_generator.length
  end

  def test_it_can_encrypt_a_message
    enigma = Enigma.new

    actual = enigma.encrypt("hello world", "02715", "040895")
    expected = {encryption: "keder ohulw", key: "02715", date: "040895"}

    assert_equal expected, actual
  end







end
