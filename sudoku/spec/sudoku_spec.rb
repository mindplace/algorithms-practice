require_relative '../sudoku'

describe "Sudoku" do
  let(:tests) { File.readlines("../sudoku_puzzles.txt").map(&:chomp)[0..13] }
  let(:test1) { "1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--" }
  let(:test5) { "6-873----2-----46-----6482--8---57-19--618--4-31----8-86-2---39-5----1--1--4562--" }
  let(:test13) { "--7--8------2---6-65--79----7----3-5-83---67-2-1----8----71--38-2---5------4--2--" }
  let(:populated) { populate_possibilities(make_board(test1)) }
  let(:example) { [[3,9,7,6,4,8,1,5,2],[8,1,4,2,5,3,7,6,9],[6,5,2,1,7,9,8,4,3],[4,7,9,8,6,1,3,2,5],[5,8,3,9,2,4,6,7,1],[2,6,1,5,3,7,9,8,4],
  [9,4,6,7,1,2,5,3,8],[7,2,8,3,9,5,4,1,6],[1,3,5,4,8,6,2,9,7]]}

  it "makes a board from a string" do
    expect(make_board(test1)).to be_instance_of(Array)
  end

  it "populates the board with possibilities for each square" do
    expect(populated.any?{|row| row.any?{|el| el.is_a?(Array)}}).to eq(true)
  end

  it "transposes to a board of sub-squares and back again" do
    to_squares = square_transpose(populated)
    expect(square_transpose(to_squares)).to eq(populated)
  end

  it "eliminates possibilities that cannot be in a row or column" do
    updated_board = row_eliminate(populated)
    expect(updated_board).not_to eq(populated)
  end

  it "returns true if every row, square, and column on the board contains every number between 1 and 9 without duplicates" do
    expect(solved?(example)).to eq(true)
  end

  it "solves a board recursively by trying out every remaining possible element" do
    test1_solution = solve(test1)
    test5_solution = solve(test5)
    test13_solution = solve(test13)

    expect(solved?(test1_solution)).to eq(true)
    expect(solved?(test5_solution)).to eq(true)
    expect(solved?(test13_solution)).to eq(true)
  end
end
