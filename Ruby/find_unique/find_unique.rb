# write a method that determines if a string has all unique characters
# and returns a boolean.

def iterative_all_unique?(string)
  string = string.downcase.gsub(" ", "")
  chars_array = []

  string.chars.each do |char|
    if chars_array.include?(char)
      return false
    else
      chars_array.push(char)
    end
  end
  true
end

# ----------------------------------------------------------------------

def recursive_all_unique?(string)
  string = string.downcase.gsub(" ", "")
  return true if string.length == 1

  item = string[0]
  string = string[1..-1]
  if string.include?(item)
    return false
  else
    recursive_all_unique?(string)
  end
end
