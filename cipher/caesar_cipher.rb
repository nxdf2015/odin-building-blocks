

class String
  def upcase?
    self == self.upcase
  end
end

class Cipher
  Letters = ('a'..'z').to_a

  def initialize(shift = 0)
    @shift = shift
    @dict_letters= dict_letters
  end

  def code_text(text)
    text.split(" ").map {|word|
      word.gsub(/\w/) { |letter|
        l = @dict_letters[letter.downcase]
        l.upcase! if letter.upcase?
        l}}.join(" ")
  end

  private
  def dict_letters
    ls = Letters.map do |letter| [letter ,  code_letter(letter)] end
    Hash[ls]
  end


  def code_letter (letter)
    indice = ((Letters.join("") =~ /#{letter}/) + @shift).modulo(Letters.length)
    Letters[indice]
  end

end

def caesar_cipher(text,shift)
  cipher  = Cipher.new(shift)
  cipher.code_text(text)
end



#print caesar_cipher("What a string!",5) #Bmfy f xywnsl!

 
