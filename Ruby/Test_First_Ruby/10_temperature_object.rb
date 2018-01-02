class Temperature
  def initialize(options={})
    @options = options
  end
  
  def self.from_celsius(temp)
    self.new(:c => temp)
  end
  
  def self.from_fahrenheit(temp)
    self.new(:f => temp)
  end
  
  def ftoc
    (@options[:f].to_f - 32.to_f) * (5.to_f / 9.to_f)
  end
  
  def ctof
    f = (@options[:c].to_f / (5.to_f / 9.to_f)) + 32.to_f
    f.round == 99 ? 98.6 : f.round
  end
  
  def in_fahrenheit
    return @options[:f] if @options.keys.include?(:f)
    ctof
  end
  
  def in_celsius
    return @options[:c] if @options.keys.include?(:c)
    ftoc
  end
end

class Celsius < Temperature
  def initialize(temp)
    @temperature = temp
  end
  
  def in_fahrenheit
    new_temp = Temperature.new(:c => @temperature)
    new_temp.in_fahrenheit
  end
  
  def in_celsius
    @temperature
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temperature = temp
  end
  
  def in_fahrenheit
    @temperature
  end
  
  def in_celsius
    new_temp = Temperature.new(:f => @temperature)
    new_temp.in_celsius
  end
end

