require 'rspec'
require_relative '../factorial'

describe 'factorial_iterative' do
  known_factorials = { 0  => 1,
                       1  => 1,
                       2  => 2,
                       3  => 6,
                       4  => 24,
                       15 => 1307674368000 }

  known_factorials.each do |number, known_factorial|

    it "calculates the factorial of #{number}" do
      calculated_factorial = factorial_iterative(number)
      expect(calculated_factorial).to eq known_factorial
    end

  end
end

describe 'factorial_recursive' do
  known_factorials = { 0  => 1,
                       1  => 1,
                       2  => 2,
                       3  => 6,
                       4  => 24,
                       15 => 1307674368000 }

   known_factorials.each do |number, known_factorial|

     it "calculates the factorial of #{number}" do
       calculated_factorial = factorial_recursive(number)
       expect(calculated_factorial).to eq known_factorial
     end

   end
end
