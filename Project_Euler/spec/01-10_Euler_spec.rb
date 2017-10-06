require "rspec"
require "01-10_Euler"

describe "sum_of_multiples" do
    it "sums multiples of 3 and 5 under 1000" do 
        expect(sum_of_multiples).to eq(233168)
    end
end

describe "fibonacci_sum" do
    it "finds the sum of the even-valued fibonacci nums under 4million" do
        expect(fibonacci_sum).to eq(4613732) 
    end
end

describe "largest_prime_factor" do 
    it "helper returns true or false depending on whether number is prime" do
       expect(helper(3)).to be_truthy
       expect(helper(6)).to be_falsey
    end
   
   it "finds largest prime factor of a given number" do
       expect(largest_prime_factor(13195)).to eq(29)
       expect(largest_prime_factor(600851475143)).to eq(6857)
   end
end

describe "palindromic number" do 
   it "helper method should take an array and produce 
        all possible combos of 2, then multiply each set" do 
        expect(factors([1,2,3])).to eq([2,3,6])
        expect(factors([4,5,6])).to eq([20,24,30])
   end
   it "palindromes should return palindrome numbers" do 
       expect(palindromes).to include(996699)
   end
   it "should return the biggest palindrome made from the product of 2 3-digit nums" do
       expect(palindromic).to eq(906609)
   end
end

describe "smallest multiple of (1..20)" do
   it "should accurately get a LCM for 2 nums" do
       expect(least_common(2,3)).to eq(6)
       expect(least_common(65,40)).to eq(520)
   end
   it "takes an array and provides the LCMs for all adjacent pairs of nums in array" do
       expect(iterates([2,3,4,5])).to eq([6,12,20])
   end
   it "finds the smallest multiple of (1..20)" do 
       expect(smallest_multiple).to eq(232792560)
   end
end

describe "difference between sum of squares and square of sum" do
    it "computes for first 10 numbers" do 
        expect(sum_square_diff(10)).to eq(2640)
    end
    it "computes for first 100 natural numbers" do 
        expect(sum_square_diff(100)).to eq(25164150)
    end
end

describe "finds Nth prime number" do
    it "finds the 6th prime number" do 
        expect(find_prime(6)).to eq(13)
    end
    it "finds the 10,001st prime number" do 
        expect(find_prime(10001)).to eq(104743)
    end
end

describe "finds the largest product in a series" do 
    number = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450
    it "finds the four adjacent digits with the greatest product" do 
        expect(product(number, 4)).to eq(5832)
    end
    it "finds the thirteen adjacent digits with the greatest product" do
        expect(product(number, 13)).to eq(23514624000)
    end
end

describe "special Pythagorean Triplet" do 
    it "gets squares up to 1000" do 
        expect(square_nums).to include(36)
    end
    it "gets the square root of a number" do 
        expect(square_root(36)).to eq(6)
        expect(square_root(81)).to eq(9)
    end
    it "finds pythagorean square roots that add up to max" do 
        expect(find_and_sum_square_roots(12, [[9,16,25]])).to eq(60)
    end
    it "gets all possible pythagorean triplets" do 
       expect(pythagoreans).to eq(31875000)
    end
end

describe "Prime summation" do 
   it "gets a range of odd nums given a max" do 
       expect(get_range(10)).to eq([0,0,2,3,0,5,0,7,0,9,0])
   end
   it "finds the sum of primes under a given maximum" do 
       expect(sum_of_primes(100)).to eq(1060)
       expect(sum_of_primes(1000)).to eq(76127)
       expect(sum_of_primes(2000000)).to eq(142913828922)
   end
end