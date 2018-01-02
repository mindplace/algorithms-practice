# Counting Minutes I
# have the function CountingMinutesI(str) take the str parameter being passed which 
# will be two times (each properly formatted with a colon and am or pm) separated by a 
# hyphen and return the total number of minutes between the two times. The time will 
# be in a 12 hour clock format. For example: if str is 9:00am-10:00am then the output 
# should be 60. If str is 1:00pm-11:00am the output should be 1320.

def to_military(num, letter)
  if letter == "p"
      if num < 12
        hour = (num + 12).to_s
      else 
        hour = num.to_s
      end
      return hour
  elsif letter == "a"
      if num != 12
        hour = num.to_s
      else
        hour = "24"
      end
      return hour
  end
end

def CountingMinutesI(str)
  array = str.split("-")
  array.map! do |item|
    item.index(":") != 2 ? item.insert(0, "0") : item
  end
  both = true if (str.split("").include?("p") && str.split("").include?("a"))
  first = ""
  second = ""
  first_minutes = 0
  second_minutes = 0
  array.each do |item|
    if array.index(item) == 0 
      item = item.split("").reject{|char| char == ":"}
      hours = (item.include?("p") ? 
        to_military(item[0..1].join.to_i, "p") : 
        to_military(item[0..1].join.to_i, "a"))
      minutes = (item[2..3]).join.to_s
      first = (hours + "00").to_i
      first_minutes = minutes
    elsif array.index(item) == 1
      item = item.split("").reject{|char| char == ":"}
      hours = (item.include?("p") ? 
        to_military(item[0..1].join.to_i, "p") : 
        to_military(item[0..1].join.to_i, "a"))
      minutes = (item[2..3]).join.to_s
      second = (hours + "00").to_i
      second_minutes = minutes
    end
  end
  if second <= first && both == true
    second += 2400
  elsif second <= first && second_minutes <= first_minutes
    second += 2400
  end
  difference = ((second - first) / 100) * 60
  difference -= (first_minutes.to_i - second_minutes.to_i)
  difference
end

#puts CountingMinutesI("1:23am-1:08am") #should == 1425
#puts CountingMinutesI("12:30pm-12:00am") #should == 690
#puts CountingMinutesI("1:00pm-11:00am") #should == 1320
#puts CountingMinutesI("12:31pm-12:34pm") #should == 3



## Mean Mode
# have the function MeanMode(arr) take the array of numbers stored in arr and 
# return 1 if the mode equals the mean, 0 if they don't equal each other 
# (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)). 
# The array will not be empty, will only contain positive integers, 
# and will not contain more than one mode. 

def MeanMode(arr)
  mode = arr.sort_by{|num| arr.count(num)}.last
  mean = arr.inject(:+) / arr.length
  mode == mean ? 1 : 0
end

# Dash Insert
# have the function DashInsert(str) insert dashes ('-') between each two odd 
# numbers in str. For example: if str is 454793 the output should be 4547-9-3. 
# Don't count zero as an odd number.

def DashInsert(str)
  array = str.to_s.split("").map{|num| num.to_i}
  new_string = ""
  array.each_with_index do |num, i|
    new_string << num.to_s
    break if i == array.index(array.last)
    new_string << "-" if 
      (num != 0) && 
      (num % 2 != 0) && 
      (array[i + 1] != 0) && 
      (array[i + 1] % 2 != 0)
  end
  new_string
end

#puts DashInsert(99946) #Output = 9-9-946
#puts DashInsert("56730") #Output = 567-30

# Swap Case
# have the function SwapCase(str) take the str parameter and swap the case of 
# each character. For example: if str is "Hello World" the output should be 
# hELLO wORLD. Let numbers and symbols stay the way they are. 

def SwapCase(str)
  str.split("").map{|char| char.swapcase}.join("")
end

#puts SwapCase("Hello-LOL")


# Number Addition
# have the function NumberSearch(str) take the str parameter, search for all 
# the numbers in the string, add them together, then return that final number. 
# For example: if str is "88Hello 3World!" the output should be 91. You will 
# have to differentiate between single digit numbers and multiple digit numbers 
# like in the example above. So "55Hello" and "5Hello 5" should return two 
# different answers. Each string will contain at least one letter or symbol. 

def NumberAddition(str)
  str = str.downcase.split(" ")
  if str.length == 1
      str = str[0].split(/[a-z]/)
  end
  
  num_array = []
  str.each do |set|
      set = set.scan(/[0-9]/).map{|char| char.to_s}.join.to_i
      num_array << set
  end
  num_array.inject(:+)
end

#puts NumberAddition("75Number5") #should == 80
#puts NumberAddition("10 2One Number*1*") #should == 13



# Third Greatest
# have the function ThirdGreatest(strArr) take the array of strings stored in 
# strArr and return the third largest word within in. So for example: if strArr 
# is ["hello", "world", "before", "all"] your output should be world because 
# "before" is 6 letters long, and "hello" and "world" are both 5, but the output 
# should be world because it appeared as the last 5 letter word in the array. If 
# strArr was ["hello", "world", "after", "all"] the output should be after because 
# he first three words are all 5 letters long, so return the last one. The array 
# will have at least three strings and each string will only contain letters. 

def ThirdGreatest(strArr)
  strArr.sort_by{|word| word.length}[-3]
end



# Powers of Two
# have the function PowersofTwo(num) take the num parameter being passed which 
# will be an integer and return the string true if it's a power of two. If it's 
# not return the string false. For example if the input is 16 then your program 
# should return the string true but if the input is 22 then the output should be 
# the string false. 

def PowersofTwo(num)
	i = 2
  while i <= num
    return true if i == num
    i *= 2
  end
  false
end


# Additive Persistence
# have the function AdditivePersistence(num) take the num parameter being passed 
# which will always be a positive integer and return its additive persistence which 
# is the number of times you must add the digits in num until you reach a single digit. 
# For example: if num is 2718 then your program should return 2 because 
# 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9. 

def AdditivePersistence(num)
  persistence = 0
  array = num.to_s.split("")
  return persistence if array.length == 1
  while true
    sum = array.map{|number| number.to_i}.inject(:+)
    persistence += 1
    (array = sum.to_s.split("")) if sum.to_s.length > 1
    break if sum.to_s.length == 1
  end
  persistence
end


# puts AdditivePersistence(2718) #should == 2

# Multiplicative Persistence
# have the function MultiplicativePersistence(num) take the num parameter being 
# passed which will always be a positive integer and return its multiplicative 
# persistence which is the number of times you must multiply the digits in num until 
# you reach a single digit. For example: if num is 39 then your program should return 
# 3 because 3 * 9 = 27 then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4. 

def MultiplicativePersistence(num)
  persistence = 0
  array = num.to_s.split("")
  return persistence if array.length == 1
  while true
    product = array.map{|number| number.to_i}.inject(:*)
    persistence += 1
    (array = product.to_s.split("")) if product.to_s.length > 1
    break if product.to_s.length == 1
  end
  persistence
end


# Off Line Minimum
# have the function OffLineMinimum(strArr) take the strArr parameter being passed 
# which will be an array of integers ranging from 1...n and the letter "E" and 
# return the correct subset based on the following rules. The input will be in the 
# following format: ["I","I","E","I",...,"E",...,"I"] where the I's stand for integers 
# and the E means take out the smallest integer currently in the whole set. When finished, 
# your program should return that new set with integers separated by commas. For example: 
# if strArr is ["5","4","6","E","1","7","E","E","3","2"] then your program should return 4,1,5. 

def OffLineMinimum(strArr)
  new_array = []
  strArr.each_with_index do |char, i|
    next if i == 0 || char != "E"
    slice = strArr[0..(i - 1)].map{|bit| bit.to_i if bit.to_i != 0}
    slice = slice.reject{|num| new_array.include?(num)}
    new_array << slice.select{|num| num.class == Fixnum}.sort[0]
  end
  new_array.join(",")
end

#puts OffLineMinimum(["4","E","1","E","2","E","3","E"]) #should == 4,1,2,3

# Changing Sequence
# have the function ChangingSequence(arr) take the array of numbers stored in arr and 
# return the index at which the numbers stop increasing and begin decreasing or stop 
# decreasing and begin increasing. For example: if arr is [1, 2, 4, 6, 4, 3, 1] then 
# your program should return 3 because 6 is the last point in the array where the numbers 
# were increasing and the next number begins a decreasing sequence. The array will contain 
# at least 3 numbers and it may contains only a single sequence, increasing or decreasing. 
# If there is only a single sequence in the array, then your program should return -1. 
# Indexing should begin with 0. 

def ChangingSequence(arr)
  arr.each_with_index do |num, i|
    next if i == 0
    break if i == arr.length - 1
    return i if num > arr[i - 1] && num > arr[i + 1]
    return i if num < arr[i - 1] && num < arr[i + 1]
  end
  -1
end




