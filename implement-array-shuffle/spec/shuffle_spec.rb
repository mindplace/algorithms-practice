require 'rspec'
require_relative '../shuffle'

describe 'shuffle' do
  it 'returns a collection containing the elements in the input' do
    letters = [:a, :b, :c, :d, :e]
    shuffled_letters = shuffle(letters)

    expect(shuffled_letters).to match_array [:a, :b, :c, :d, :e]
  end

  it 'changes the order of the elements' do
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
    shuffled_numbers = shuffle(numbers)

    expect(shuffled_numbers).to_not eq [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
  end

  it 'does not alter its input' do
    letters = [:a, :b, :c]

    expect { shuffle(letters) }.to_not change { letters }
  end
end
