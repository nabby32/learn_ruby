def echo(input)
	input.to_s
end

def shout(hey)
	hey.to_s.upcase
end

def repeat(umum, y = 2)
	new = ((umum + " ") * y)
	new[0..-2]
end

def start_of_word(word, number)
	
	word[0, number]
end

def first_word(string)
	st_array = string.split(" ")
	return st_array[0]
end

def titleize(word)
	st_array = word.split(" ")
	st_array.each do |wrd|
		if wrd != st_array[0]
			if wrd != "and" and wrd != "the" and wrd != "or"
				wrd.to_s.capitalize!
			end
		else
			wrd.to_s.capitalize!
		end
	end
	st_array.join(" ")
end



