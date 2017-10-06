require 'rspec'
require_relative 'marrymap_esther'

describe "abbreviation?" do
  it "returns true for true abbreviations" do
    expect(abbreviation?("hello", "hlo")).to eq(true)
    expect(abbreviation?("hello", "lo")).to eq(true)
  end

  it "returns false for false abbreviations even if searched for word letters are all contained in base word" do
    expect(abbreviation?("hello", "oh")).to eq(false)
    expect(abbreviation?("hello", "le")).to eq(false)
  end

  it "returns false when searched word contains letters not found in base word" do
    expect(abbreviation?("hello", "howl")).to eq(false)
  end
end
