def substrings(sentence, dictionary)
  words = sentence.split

  dictionary.each_with_object(Hash.new(0)) do |dict_word, word_count|
    words.each do |word|
      word_count[dict_word] += 1 if word.downcase.include?(dict_word)
    end
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)