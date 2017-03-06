def translate(word)

  vowels = ["a", "e", "i", "o", "u"]
  ending = ""
  w_counter = 0
  temp = 0
  qu = false
  #move input to array in case of multiple words
  word_array = word.split(" ")
  answer_array = []

#one word at a time, run through for vowel/consonants
word_array.each do |wordy|

word = wordy

#check first letter against vowels
while w_counter < word.length 
  	

for i in 0..4
   #if this vowel matches, break out
    if word[w_counter] == vowels[i]
      temp = w_counter
      w_counter = word.length + 1
    #if this vowel doesn't match, test next vowel
    elsif word[w_counter] != vowels[i]
      next
    end
end

if word[w_counter, (w_counter + 2)] == "qu"
	qu = true
end
 

  w_counter = temp
  #check if vowel; if not, move to ending holder and test next letter as vowel
  if vowels.include? ((word[w_counter]).to_s)
    break
  #check if qu is in word
  elsif qu
    ending += (word[w_counter, (w_counter + 2)]).to_s
    word = word[(w_counter + 2), (word.length - 1)]
    w_counter = word.length + 1
    qu = false
  else	
    ending += (word[w_counter]).to_s
    word = word[1, (word.length - 1)]
    w_counter = 0
  end
end
#add ay to any consonants in ending then append ending to remainder of word
ending += "ay"
word += ending
wordy = word
#push changed word to answer array
answer_array.push wordy
#reset ending to avoid double ay
ending = ""
end

word = answer_array.join(" ")

return word

end


