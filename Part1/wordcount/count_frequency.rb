def count_frequency(words)
	counts = Hash.new(0)
	for word in words
		counts[word] += 1
		puts word
	end
	counts
end

