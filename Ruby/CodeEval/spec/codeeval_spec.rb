require "rspec"
require "Multiplication_Table"

describe "multiplication tables" do 
    it "creates a multiplication table grid from 1 to 12" do 
        multiples = puts_multiples
        expect(multiples).to include(12)
    end
end