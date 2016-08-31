require 'pry'
require './lib/decryptor'
require './lib/encryptor'


class Enigma

  def initialize
    @decryptor = Decryptor.new
    @encryptor = Encryptor.new
  end


  def encrypt(message)
    @encryptor.encrypt(message)

  end

  def decrypt(message)
    @decryptor.decrypt(message)
  end


end

puts e = Enigma.new
puts output = e.encrypt("hello")
puts output
puts e.decrypt(output)
