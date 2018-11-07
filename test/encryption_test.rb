require_relative './test_helper'


class EncryptionTest < Minitest::Test
  def test_it_exists
     encryption = Encryption.new("hello world", "01234", "220489")
     assert_instance_of Encryption, encryption
  end

  def test_it_can_split_a_message
    encryption = Encryption.new("hello world", "01234", "220489")

    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, encryption.split_message
  end

  def test_it_can_create_a_character_set
    encryption = Encryption.new("hello world", "01234", "220489")

    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]

    assert_equal expected, encryption.character_set
  end

  def test_it_can_encrypt_a_message
    encryption_1 = Encryption.new("ali", "01234", "220489")
    encryption_2 = Encryption.new("hello", "01234", "220489")
    encryption_3 = Encryption.new("encryption is fun", "01234", "220489")
    expected_1 = "kyg"
    expected_2 = "rrjty"
    expected_3 = "o azhbrqy yqbmdbx"

    assert_equal expected_1, encryption_1.encrypt
    assert_equal expected_2, encryption_2.encrypt
    assert_equal expected_3, encryption_3.encrypt
    assert_equal 3, encryption_1.encrypt.length
    assert_equal 5, encryption_2.encrypt.length
    assert_equal 17, encryption_3.encrypt.length
  end

  def test_it_can_encrypt_a_message_with_characters_not_in_character_set
    encryption = Encryption.new("hello world!", "02715", "040895")

    expected = "keder ohulw!"
    assert_equal expected, encryption.encrypt
  end

  def test_it_can_encrypt_a_message_with_uppercase_characters
    encryption = Encryption.new("Hello World", "02715", "040895")

    expected = "keder ohulw"
    assert_equal expected, encryption.encrypt
  end

end
