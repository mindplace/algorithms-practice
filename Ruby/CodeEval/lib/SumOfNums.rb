def sum_of_nums
    lines = File.readlines(ARGV[0]).map(&:chomp)
    puts lines.map(&:to_i).inject(:+)
end

sum_of_nums