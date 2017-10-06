
def selection_sort(array)
    array.each_index do |i|
        break if i == array.length - 1                

        current = array[i]
        smaller = array[i]
        smaller_index = i

        array.each_with_index do |item, j|
            next if j <= i
            if item < smaller
                smaller = item 
                smaller_index = j
            end
        end

        if smaller < current 
            array[smaller_index], array[i] = array[i], array[smaller_index]
        end
    end
    p array
end

selection_sort([4, 7, 1, 2, 4, 2, 9, 7])