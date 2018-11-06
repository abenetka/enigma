require './lib/shift'

class Encryption
  attr_reader :message, :key, :date, :shift, :character_set

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    @shift = Shift.new(key, date)
    @character_set = ("a".."z").to_a << " "
  end

  def split_message
    message.downcase.chars
  end

  def encryption
    new_message = split_message.each_with_index.map do |character, index|
      # binding.pry
      char_index = @character_set.index(character)
      if char_index
        rotation = @shift.shifter(index)
        total_rot = char_index + rotation
        @character_set.rotate(total_rot).first
      else
        character
      end
    end
    new_message.join
  end

end
