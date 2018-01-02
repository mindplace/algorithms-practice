def reverser(line)
   line.reverse.join(" ")
end

def get_lines
    lines = File.readlines(ARGV[0]).map(&:chomp).map(&:split)
    lines.each do |line| 
        next if line.empty?
        puts reverser(line) 
    end
end

get_lines
