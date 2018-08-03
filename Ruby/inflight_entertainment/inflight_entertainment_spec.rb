require 'rspec'
require_relative 'inflight_entertainment.rb'

describe "#movie_combination_available?" do
  it "requires flight_lengths and movie_lengths arguments" do
    expect{ movie_combination_available? }.to raise_error(ArgumentError)
  end

  context "when movie lengths are [5, 10, 14, 20]" do
    let(:movie_lengths) { [5, 10, 14, 20] }

    it "returns true when flight length is 30" do
      expect(movie_combination_available?(flight_length: 30, movie_lengths: movie_lengths)).to eq(true)
    end

    it "returns false when flight length is 31" do
      expect(movie_combination_available?(flight_length: 31, movie_lengths: movie_lengths)).to eq(false)
    end
  end

end
