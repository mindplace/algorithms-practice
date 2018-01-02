def helper(line)
    array = line[0].chomp.split.map(&:to_i)
    p array
    #iteration = line[1].to_i
    #i = 0
    sorted = false
    until sorted
        array.each_index do |x|
            if array[x + 1] == nil
                sorted = true
                break
            end
            if array[x] > array[x + 1]
                array[x], array[x + 1] = array[x + 1], array[x]
                sorted = false
                #break
            end
        end
        p array
        #i += 1
    end
    array.join(" ")
end

def get_lines
    lines = File.readlines(ARGV[0]).map(&:chomp)
    lines = lines.map{|line| line.split("|")}
    lines.each{|line| puts helper(line)}
end

get_lines
