# You have an array of integers, and for each index you want to find the product
# of every integer except the integer at that index.
# Write a function get_products_of_all_ints_except_at_index() that takes an array
# of integers and returns an array of the products.

class Array
  def exclude_index(index)
    self.map.with_index do |item, i|
      i == index ? nil : item
    end.compact
  end
end

def get_product_of_all_ints_except_at_index(array)
  array.map.with_index do |num, i|
    array.exclude_index(i).inject(:*)
  end
end


p get_product_of_all_ints_except_at_index([1, 7, 3, 4]) # => [84, 12, 28, 21]
