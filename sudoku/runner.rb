require_relative 'sudoku'

# NOTE: this solves every puzzle except for 14 and 15.
# (tried solving 14 with it but it kept running...I didn't get a stack overflow error but it
# still seemed like the wrong solution.)

boards = File.readlines('sudoku_puzzles.txt').map(&:chomp)

boards.each_with_index do |board_string, i|
  solved_board = solve(board_string)

  if solved?(solved_board)
    puts "Board #{i + 1} was solved!\n\n"
  else
    puts "Board #{i + 1} wasn't solved :(\n\n"
  end

  puts pretty_board(solved_board)
  break if i == 12
end
