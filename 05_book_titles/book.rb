class Book

def title
	@title
end

def title=(title)
	@title = format(title)
end

private

def format(title)
	lower_words = %w(and if but or on in the of a an)
	title_words = title.split(" ")
	title_words.each do |word|
		if lower_words.include? (word) and word != title_words[0]
			next
		else 
			word.capitalize!
		end
	end
	@title = title_words.join(" ")
end

end

