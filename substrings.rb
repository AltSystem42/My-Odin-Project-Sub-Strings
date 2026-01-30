def substrings(word, dict)
  # Clean up words into an array
  word = word.gsub(/[^A-Za-z0-9\s]/, '').downcase.split(" ")
  #make a hash for word counting
  result = Hash.new(0)
  #take each word and check if it's in the dictionary
  word.each do |drow|
    dict.each do |entry|
      if drow.include?(entry)
        result[entry] += 1
      end
    end
  end
  #return the result sorted and put back to a hash.
  result.sort.to_h
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)