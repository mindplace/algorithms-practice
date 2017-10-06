def binary_search_include?(array, item)
  binary_search(array, item) > -1
end

def binary_search(array, item, mid=1, prev=0)
  return prev += mid if array[mid] == item
  if array.length == 1 && array[mid] != item
    return -1
  elsif array[mid] > item
    array = array[0...mid]
    mid = array.length / 2
    binary_search(array, item, mid, prev)
  elsif array[mid] < item
    prev += mid + 1
    array = array[(mid + 1)..-1]
    mid = array.length / 2
    binary_search(array, item, mid, prev)
  end
end
