def caesar_cipher2(text,shift)
   letters = ('a'..'z').to_a
   all_letters = letters +  letters.map { |l| l.upcase }
   code_letters= letters.rotate(shift)
   code_letters += code_letters.map  {|l| l.upcase }
   text.tr(all_letters.join(""),code_letters.join(""))
end







print caesar_cipher2("What a string!",5) #Bmfy f xywnsl!
