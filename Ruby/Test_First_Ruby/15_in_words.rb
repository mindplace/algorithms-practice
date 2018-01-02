class Fixnum
  def ones_place(integer)
    portion = integer.to_s[-1].to_i
    teen_test = integer.to_s[-2..-1].to_i
    teenager = true if (teen_test > 10 && teen_test < 20)
    return "" if portion == 0 || teenager 
    ones(portion)
  end
  
  def tens_place(integer)
    result = integer / 10
    portion = result.to_s[-1].to_i
    teen_test = integer.to_s[-2..-1].to_i
    teenager = true if (teen_test > 10 && teen_test < 20)
    return "" if portion == 0
    if teenager
      teens(teen_test)
    elsif portion == 1
      ones(10)
    else
      tens(portion)
    end
  end
  
  def hundreds(integer)
    result = integer / 100
    portion = result.to_s[-1].to_i
    return "" if portion == 0
    ones(portion) + " hundred "
  end
  
  def test_and_deliver(result)
    set = {
      :portion_hundred => result.to_s[-3..-1].to_i,
      :portion_tens => result.to_s[-2..-1].to_i,
      :portion_ones => result.to_s[-1].to_i
    }
    
    string = ""
    set.each do |key, value|
      level = set.keys.index(key)
      if value != 0 && level == 0
        string << hundreds(value)
      elsif value != 0 && level == 1
        string << tens_place(value)
      elsif value != 0 && level == 2
        string << ones_place(value)
      end
    end
    
    string 
  end
  
  def test_tester(result, level)
    completed_test = test_and_deliver(result)
    if completed_test.empty?
      ""
    else
      completed_test + level
    end
  end
  
  def thousands(integer)
    result = integer / 1000
    test_tester(result, " thousand ")
  end
  
  def millions(integer)
    result = integer / 1000000
    test_tester(result, " million ")
  end
  
  def billions(integer)
    result = integer / 1000000000
    test_tester(result, " billion ")
  end
  
  def trillions(integer)
    result = integer / 1000000000000
    test_tester(result, " trillion ")
  end
  
  def ones(num)
    hash = {1 => "one", 2 => "two", 3 => "three", 
      4 => "four", 5 => "five", 6 => "six", 7 => "seven",
      8 => "eight", 9 => "nine", 10 => "ten"}
    hash[num]
  end
  
  def teens(num)
    hash = {11 => "eleven", 12 => "twelve", 13 => "thirteen",
      14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
      17 => "seventeen", 18 => "eighteen",  19 => "nineteen"}
    hash[num]
  end
  
  def tens(num)
    hash = {2 => "twenty ", 3 => "thirty ", 4 => "forty ", 
      5 => "fifty ", 6 => "sixty ", 7 => "seventy ",
      8 => "eighty ", 9 => "ninety "}
    hash[num]
  end
  
  def in_words
    return "zero" if self == 0
    number_in_words = ""
    
    number_in_words << trillions(self)
    number_in_words << billions(self)
    number_in_words << millions(self)
    number_in_words << thousands(self)
    number_in_words << hundreds(self)
    number_in_words << tens_place(self)
    number_in_words << ones_place(self)
    
    number_in_words.gsub("  ", " ").strip
  end

end

