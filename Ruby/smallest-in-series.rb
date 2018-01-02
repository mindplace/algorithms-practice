# -- Smallest in Series ----------------------------
# Given a string representing a sentence, split the sentence and return shortest string without using built-in methods/functions. Given an array, return the smallest string.

def strip_punctuation(word)
  punctuation_stripping_regexp = /(.+)([^.,?!-_+=@#$%^&*()])/
  word.match(punctuation_stripping_regexp).to_s
end

def count_letters(word)
  word.scan(/\w/).length
end

def smallest_in_series(item)
  sentence_array = item.is_a?(String) ? item.split : item
  smallest_found = sentence_array.first

  sentence_array.each do |word|
    word = strip_punctuation(word)
    smallest_found = word if count_letters(word) < count_letters(smallest_found)
  end

  smallest_found
end

# ---- Tests -----------------------------------------

require 'rspec'

describe "#smallest_in_series" do
  context "When there is no punctuation" do
    it "returns the smallest word given a string" do
      sentence = "We're walking around with this dog"
      expect(smallest_in_series(sentence)).to eq("dog")
    end

    it "returns smallest word given an array" do
      sentence = ["dog", "happiness", "forever"]
      expect(smallest_in_series(sentence)).to eq("dog")
    end
  end

  context "When the strings include punctuation" do
    it "ignores punctuation to return the smallest word" do
      sentence = "We're going!"
      expect(smallest_in_series(sentence)).to eq("We're")
    end

    it "accurately counts the number of letters to find the smallest word" do
      sentence = ["I'm", "Not"]
      expect(smallest_in_series(sentence)).to eq("I'm")
    end
  end
end
