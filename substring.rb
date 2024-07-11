def substrings(str, dict)
  word_arr = str.split(" ")

  dict.reduce(Hash.new(0)) do |word_count_hash, word| 
    for str_component in word_arr
      word_count_hash[word] += 1 if str_component.downcase.include?(word)
    end
    word_count_hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)