# --- Permutation Palindrome -------------------------------------
# Write an efficient function that checks whether any permutation of an input string is a palindrome.
# You can assume the input string only contains lowercase letters.

def buildLetterCount(string):
    countDictionary = {}
    letterArray = list(string)

    for letter in letterArray:
        if letter in countDictionary:
            countDictionary[letter] += 1
        else:
            countDictionary[letter] = 1

    return countDictionary

def isPermutationPalindrome(string):
    stringLength = len(string)
    if stringLength <= 1:
        return True

    letterCounts = list(buildLetterCount(string).values())
    if all(elem % 2 == 0 for elem in letterCounts):
        return True
    elif len(string) % 2 == 0:
        return False
    else:
        # if word length is not even, permit a single odd count
        oddCount = 0
        for count in letterCounts:
            if count % 2 != 0:
                oddCount += 1

        return False if oddCount > 1 else True



# --- Tests -----------------------------------------------------
import unittest

class TestIsPermutationPalindrome(unittest.TestCase):
    def test_returnsTrueForC(self):
        self.assertEqual(isPermutationPalindrome('c'), True)

    def test_returnsTrueForCici(self):
        self.assertEqual(isPermutationPalindrome('cici'), True)

    def test_returnsFalseForCivi(self):
        self.assertEqual(isPermutationPalindrome('civi'), False)

    def test_returnsTrueForCivic(self):
        self.assertEqual(isPermutationPalindrome('civic'), True)

    def test_returnsTrueForIvicc(self):
        self.assertEqual(isPermutationPalindrome('ivicc'), True)

    def test_returnsFalseForCivil(self):
        self.assertEqual(isPermutationPalindrome('civil'), False)

    def test_returnsFalseForLivci(self):
        self.assertEqual(isPermutationPalindrome('livci'), False)

if __name__ == '__main__':
    unittest.main()
