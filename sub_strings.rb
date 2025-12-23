def substrings(string,dictionary)
string=string.downcase
 dictionary.reduce({})do|hash,word|
  if string.include?(word)
    count=0
    (string.length-word.length+1).times{|index| count=count+1 if word.eql?(string[index,word.length])}
    hash[word]=count
  end
  hash
end

end

   dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
   puts substrings("Howdy partner, sit down! How's it going?", dictionary)
  

 
