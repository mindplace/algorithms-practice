def longest_lines
    lines = File.readlines(ARGV[0]).map(&:chomp)
    num = lines.shift
    longest = lines.sort_by(&:length).reverse[0...num.to_i]
    longest.each{|line| puts line}
end

longest_lines
