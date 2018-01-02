# divide into separate elements - groups of 1
# merge each set of neighbors - groups of 2
# merge each set of neighbor groups by comparing one at a time - groups of 4



def merge_sort(array)
    total_length = array.length
    size = 2
    while size < total_length + 1
        sorted_array = []
        array.each_slice(size).to_a.each do |group|
            slice1 = group[0...(group.length / 2)]
            slice2 = group[(group.length / 2)..-1]
            combined = []
            
            while slice1.length > 0 || slice2.length > 0
            
                if slice1.empty? == false
                    if slice2.empty? || slice1.first < slice2.first
                        combined << slice1.shift
                    elsif slice1.first == slice2.first
                        combined << slice1.shift
                        combined << slice2.shift
                    else
                        combined << slice2.shift
                    end
                    
                elsif slice2.empty? == false
                    if slice1.empty? || slice2.first < slice1.first
                        combined << slice2.shift
                    elsif slice1.first == slice2.first
                        combined << slice1.shift
                        combined << slice2.shift
                    else
                        combined << slice1.shift
                    end
                end
            end
            sorted_array << combined
        end
        array = sorted_array.flatten
        size += 2
    end
    p array
end


merge_sort([50,20,4,5,1,88,199,24])