def binary_search(array, item)
  index = nil
  found = false

  mid_point = array.length / 2
  before = 0
  after = 0

  while found == false
    if array.length < 2 || array[mid_point] == item
      found = true
      if array.length < 2
        index = before + 1 if array[0] == item
        index = -1 if array[0] != item
      elsif array[mid_point] == item
        index = mid_point + before
      end

    elsif array[mid_point] > item
      after += array[mid_point...-1].length
      array = array[0..mid_point]
      mid_point = array.length / 2
    elsif array[mid_point] < item
      before += array[0...mid_point].length
      array = array[mid_point..-1]
      mid_point = array.length / 2
    end
  end

  index
end

puts "2 is in [1,2,3,4,5] at index 1: #{binary_search([1, 2, 3, 4, 5], 2) == 1}"
puts "61 is in [1,3,6,8,9,21,33,46,58,61,89,91] at index 9: #{binary_search([1,3,6,8,9,21,33,46,58,61,89,91], 61) == 9}"
