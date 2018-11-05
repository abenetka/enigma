class Decryption
  attr_reader :message, :key, :date, :shift

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @shift = Shift.new(key, date)
  end

  def char_set
    ("a".."z").to_a << " "
  end

  def split_message
    message.chars
  end

  def decryption
    new_message = split_message.each_with_index.map do |character, index|
      rotation = @shift.shifter(index)
      char_index = char_set.index(character)
      total_rot = char_index - rotation
      char_set.rotate(total_rot).first
    end
    new_message.join
  end








end