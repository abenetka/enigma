require './lib/enigma'
engima = Enigma.new

message = File.open(ARGV[0], "r")
incoming_message = message.read
message.close

encrypted = enigma.encrypt(incoming_message, key, date)

encryption = File.open(ARGV[1], "w")

encryption.write(output_of_encryption)

writer.close

p "Created '#{ARGV[1]}' with the key #{key} and date #{date}"
