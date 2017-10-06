def from_binary(number)
  number_array = number.to_s.chars.reverse
  returning = 0
  number_array.each_with_index do |item, i|
    location = 2 ** i
    returning += (location * item.to_i)
  end
  returning
end

# puts from_binary(101) # 5
# puts from_binary(1000) # 8
puts from_binary(11001)

def to_binary(number)
  returning = []

  if number.odd?
    returning << 1
    number -= 1
  end

  while number > 0
    i = 1
    while 2 ** i <= number
      if 2 ** (i + 1) > number
        returning[i] = 1
        number -= (2 ** i)
        break
      end
      i += 1
    end
  end
  returning.map{|num| num.nil? ? "0" : "#{num}"}.reverse.join.to_i
end

# puts to_binary(9)
