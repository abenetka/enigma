class Decryption
  attr_reader :message, :key, :date, :shift, :character_set

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @shift = Shift.new(key, date)
    @character_set = ("a".."z").to_a << " "
  end

  def split_message
    message.chars
  end

  def decrypt
    split_message.each_with_index.map do |character, index|
      rotation(character, index)
    end.join
  end

  def rotation(character, index)
    character_index = @character_set.index(character)
    if character_index
      total_rotation = character_index - @shift.shifter(index)
      @character_set.rotate(total_rotation).first
    else
      character
    end
  end

end
