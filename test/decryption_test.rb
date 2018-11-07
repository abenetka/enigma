require_relative './test_helper'

class DecryptionTest < Minitest::Test
  def test_it_exists
    decryption = Decryption.new("keder ohulw", "02715", "040895")

    assert_instance_of Decryption, decryption
  end

  def test_it_can_split_a_message
    decryption = Decryption.new("hello world", "01234", "220489")

    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal expected, decryption.split_message
  end

  def test_it_can_create_a_character_set
    decryption = Decryption.new("hello world", "01234", "220489")

    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]

    assert_equal expected, decryption.character_set
  end

  def test_it_can_decrypt_a_message
    decryption_1 = Decryption.new("keder ohulw", "02715", "040895")
    decryption_2 = Decryption.new("rrjty", "01234", "220489")
    decryption_3 = Decryption.new("o azhbrqy yqbmdbx", "01234", "220489")

    expected_1 = "hello world"
    expected_2 = "hello"
    expected_3 = "encryption is fun"

    assert_equal expected_1, decryption_1.decrypt
    assert_equal expected_2, decryption_2.decrypt
    assert_equal expected_3, decryption_3.decrypt
  end

  def test_it_can_decrypt_a_message_with_characters_not_in_character_set
    decryption_1 = Decryption.new("keder ohulw!", "02715", "040895")
    decryption_2 = Decryption.new("rrjty%$!!", "01234", "220489")
    decryption_3 = Decryption.new("o azhbrqy yqbmdbx?", "01234", "220489")

    expected_1 = "hello world!"
    expected_2 = "hello%$!!"
    expected_3 = "encryption is fun?"

    assert_equal expected_1, decryption_1.decrypt
    assert_equal expected_2, decryption_2.decrypt
    assert_equal expected_3, decryption_3.decrypt

    assert_equal 9, decryption_2.decrypt.length
  end

  def test_it_can_rotate_a_character
    decryption = Decryption.new("keder ohulw", "02715", "040895")

    character_1 = "k"
    character_2 = "r"
    index_1 = 0
    index_2 = 4

    assert_equal "h", decryption.rotation(character_1, index_1)
    assert_equal "o", decryption.rotation(character_2, index_2)
  end





end
