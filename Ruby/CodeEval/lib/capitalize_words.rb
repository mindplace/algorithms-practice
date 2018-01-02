def helper(line)
    newline = []
    line.split.map do |word|
        word[0] = word[0].capitalize
        newline << word
    end
    newline.join(" ")
end

def capitalize
    lines = File.readlines(ARGV[0]).map(&:chomp)
    lines.each{|line| puts helper(line)}
end

capitalize
