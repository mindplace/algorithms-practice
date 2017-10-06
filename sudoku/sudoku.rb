def make_board(str) # generates board from string
  str.chars.each_slice(9).to_a.map{|row| row.map!{|el| el.match(/\d/) ? el.to_i : el}}
end

def populate_possibilities(board) # populates every empty slot with array of possible nums
  board = square_transpose(board)

  squares = []
  board.each do |square|
    possibilities = (1..9).to_a
    current = square.select{|el| el.is_a?(Fixnum)}
    missing = possibilities - current
    square = square.map{|el| el == "-" ? missing : el}
    squares << square
  end

  square_transpose(squares)
end

def square_transpose(board)
  squares = []
  i = 0
  while i < board.length
    squares[i]     = board[i][0..2] + board[i + 1][0..2] + board[i + 2][0..2]
    squares[i + 1] = board[i][3..5] + board[i + 1][3..5] + board[i + 2][3..5]
    squares[i + 2] = board[i][6..8] + board[i + 1][6..8] + board[i + 2][6..8]
    i += 3
  end
  squares
end

def row_eliminate(board) # eliminates possibilities that cannot be in the row (or, if board transposed, in the column)
  updated_board = []
  board.each_with_index do |row, i|
    previous = []
    updated_row = row

    while previous != updated_row
      digits = row.select{|el| el.is_a?(Fixnum)}

      previous = updated_row
      updated_row = updated_row.map do |item|
        if item.is_a?(Array)
          item -= digits
          item = item[0] if item.length == 1
        end
        item
      end
      updated_board[i] = updated_row
    end
  end
  updated_board
end

def recursive_guesser(board) # recursively guesses possibilities
  return board if solved?(board)

  elements = []
  set = []
  board.each_with_index do |row, i|
    row.each_with_index do |el, j|
      if el.is_a?(Array)
        elements = el
        set = [i, j]
        break
      end
    end
  end

  elements.each do |element|
    try = board.dup
    try[set[0]][set[1]] = element

    10.times do
      try = square_transpose(try)
      try = row_eliminate(try)
      try = square_transpose(try)
      try = row_eliminate(try)
      try = row_eliminate(try.transpose)
      try = try.transpose
    end

    try = recursive_guesser(try)
    if solved?(try)
      board = try
      break
    end
  end
  board
end

def solved?(board)
  if board.any?{|row| row.any?{|item| item.is_a?(Array)}} == false
    if board.all?{|row| row.sort == (1..9).to_a} &&
      board.transpose.all?{|col| col.sort == (1..9).to_a} &&
      square_transpose(board).all?{|sq| sq.sort == (1..9).to_a}
        return true
    end
  else
    return false
  end
end

def pretty_board(board) # prints out board
  printout = []
  board.each_with_index do |row, i|
    printout << "------|-------|------" if (i == 3 || i == 6)
    printout << "#{row[0..2].join(" ")} | #{row[3..5].join(" ")} | #{row[6..8].join(" ")}"
    printout << "\n" if i == board.length - 1
  end
  printout
end

def solve(board_string) # contains main logic
  board = make_board(board_string)
  populated_board = populate_possibilities(board)

  20.times do
    partial_solution = row_eliminate(populated_board)
    partial_solution = row_eliminate(partial_solution.transpose)
    partial_solution = square_transpose(partial_solution.transpose)
    populated_board  = square_transpose(partial_solution)
  end

  populated_board
  recursive_guesser(populated_board)
end
