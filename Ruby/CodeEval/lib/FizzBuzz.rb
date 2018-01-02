def convert(line)
    f = line[0].to_i
    b = line[1].to_i
    max = line[2].to_i
	returning = []
	(1..max).each do |num|
		x = ""
		x += "F" if num % f == 0
		x += "B" if num % b == 0
		x = num.to_s if x.empty?
		returning << x 
	end
	returning.join(" ")
end

def get_lines
	lines = File.readlines(ARGV[0]).map(&:chomp).map(&:split)
	lines.each{|line| puts convert(line)}
end

get_lines