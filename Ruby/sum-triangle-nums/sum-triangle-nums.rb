# Sum triangle nums: given a number n,
# sum up all the right-most numbers from the triangle.

# Example: n = 4

# 1
# 2 3
# 4 5 6
# 7 8 9 10

# => 1 + 3 + 6 + 10 = 20

# -------------------------------------------------------------

def sum_triangle_nums(n)
  triangle = array_create(n, [])
  last_nums = triangle.map(&:last).flatten
  last_nums.reduce(:+)
end

def array_create(n, triangle)
  return triangle if triangle.length == n
  start_count = triangle.empty? ? 0 : triangle.last.last
  num_of_objects_needed = triangle.length + 1
  triangle << (start_count + 1 .. start_count + num_of_objects_needed).to_a
  array_create(n, triangle)
end
