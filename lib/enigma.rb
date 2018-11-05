class Enigma
  attr_reader :key, :date

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
    encryption_hash = Hash.new(0)
    message = Encryption.new(message, key, date)
    encrypted_message = message.encryption
    encryption_hash[:encryption] = encrypted_message
    encryption_hash[:key] = key
    encryption_hash[:date] = date
    encryption_hash
  end






end
