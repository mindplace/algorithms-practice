def quick_sort(array)
  if array.length <= 1
    return array
  end

  pivot = rand(array.length - 1)

  slice_left = []
  slice_right = []
  pivot_slices = [] # holds on to pivot duplicates

  array.each_index do |j|
    slice_left << array[j] if array[j] < array[pivot]
    slice_right << array[j] if array[j] > array[pivot]
    pivot_slices << array[j] if array[j] == array[pivot]
  end

  puts "left slice is #{slice_left}, pivot is #{array[pivot]}, right slice is #{slice_right}"

  p quick_sort(slice_left) + pivot_slices + quick_sort(slice_right)
end

p quick_sort([9,1,8,3,2,5,6,4,7,3,4,2,1,8,5,6,9])
