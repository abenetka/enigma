class Decryption
  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def char_set
    ("a".."z").to_a << " "
  end

  def split_message
    message.chars
  end

  def decryption
    new_message = split_message.each_with_index.map do |character, index|
      rotation = shifter(index)
      char_index = char_set.index(character)
      total_rot = char_index - rotation
      char_set.rotate(total_rot).first
    end
    new_message.join
  end

  def shifter(index)
    shift = Shift.new(@key, @date)
    shift_index = index % 4
    return shift.total_shift_a if shift_index == 0
    return shift.total_shift_b if shift_index == 1
    return shift.total_shift_c if shift_index == 2
    return shift.total_shift_d if shift_index == 3
  end






end
