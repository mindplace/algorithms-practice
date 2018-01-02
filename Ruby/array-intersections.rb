# --- Array Intersections ------------------------------------
# Given two arrays of integers, determine if both arrays
# contain the same elements, i.e. [1,2,3,4,5] and [5,4,3,2,1].

def array_intersections(first = [], second = [])
  return false unless first.length == second.length

  first.each do |item|
    return false unless second.include?(item)
    second.delete_at(second.index(item))
  end

  second.length == 0
end

# --- Tests ---------------------------------------------------
require 'rspec'

describe "#array_intersections" do
  context "when first or second array have no items" do
    it "returns true" do
      expect(array_intersections([], [])).to be(true)
    end
  end

  context "when first and second array contain identical items" do
    it "returns true if the items are in the same order" do
      expect(array_intersections([1, 2, 3, 4], [1, 2, 3, 4])).to be(true)
    end

    it "returns true if the items aren't in the same order" do
      expect(array_intersections([1, 2, 4, 3], [1, 2, 3, 4])).to be(true)
    end
  end

  context "when first and second array don't contain identical items" do
    it "returns false even if first array contains all items of second array" do
      expect(array_intersections([1, 1, 1, 1], [1, 2, 3, 4])).to be(false)
    end
  end
end
