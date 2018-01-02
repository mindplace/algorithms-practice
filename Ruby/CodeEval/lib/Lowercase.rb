lines = File.readlines(ARGV[0]).map(&:downcase)
lines.each do |line|
    puts line
end
