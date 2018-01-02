def get_multiples(n)
    multiples = []
    (1..12).to_a.each do |num|
        multiples << num * n
    end
    multiples.map{|item| item.to_s.rjust(5)}.join
end

def puts_multiples
    array = (1..12).to_a
    array.each do |item|
        puts get_multiples(item)
    end
end

puts_multiples
