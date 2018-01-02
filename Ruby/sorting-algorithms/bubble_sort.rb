def bubble_sort(array)
    sorted = false
    while sorted == false
        array.each_index do |i|
            a = array[i]
            b = array[i + 1]
            
            if b == nil
                sorted = true
                break
            elsif a > b 
                sorted = false
                array[i], array[i + 1] = array[i + 1], array[i]
                break
            end
        end
    end
    p array
end


bubble_sort([4,3,6, 11, 9])