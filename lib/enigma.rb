class Enigma

  def initialize
    @key = key
    @date = date
    @character_set = ("a".."z").to_a << " "
    binding.pry
  end

  # def key_generator
  #   ('0'..'99999').to_a.sample.rjust(2, '0')
  #   binding.pry
  # end



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



end
