require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryption'
require 'date'
require 'pry'

class EncryptionTest < Minitest::Test
  def test_it_exists
     encryption = Encryption.new
     assert_instance_of Encryption, encryption
  end

end
