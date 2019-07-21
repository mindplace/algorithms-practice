# You have an array of integers, and for each index you want to find the product
# of every integer except the integer at that index.
# Write a function get_products_of_all_ints_except_at_index() that takes an array
# of integers and returns an array of the products.

def get_product_of_all_ints_except_at_index(integers)
  array_product = integers.inject(&:*)
  integers.map { |int| array_product / int }
end

p get_product_of_all_ints_except_at_index([1, 7, 3, 4]) == [84, 12, 28, 21]
