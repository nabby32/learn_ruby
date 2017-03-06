def translate(word)
  vowels = ["a", "e", "i", "o", "u"]
  punctuation = %w(! . ? ; ,)
  ending = ""
  punctuation_holder = ""
  capital = false
  #for multiple words, evaluate one at a time
  words = word.split(" ")
  answer = []

#evaluate each word one at a time
words.each do |wordy|
  if wordy[0] == (wordy[0]).upcase
    capital = true
  end
  wordy = wordy.downcase;

  #move any punctuation to holder for addition later 
  if punctuation.include? (wordy[wordy.length - 1])
    punctuation_holder += (wordy[wordy.length - 1]).to_s
    wordy = wordy[0..-2]
  end

  length = wordy.length
  
  #continue through the word
  while length > 0
    
    #if a vowel matches, break code and skip to ending
    if vowels.include? (wordy[0])
      length = 0
      break
    
    #if qu pops up, treat as single consonant
    elsif wordy[0,2] == "qu"
      ending += wordy[0,2]
      wordy = wordy[2..wordy.length]
      length -= 2

    #if a vowel doesn't match, move letter to ending and move to next letter
    else
      ending += wordy[0]
      wordy = wordy[1..wordy.length]
      length -= 1
    end
  
  end

  ending += "ay"
  wordy += ending
  wordy += punctuation_holder
  if capital = true
    wordy.capitalize!
  end
  answer.push (wordy)
  ending = ""
  punctuation_holder = ""
end

word = answer.join(" ")
return word
end

s = translate("Finally that woman closed the goddamn window!")
puts s 

