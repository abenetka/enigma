require './lib/shift'

class Encryption
  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def shift
    Shift.new(@key, @date)
  end

  def char_set
    ("a".."z").to_a << " "
  end

  def split_message
    message.chars
  end

  def encryption
    new_message = split_message.each_with_index.map do |character, index|
      rotation = shifter(index)
      char_index = char_set.index(character)
      total_rot = char_index + rotation
      char_set.rotate(total_rot).first
    end
    new_message.join

  end

  def shifter(index)
    shift_index = index % 4
    return shift.total_shift_a if shift_index == 0
    return shift.total_shift_b if shift_index == 1
    return shift.total_shift_c if shift_index == 2
    return shift.total_shift_d if shift_index == 3
  end

end









# binding.pry
# end
# split_message.each do |character|
#   split_message.index = index
#   shifter(index)
#   binding.pry
# end
#
# # binding.pry
# split_message.each do |array|
#   array.each do |character|
#     binding.pry
#     charset = ("a".."z").to_a << " "
#     index = charset.index(character)
#     # binding.pry
#   end
# end

  #1.take message and chars it for index numbers
  #2. split message into little arrays(size 4)
  #3. based on index number, apply shift


#   def encrypt(message, key, date)
#     #message: breakdown string and iterate through array of characters
#     #key and date passed into shift class , shift class gives back ABCD shifts
#     #use ABCD shifts to apply encryption to message-- iterate through character map
#     #to locate new shifted values of message
#
#     split_message = message.chars
#     num_of_abcds = split_message.length.to_f / 4
#     shift = Shift.new(key, date)
#     keys_array = shift.shift_hash.keys
#     keys_array * num_of_abcds = num_of_iterations through message
#
#     shift_A = shift_hash["A"]
#     shift_B = shift_hash["B"]
#     shift_C = shift_hash["C"]
#     shift_D = shift_hash["D"]
#
#     A = index[0, 4, 8,
#
#
#     for split_message[0],
#     @character_set.rotate(shift_A).first
#
#     split_message.map do |letter|
#       letter = @character_set.rotate(shift_A).first
#     end
#     #{A=> 2, B=> 25, C=> 45, D => 20}
#     # split_message.map do |letter|
# # :encryption => the encrypted String
# # :key => the key used for encryption as a String
# # :date => the date used for encryption as a String in the form DDMMYY
#   end
