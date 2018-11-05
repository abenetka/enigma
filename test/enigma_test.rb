require_relative './test_helper'


class EnigmaTest < Minitest::Test
  def test_it_exists
     enigma = Enigma.new
     assert_instance_of Enigma, enigma
  end

  def test_it_has_attributes
    enigma = Enigma.new
    key = "01234"
    date = "22048g9"
    assert_equal "01234", enigma.key

  end


  def test_it_can_generate_a_key
    enigma = Enigma.new
    assert_equal 5, enigma.key_generator.length
  end

  def test_it_can_generate_the_date
    enigma = Enigma.new
    assert_equal 6, enigma.date_generator.length
  end

  def test_it_can_encrypt_a_message
    enigma = Enigma.new

    expected_1 = {encryption: "rrjtymuwayb", key: "01234", date: "220489"}
    expected_2 = {encryption: "keder ohulw", key: "02715", date: "040895"}
    assert_equal expected_1, enigma.encrypt("hello world", "01234", "220489")
    assert_equal expected_2, enigma.encrypt("hello world", "02715", "040895")
  end







end
