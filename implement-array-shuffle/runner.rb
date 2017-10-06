require_relative 'shuffle'

numbers = [0, 5, 3, 7, 8, 6, 2, 1, 4, 9]

first_shuffle_result  = shuffle(numbers)
second_shuffle_result = shuffle(numbers)
third_shuffle_result  = shuffle(numbers)

shuffle_recap = <<-TEXT
Numbers:  #{numbers}

1st shuffle produced:  #{first_shuffle_result}
2nd shuffle produced:  #{second_shuffle_result}
3rd shuffle produced:  #{third_shuffle_result}
TEXT


puts shuffle_recap
