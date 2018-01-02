require_relative('../pig_latin')

describe 'Converting single words to Pig Latin' do
  it "returns the word when the word begins with a vowel" do
    expect(word_to_pig_latin("animal")).to eq "animal"
  end

  it "works for words when word begins with consonant" do
    expect(word_to_pig_latin("chatter")).to eq "atterchay"
  end

  it "works for exceptions like 'query'" do
    expect(word_to_pig_latin("query")).to eq "eryquay"
  end
end

describe 'Converting a sentence to Pig Latin' do
  it "returns a string" do
    expect(sentence_to_pig_latin("I am cat.")).to be_instance_of(String)
  end

  it "pig latinizes each word" do
    expect(sentence_to_pig_latin("thank goodness for toilet paper")).to eq("ankthay oodnessgay orfay oilettay aperpay")
  end

  it "preserves punctuation" do
    expect(sentence_to_pig_latin("woman: without her, man is nothing.")).to eq("omanway: ithoutway erhay, anmay is othingnay.")
  end

  it "preserves capitalization" do
    expect(sentence_to_pig_latin("Woman: without her, Man is NOTHING!!!")).to eq("Omanway: ithoutway erhay, Anmay is OTHINGNAY!!!")
  end
end
