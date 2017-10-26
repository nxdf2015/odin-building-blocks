
class Cipher 
	def initialize d
		@d = d
		@letter_cipher = tuples 
	end

	def tuples
		letters = ('a'..'z').to_a
		Hash[letters.zip(letters.rotate(@d))]
	end

	def  translate letter
	 if ('a'..'z').include? letter.downcase
	 	c = @letter_cipher[letter.downcase] 
	    letter  = letter == letter.upcase ? c.upcase : c
	 end
	 letter
	end

	def caesar_cipher text 
		text.split('').map {|letter|
	    translate(letter)
	    }.join('')
	end

end


c = Cipher.new 5
puts c.caesar_cipher "What a string!"
