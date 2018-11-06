require './lib/enigma'
enigma = Enigma.new

message = File.open(ARGV[0], "r")
incoming_message = message.read
message.close

encrypted = enigma.encrypt(incoming_message)

encryption = File.open(ARGV[1], "w")
output_of_encryption = encrypted[:encryption]
key = encrypted[:key]
date = encrypted[:date]

encryption.write(output_of_encryption)

encryption.close

p "Created '#{ARGV[1]}' with the key #{key} and date #{date}"
