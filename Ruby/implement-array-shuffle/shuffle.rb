def shuffle(array)
  shuffled_array = []

  array.each do |item|
    new_i = rand(array.length)
    if shuffled_array[new_i]
      new_i += 1 until shuffled_array[new_i].nil?
    end
    shuffled_array[new_i] = item
  end

  shuffled_array.compact
end
