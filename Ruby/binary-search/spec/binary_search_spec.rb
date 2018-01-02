require_relative '../binary_search'

describe 'binary_search' do
  let(:array) { [1, 3, 6, 8, 33, 76, 88, 89, 90, 91, 95, 96, 101] }

  it "returns 9 as the index when searching for 91" do
    expect(binary_search(array, 91)).to eq(9)
  end

  it "returns 4 as the index when searching for 33" do
    expect(binary_search(array, 33)).to eq(4)
  end

  it "returns -1 when searching for a number that isn't in the array" do
    expect(binary_search(array, 34)).to eq(-1)
  end
end


describe 'binary_search_include?' do
  let(:array) { [1, 3, 6, 8, 33, 76, 88, 89, 90, 91, 95, 96, 101] }

  # don't know how to implement this: want to see that method binary_search_include? called binary_search
  # it "relies on binary_search" do
  #   expect(binary_search_include?(array, 96)).to have_received(:binary_search).with(array, 96)
  # end

  it "returns true if item is present in the array, else false" do
    expect(binary_search_include?(array, 76)).to eq(true)
    expect(binary_search_include?(array, 34)).to eq(false)
  end
end
