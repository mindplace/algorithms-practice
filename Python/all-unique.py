# --- All Unique ------------------------------------------------
# Write a function/method that takes a string and returns a boolean
# based on whether all characters in the string are unique.
#
# Write a function/method that takes an array and returns a boolean
# based on whether all items in the array are unique.
#
# Write a function/method that takes a hash and returns a boolean
# based on whether all key/value pairs in the hash are unique.


def allUnique(item):
    items = []

    if type(item) is dict:
        items = item.values()
    elif type(item) is list:
        items = item
    elif type(item) is str:
        items = list(item)
    elif type(item) is int:
        items = list(str(item))

    i = 0
    while i < len(items):
        currentElement = items[i]

        if items.index(currentElement) != i:
            return False

        i += 1

    return True


# --- Tests -----------------------------------------------------
import unittest

class TestAllUnique(unittest.TestCase):

    def test_returnsTrueGivenIntWithUniqueItems(self):
        self.assertEqual(allUnique(123), True)

    def test_returnsFalseGivenIntWithoutUniqueItems(self):
        self.assertEqual(allUnique(1223), False)

    def test_returnsTrueGivenStringOfUniqueItems(self):
        self.assertEqual(allUnique("abcd"), True)

    def test_returnsFalseGivenStringOfNonUniqueItems(self):
        self.assertEqual(allUnique("aabcd"), False)

    def test_returnsTrueGivenListOfUniqueItems(self):
        self.assertEqual(allUnique(["a", "b", "cd"]), True)

    def test_returnsFalseGivenListOfNonUniqueItems(self):
        self.assertEqual(allUnique(["a", "b", "cd", "cd"]), False)

    def test_returnsTrueGivenDictionaryOfUniqueItems(self):
        self.assertEqual(allUnique({ 'first': "a", 'second': "b" }), True)

    def test_returnsFalseGivenDictionaryOfNonUniqueItems(self):
        self.assertEqual(allUnique({ 'first': "a", 'second': "b", 'third': "b" }), False)

if __name__ == '__main__':
    unittest.main()
