def fibonacci
    numbers = File.readlines(ARGV[0]).map(&:chomp).map(&:to_i)
    base = numbers[0]
    nth = numbers[1]
    fib_series = [base, base]
    until fib_series.length == nth 
        fib_series << fib_series[-1] + fib_series[-2]
    end
    numbers.each{|num| puts fib_series[num]}
end

fibonacci
    