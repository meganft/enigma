require "./lib/enigma"

enigma = Enigma.new

file_1 = ARGV[0]
file_2 = ARGV[1]

message = open(file_1).read

decrypted_message = enigma.decrypt(message)


target = open(file_2, "w")

target.write(decrypted_message)
