def echo(a)
	a.to_s
end

def shout(a)
	a.to_s.upcase
end

def repeat(a, y=2)
	answer = (a + " ") * y
	return answer[0..-2]
end

def start_of_word(a, b)
	return a[0..b-1]
end

def first_word (a)
	array = a.split(" ")
	return array[0].to_s
end

def titleize(a)
	array = a.split(" ")
	exlusions = %w(and the)
	array.each do |word|
		if word == array[0]
		next
		elsif

		
		end
	end
	array.join(" ")
end


