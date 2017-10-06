# Write a method that takes two strings: string1 is the base string, and string2 is a potential
# abbreviation of string1. Have your method return a boolean based on whether string2 is an abbreviation
# of string1.

def abbreviation?(base_str, test_str)
  if test_str.length == 0
    return true
  end

  i = base_str.chars.index{|char| char == test_str[0]}
  if i
    abbreviation?(base_str[i + 1..-1], test_str[1..-1])
  else
    false
  end
end
