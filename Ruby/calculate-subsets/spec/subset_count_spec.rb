require 'rspec'
require_relative '../subset_count'

describe 'calculating the number of subsets' do
  it 'zero subsets if zero options to choose from' do
    expect(subset_count(0, 5)).to be_zero
  end

  it 'one subset of size zero' do
    expect(subset_count(5, 0)).to eq 1
  end

  it 'number of size-one subsets is equal to the number of options' do
    expect(subset_count(18, 1)).to eq 18
  end
end
