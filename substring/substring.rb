

def substrings(word,dictionnary)
  word.downcase!
  dictionnary.inject(Hash.new(0)) do |acc, word_dict|
   c = word.scan(word_dict).size
   acc[word_dict] += c  if c > 0
   acc 
  end

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
#{"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "sit"=>1, "i"=>3, "it"=>2, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
