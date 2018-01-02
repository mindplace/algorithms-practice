# get number
# divide by 2, or whatever prime, then save the result
# if result is prime, push it and you're done


def prime_factorization(num)
  range = [0, 0, 2]
  (3..1000000).each do |number|
    number.odd? ? range << number : range << 0
  end

  i = range[3]
  while true
    (i*i).step(1000000, i) do |j|
      range[j] = 0
    end

    i = range.find{|k| k > i}
    break if i*i > range.length
  end

  prime_factors = []
  remainder = num

  range.each do |prime|
    next if prime == 0
    while remainder % prime == 0
      remainder = remainder / prime
      prime_factors << prime
      break if remainder == 1
    end
    break if remainder == 1
  end

  prime_factors
end

p prime_factorization(6)
p prime_factorization(8)
p prime_factorization(123123123)
