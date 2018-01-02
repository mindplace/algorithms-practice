def fizzbuzz
  1.upto(30) do |num|
    x = ""
    x << "Fizz" if num % 3 == 0
    x << "Buzz" if num % 5 == 0
    x = num if x.empty?
    puts x
  end
end

fizzbuzz
