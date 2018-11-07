require 'date'
require './lib/encryption'
require './lib/decryption'
require './lib/shift'

class Enigma

  def key_generator
    ('0'..'99999').to_a.sample.rjust(5, '0')
  end

  def date_generator
    Date.today.strftime('%d%m%y')
  end

  def encrypt(message, key = key_generator, date = date_generator)
    encrypt_output = Encryption.new(message, key, date)
    {encryption: encrypt_output.encrypt, key: key, date: date}
  end

  def decrypt(message, key = key_generator, date = date_generator)
    decrypt_output = Decryption.new(message, key, date)
    {decryption: decrypt_output.decrypt, key: key, date: date}
  end

end
