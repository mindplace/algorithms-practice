def duplicate_free_counting_sort(array)
    returning = []
    array.each do |item|
        returning[item] = item
    end
    returning.reject{|x| x.nil?}
end

def counting_sort(array)
end

p duplicate_free_counting_sort([3,8,2,6,5,4])

