# Numbers to English Words
# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Initial Solution

def into_words(num)
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  if num == 0
    return "zero"
  elsif num % 10 == 0 && num < 100
    return tens[(num / 10) - 1]
  elsif num < 20
    return teens[(num - 10) - 1] if num > 10
    return ones[(num - 1)]
  end

  tens_place = num.to_s[0].to_i - 1
  ones_place = num.to_s[1].to_i - 1
  return "#{tens[tens_place]}-#{ones[ones_place]}"
end

# Tests
puts into_words(1) == "one"
puts into_words(11) == "eleven"
puts into_words(22) == "twenty-two"
puts into_words(99) == "ninety-nine"


# Refactored Solution
def into_bigger_words(num)
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  if num == 0
    return "zero"
  elsif num % 10 == 0 && num < 100
    return tens[(num / 10) - 1]
  elsif num < 20
    return teens[(num - 10) - 1] if num > 10
    return ones[(num - 1)]
  end

  if num < 100
    tens_place = num.to_s[0].to_i - 1
    ones_place = num.to_s[1].to_i - 1
    return "#{tens[tens_place]}-#{ones[ones_place]}"
  end

  if num < 1000
    hundreds = num.to_s[0].to_i
    hundreds = "#{into_words(hundreds)} hundred"
    tens_place = num.to_s[1..-1].to_i
    if tens_place > 0
      tens_place = "#{into_words(tens_place)}"
      return "#{hundreds} and #{tens_place}"
    else
      return hundreds
    end
  end

  if num < 1000000
    thousands = num.to_s.reverse[3..-1].reverse.to_i
    hundreds = num.to_s.reverse[0..2].reverse.to_i
    if hundreds > 0
      return "#{into_bigger_words(thousands)} thousand, #{into_bigger_words(hundreds)}"
    else
      return "#{into_bigger_words(thousands)} thousand"
    end
  end
end

# Tests
puts into_bigger_words(187) == "one hundred and eighty-seven"
puts into_bigger_words(998) == "nine hundred and ninety-eight"
puts into_bigger_words(806) == "eight hundred and six"
puts into_bigger_words(23895) == "twenty-three thousand, eight hundred and ninety-five"
puts into_bigger_words(762901) == "seven hundred and sixty-two thousand, nine hundred and one"
