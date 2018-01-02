def translate(string) 
  returning_string = [] 
  
  string.split.each do |word| 
    punctuation = ""
    if word.match(/[.!:,]/)
      punctuation = word.split("").select{|char| char.match(/[.!:,]/)}.join
      word = word.delete(punctuation.to_s)
    end

    if word == word.capitalize
      capitalize = :true
    else
      capitalize = :false
    end
    
    word = word.downcase
    vowel_index = word.index(/[aeiou]/)
    vowel_index += 1 if (word[vowel_index] == "u" && word[vowel_index - 1] == "q")
    
    if vowel_index != 0
      new_word = word[vowel_index..-1] + word[0...vowel_index] + "ay" + punctuation
      new_word = new_word.capitalize if capitalize == :true
      returning_string << new_word
    else
      new_word = word + "ay" + punctuation
      new_word = new_word.capitalize if capitalize == :true
      returning_string << new_word
    end
  end
  
  returning_string.join(" ")
end