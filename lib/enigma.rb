require 'date'
require './lib/encryption'
require './lib/decryption'
require './lib/shift'

class Enigma
  attr_reader :key, :date, :character_set

  def initialize
    @key = key
    @date = date
    @character_set = ("a".."z").to_a << " "
  end

  def key_generator
    ('0'..'99999').to_a.sample.rjust(5, '0')
  end

  def date_generator
    Date.today.strftime('%d%m%y')
  end

  def encrypt(message, key = key_generator, date = date_generator)
    encrypt_output = Encryption.new(message, key, date)
    {encryption: encrypt_output.encryption, key: key, date: date}
  end

  def decrypt(message, key = key_generator, date = date_generator)
    decrypt_output = Decryption.new(message, key, date)
    {decryption: decrypt_output.decryption, key: key, date: date}
  end

end
