require 'rspec'
require_relative 'sum-triangle-nums'

# sum up all the right-most numbers from the triangle.

# Example: n = 4

# 1
# 2 3
# 4 5 6
# 7 8 9 10

# => 1 + 3 + 6 + 10 = 20

describe "Sum triangle numbers" do
  it "returns 20 when given 4" do
    expect(sum_triangle_nums(4)).to eq(20)
  end

  it "returns 4 when given 2" do
    expect(sum_triangle_nums(2)).to eq(4)
  end
end
