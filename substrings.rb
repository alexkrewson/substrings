def substrings(word, dictionary)

    @matchHash = {}
   
    dictionary.each do |dictionaryWord|

        totalMatches = word.to_s.downcase.scan(dictionaryWord).length
        @matchHash.merge! dictionaryWord => totalMatches if totalMatches > 0

    end

    puts @matchHash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# substrings("Howdy partner, sit down! How's it going?", dictionary)
substrings("below", dictionary)
 