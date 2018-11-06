require './lib/enigma'
enigma = Enigma.new

message = File.open(ARGV[0], "r")
incoming_message = message.read
message.close

key = ARGV[2]
date = ARGV[3]
decrypted = enigma.decrypt(incoming_message, key, date)

decryption = File.open(ARGV[1], "w")
output_of_decryption = decrypted[:decryption]

decryption.write(output_of_decryption)

decryption.close

p "Created '#{ARGV[1]}' with the key #{key} and date #{date}"
