

def caesar_cipher(word, steps)
    alphabet = ("a".."z").to_a
    letters = {}
    alphabet.zip(alphabet.rotate(steps)) {|x,y| letters[x] = y}
    
    word.gsub(/\w/) { |letter|
    isUpper =  letter == letter.upcase
    letter = letter.downcase if isUpper
    c = letters[letter]  
    c =c.upcase   if isUpper
    c
} 
end
