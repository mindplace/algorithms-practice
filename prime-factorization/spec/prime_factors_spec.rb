require_relative '../prime_factors'

describe 'prime_factors' do
  it "takes a num and returns an array of nums smaller than num unless num is a prime" do
    factors = prime_factorization(10)
    expect(factors).to be_instance_of(Array)
    expect(factors.all?{|num| num < 10}).to eq(true)
  end

  it "calculates the prime factors of 6" do
    expect(prime_factorization(6)).to eq([2,3])
  end

  it "calculates the prime factors of 8 and preserves multiples" do
    expect(prime_factorization(8)).to eq([2,2,2])
  end

  it "calculates the prime factors of a very large number" do
    expect(prime_factorization(123123123)).to eq([3, 3, 41, 333667])
  end
end
