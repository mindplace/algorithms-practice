def multiples(line)
    line = line.split(",").map(&:to_i)
    x = line[0]
    n = line[1]
    base = n
    while base <= x
        base += n 
    end
    base
end

def get_lines
    lines = File.readlines(ARGV[0]).map(&:chomp)
    p lines
    lines.each{|line| puts multiples(line)}
end

get_lines