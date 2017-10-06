def word_to_pig_latin(word)
  return word if word[0].match(/[aeiou]/)
  index = word.chars.index{|letter| letter.match(/[aeiouy]/)}
  index += 1 if word[0..index] == "qu"
  word[index..-1] + word[0...index] + "ay"
end

def sentence_to_pig_latin(sentence)
  sentence = sentence.split
  returning = []

  sentence.each do |word|
    capitalize = true if word == word.capitalize
    shouted = true if word == word.upcase

    punctuation = word.scan(/\W+/).join

    if punctuation.length > 0
      index = word.chars.index(punctuation[0])
      translated = word_to_pig_latin(word.downcase[0...index]) + punctuation
    else
      translated = word_to_pig_latin(word.downcase)
    end

    translated = translated.upcase if shouted
    translated = translated.capitalize if capitalize
    returning << translated
  end

  returning.join(" ")
end
