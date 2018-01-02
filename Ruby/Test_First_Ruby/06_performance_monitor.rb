def measure(num=1)
  averages = []
  num.times do 
    now = Time.now
    yield
    averages << Time.now - now
  end

   averages.inject(:+) / num
end