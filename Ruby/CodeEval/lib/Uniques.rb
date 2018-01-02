def uniques
    lines = File.readlines(ARGV[0]).map(&:chomp)
    lines.each do |line|
        puts line.split(",").uniq.join(",")
    end
end

uniques