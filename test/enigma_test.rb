require_relative './test_helper'

class EnigmaTest < Minitest::Test
  def test_it_exists
     enigma = Enigma.new
     assert_instance_of Enigma, enigma
  end

  def test_it_can_create_a_character_set
    enigma = Enigma.new
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, enigma.character_set
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

  def test_it_can_decrypt_a_message
    enigma = Enigma.new

    expected = {decryption: "hello world", key: "02715", date: "040895"}
    assert_equal expected, enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_can_encrypt_a_message_without_date
    enigma = Enigma.new
    encrypted = enigma.encrypt("hello world", "02715")
    assert_equal encrypted, enigma.encrypt("hello world", "02715")
  end

  def test_it_can_encrypt_a_message_without_date_and_key
    enigma = Enigma.new
    encrypted = enigma.encrypt("hello world")
    assert_equal 11, encrypted[:encryption].length
  end

  def test_it_can_decrypt
    enigma = Enigma.new
    encrypted = enigma.encrypt("hello world")
    decrypted = enigma.decrypt(encrypted[:encryption], "02715")
    assert_equal 11, decrypted[:decryption].length
  end












end
