def substrings(string, dictionary)
	sub_strings = Hash.new(0)
	downcased = string.split.map { |word| word.downcase }

	dictionary.each do |word|

		downcased.each do |check|

			if check.include? word

				sub_strings[word] += 1
				
			end
			
		end
		
	end
	
	sub_strings

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

result = substrings("Howdy partner, sit down! How's it going?", dictionary)

print result