require 'rspec'
require_relative('../fibonacci')

describe 'iterative_nth_fibonacci_number' do
  it 'calculates the 0th fibonacci number' do
    calculated_number = iterative_nth_fibonacci_number(0)
    expect(calculated_number).to eq 0
  end

  it 'calculates the 1st fibonacci number' do
    calculated_number = iterative_nth_fibonacci_number(1)
    expect(calculated_number).to eq 1
  end

  it 'calculates the 2nd fibonacci number' do
    calculated_number = iterative_nth_fibonacci_number(2)
    expect(calculated_number).to eq 1
  end

  it 'calculates the 3rd fibonacci number' do
    calculated_number = iterative_nth_fibonacci_number(3)
    expect(calculated_number).to eq 2
  end

  it 'calculates the 4th fibonacci number' do
    calculated_number = iterative_nth_fibonacci_number(4)
    expect(calculated_number).to eq 3
  end

  it 'calculates the 5th fibonacci number' do
    calculated_number = iterative_nth_fibonacci_number(5)
    expect(calculated_number).to eq 5
  end

  it 'calculates the 17th fibonacci number' do
    calculated_number = iterative_nth_fibonacci_number(17)
    expect(calculated_number).to eq 1597
  end
end

describe 'recursive_nth_fibonacci_number' do
  it 'calculates the 0th fibonacci number' do
    calculated_number = recursive_nth_fibonacci_number(0)
    expect(calculated_number).to eq 0
  end

  it 'calculates the 1st fibonacci number' do
    calculated_number = recursive_nth_fibonacci_number(1)
    expect(calculated_number).to eq 1
  end

  it 'calculates the 2nd fibonacci number' do
    calculated_number = recursive_nth_fibonacci_number(2)
    expect(calculated_number).to eq 1
  end

  it 'calculates the 3rd fibonacci number' do
    calculated_number = recursive_nth_fibonacci_number(3)
    expect(calculated_number).to eq 2
  end

  it 'calculates the 4th fibonacci number' do
    calculated_number = recursive_nth_fibonacci_number(4)
    expect(calculated_number).to eq 3
  end

  it 'calculates the 5th fibonacci number' do
    calculated_number = recursive_nth_fibonacci_number(5)
    expect(calculated_number).to eq 5
  end

  it 'calculates the 17th fibonacci number' do
    calculated_number = recursive_nth_fibonacci_number(17)
    expect(calculated_number).to eq 1597
  end
end
