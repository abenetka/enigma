require './lib/enigma'
engima = Enigma.new

message = File.open(ARGV[0], "r")
incoming_message = message.read
message.close

encrypted = enigma.encrypt(message, key, date)

encrypted = File.open(ARGV[1], "w")

writer.write(encrypted)

writer.close

p "Created '#{ARGV[1]}' with the key #{key} and date #{date}"
