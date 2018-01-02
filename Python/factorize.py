# --- Factorize ----------------------------------------------
# Write a method/function that takes an integer and returns an
# array of integers representing the original integers factors.
# E.g., given 10, return [1, 2, 5, 10].

def factorizeInteger(integer):
    if integer == 0:
        return []

    factorsArray = []
    initialInteger = integer
    currentFactor = 1

    while currentFactor <= integer:
        if integer % currentFactor == 0:
            factorsArray.append(currentFactor)
            integer = integer / currentFactor

            if integer == currentFactor:
                factorsArray.append(currentFactor)

        currentFactor += 1

    if factorsArray[len(factorsArray) - 1] != initialInteger:
        factorsArray.append(initialInteger)

    return factorsArray

# --- Tests -----------------------------------------------------
import unittest

class TestFactorize(unittest.TestCase):

    def test_returnsEmptyArrayForZero(self):
        self.assertEqual(factorizeInteger(0), [])

    def test_returnsTwoFactorsGivenPrime(self):
        self.assertEqual(factorizeInteger(7), [1, 7])

    def test_returnsMultipleFactorsGivenTen(self):
        self.assertEqual(factorizeInteger(10), [1, 2, 5, 10])

    def test_returnsMultipleFactorsGiven(self):
        self.assertEqual(factorizeInteger(102), [1, 2, 3, 17, 102])

if __name__ == '__main__':
    unittest.main()
