def reverser(&block)
    yield.split.map{|word| word.reverse}.join(" ")
end

def adder(num=0, &block)
    num = 1 if num == 0
    yield + num
end

def repeater(num=0, &block)
    return yield if num == 0
    num.times{yield}
end