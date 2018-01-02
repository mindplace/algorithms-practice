# --- Normalize an integer -----------------------------------

def normalize_integer(integer)
  integers = integer.to_s.split("")
  groups = []

  integers.reverse.each_with_index do |int, i|
    last_group_index = groups.length - 1

    if i == 0
      groups << int
      next
    end

    if groups[last_group_index].length == 3
      groups[last_group_index] = groups[last_group_index] << ","
      groups << int
    else
      groups[last_group_index] = groups[last_group_index] << int
    end
  end

  groups.join("").reverse
end

# --- Tests --------------------------------------------------
require 'rspec'


describe "#normalize_integer" do
  it "returns '500' when given 500" do
    expect(normalize_integer(500)).to eq('500')
  end

  it "returns '5,000' when given 5000" do
    expect(normalize_integer(5000)).to eq('5,000')
  end

  it "returns '50,000' when given 50000" do
    expect(normalize_integer(50000)).to eq('50,000')
  end
end
