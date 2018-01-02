class Timer
    attr_accessor :seconds
    
    def seconds
        @seconds = 0
    end
    
    def padded(num)
        num < 10 ? "0#{num}" : "#{num}"
    end
    
    def time_string
        second = @seconds % 60
        minute = ((@seconds - second) / 60) % 60
        hour = (@seconds - (second + (minute*60))) / (60*60)
        
        "#{padded(hour)}:#{padded(minute)}:#{padded(second)}"
    end
end