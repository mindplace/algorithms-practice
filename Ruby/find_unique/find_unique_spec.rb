require 'rspec'
require_relative 'find_unique'

describe "Iterative unique search" do
  it "returns true for basic case" do
    example = "abcde"
    expect(iterative_all_unique?(example)).to eq(true)
  end

  it "returns true when string has spaces" do
    example = "ab c de"
    expect(iterative_all_unique?(example)).to eq(true)
  end

  it "detects non-unique and returns false" do
    example = "abbe"
    expect(iterative_all_unique?(example)).to eq(false)
  end

  it "detects non-unique with capitals" do
    example = "aBbe"
    expect(iterative_all_unique?(example)).to eq(false)
  end
end

describe "Recursive unique search" do
  it "returns true for basic case" do
    example = "abcde"
    expect(recursive_all_unique?(example)).to eq(true)
  end

  it "returns true when string has spaces" do
    example = "ab c de"
    expect(recursive_all_unique?(example)).to eq(true)
  end

  it "detects non-unique and returns false" do
    example = "abbe"
    expect(recursive_all_unique?(example)).to eq(false)
  end

  it "detects non-unique with capitals" do
    example = "aBbe"
    expect(recursive_all_unique?(example)).to eq(false)
  end
end
