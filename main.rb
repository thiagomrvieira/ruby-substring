dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(sentence, dictionary)
  # Split the sentence into words, removing punctuation and extra spaces
  words = sentence.downcase.scan(/\w+/)

  word_count = dictionary.each_with_object(Hash.new(0)) do |dict_word, hash|
    words.each do |word|
      if word.include?(dict_word)
        hash[dict_word] += 1
      end
    end
  end

  word_count
end

result = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts result
# Expected output: {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
