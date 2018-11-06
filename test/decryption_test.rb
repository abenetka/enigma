require_relative './test_helper'

class DecryptionTest < Minitest::Test
  def test_it_exists
    decryption = Decryption.new("keder ohulw", "02715", "040895")
    assert_instance_of Decryption, decryption
  end

  def test_it_can_decrypt_a_message
    decryption = Decryption.new("keder ohulw", "02715", "040895")

    expected = "hello world"
    assert_equal expected, decryption.decryption
  end

  def test_it_can_decrypt_a_message_with_characters_not_in_character_set
    decryption = Decryption.new("keder ohulw!", "02715", "040895")

    expected = "hello world!"
    assert_equal expected, decryption.decryption
  end




end
