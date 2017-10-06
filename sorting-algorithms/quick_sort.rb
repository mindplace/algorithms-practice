def quick_sort(array, pivot=-1)
    puts "array is #{array}, pivot is #{array[pivot]}"
    
    if array.empty? || array.length == 1
        return array 
    end 
    
    slice_left = []
    slice_right = []
    pivot_slices = []
    
    array.each_index do |j|
        next if j == pivot
        slice_left << array[j] if array[j] < array[pivot]
        slice_right << array[j] if array[j] > array[pivot]
        pivot_slices << array[j] if array[j] == array[pivot]
    end
    puts "left slice is #{slice_left}, pivot is #{array[pivot]}, right slice is #{slice_right}"
    
   p quick_sort(slice_left) + pivot_slices + [array[pivot]] + quick_sort(slice_right)
end

p quick_sort([9,1,8,3,2,5,6,4,7,3,4,2,1,8,5,6,9])