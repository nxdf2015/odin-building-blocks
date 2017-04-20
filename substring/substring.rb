

def substring_word(word, dict = [] ,acc = {})
  if word.length == 0
    return acc
  end
  words_in_dict =  (0..word.length).map {|i|
    word[0..i]
  } & dict
  words_in_dict.each {|word|
   acc[word] ||= 0
   acc[word] += 1
  }
  return substring_word(word[1..-1],dict,acc)
end

def substrings(text ,dict = [] ,acc = {})
  text.downcase.split(/\s+/).map {|word|
  acc = substring_word(word,dict,acc)
}
acc
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
#{"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "sit"=>1, "i"=>3, "it"=>2, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
