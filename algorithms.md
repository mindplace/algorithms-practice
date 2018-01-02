# Algorithms

## Why do algorithms matter?

* They teach you to solve small problems, both in terms of figuring out an approach and finding the right syntax
* They help you learn the language you use to write your solution in
* They are commonly used in interviews so it's good to be familiar with them
* They often rely on data structures, which are important for good architecture in any software, so that helps you get practice with them and understand how they work
* They are miniature applications that give you a chance to learn how the bird's eye view of good development and architecture looks like.

<hr>

## The Challenges

#### Smallest in series
Given a string representing a sentence, split the sentence and return shortest string without using built-in methods/functions. Given an array, return the smallest string.

#### Most common letter
Given a string, return the character that is most common, including the number of times it occurs.

#### Normalize an integer
Given an integer, return the integer represented as a string with commas in the correct positions.

#### Check for the 10
Write a method/function that takes an array of numbers and returns a boolean based on if any number in the array, added up to its index, equals 10.

#### Factorize
Write a method/function that takes an integer and returns an array of integers representing the original integers factors. E.g., given 10, return [1, 2, 5, 10].

#### All Unique
Write a function/method that takes a string and returns a boolean based on whether all characters in the string are unique. If given am array, return a boolean based on whether all items in the array are unique. If given key/value pairs (Ruby's Hash, JavaScript's Object, Python's Dictionary), returns a boolean based on whether all key/value pairs are unique. Don't rely on built-in methods that search for uniques.

#### Non-uniques
Write a method uniques which takes an array of items and returns the array without any duplicates. Don’t use built-in language methods that search for uniques!

#### Intersections in Arrays
Given two arrays of integers, determine if both arrays contain the same elements, i.e. [1,2,3,4,5] and [5,4,3,2,1].

#### Factorial
Write a function/method that takes a number n and returns the factorial.

#### Queue
Implement a queue data structure that includes functionality like shift, push, and empty?.

#### Stack
Implement a stack data structure that includes functionality like pop, push, and empty?.

#### Palindrome
Given a string input, determine if the string is a palindrome (spelled the same backwards as forwards, ex. racecar). Do not use existing built-in methods/functions like any that turn strings backwards.

#### Project Euler
[Problems](https://projecteuler.net/archives) and [solutions](https://code.google.com/p/projecteuler-solutions/wiki/ProjectEulerSolutions).  

#### Implement sorting algorithms
Check some out [here](https://www.toptal.com/developers/sorting-algorithms).  

#### Fibonacci
Write a method/function that takes a number n and produces an array of Fibonacci numbers, where the length of the array is n.

#### Fibonacci Checker
Check if a given num is a Fibonacci number.

* FibonacciChecker(34) == yes
* FibonacciChecker(54) == no

#### Pig Latin
Write a method/function that takes a string and returns the Pig Latin version of that string (including single-word strings, multi-word strings, correctly handling edge cases like queen or quirk, and correctly returning strings with punctuation).

#### Linked List
Implement a linked-list data structure that includes functionality like checking for length, finding a specific node by linear search, adding nodes, and deleting nodes.

#### Prime factorization
Write a method/function that takes a number and returns the prime factors that make it up. Given 123123123, should return [3, 3, 41, 333667]; given 8, should return [2, 2, 2]; given 6, should return [2, 3]

#### Products of Ints Except At Index
You have an array of integers, and for each index you want to find the product of every integer except the integer at that index. E.g., given [1, 7, 3, 4], return [84, 12, 28, 21]

#### Sum triangle numbers
Given a number n, sum up all the right-most numbers from the triangle.

Example: n = 4

```
1
2 3
4 5 6
7 8 9 10

=> 1 + 3 + 6 + 10 = 20
```

#### Binary search
Write a method/function that takes an array and a search item, and returns the index of the item if found in the array, or nil otherwise.

#### Binary Converter
Have the function BinaryConverter(str) return the decimal form of the binary value. For example: if 101 is passed return 5, or if 1000 is passed return 8.

#### Powers
Write a method power which takes two integers (base and exponent) and returns the base raised to the power of exponent. Do not use built in powers methods or operators for this.

#### Array Combinations
Write a method combinations which takes two arrays of strings and returns an array with all of the combinations of the items in them, listing the first items first.

#### Prime Numbers
Write a method is_prime? which takes in a number and returns true if it is a prime number.

#### Rectangle Overlap
Write a method overlap which takes two rectangles defined by the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. You can assume all coordinates are positive integers. It doesn't count as overlapping if their edges touch but they do not otherwise overwrite each other.

* overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] ) == true
* overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] ) == false

#### Counting Minutes I
Have the function CountingMinutesI(str) take the str parameter being passed which will be two times (each properly formatted with a colon and am or pm) separated by a hyphen and return the total number of minutes between the two times. The time will be in a 12 hour clock format. For example: if str is 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am the output should be 1320.

* CountingMinutesI("1:23am-1:08am") == 1425
* CountingMinutesI("12:30pm-12:00am") == 690
* CountingMinutesI("1:00pm-11:00am") == 1320
* CountingMinutesI("12:31pm-12:34pm") == 3

#### Mean Mode
Have the function MeanMode(arr) take the array of numbers stored in arr and return 1 if the mode equals the mean, 0 if they don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)). The array will not be empty, will only contain positive integers, and will not contain more than one mode.

#### Dash Insert
Have the function DashInsert(str) insert dashes ('-') between each two odd numbers in str. For example: if str is 454793 the output should be 4547-9-3. Don't count zero as an odd number.

* DashInsert(99946) == 9-9-946
* DashInsert("56730") == 567-30

#### Swap Case
Have the function SwapCase(str) take the str parameter and swap the case of each character. For example: if str is "Hello World" the output should be hELLO wORLD. Let numbers and symbols stay the way they are.

* SwapCase("Hello-LOL") == 'hELLO-lol'

#### Number Addition
Have the function NumberSearch(str) take the str parameter, search for all the numbers in the string, add them together, then return that final number. For example: if str is "88Hello 3World!" the output should be 91. You will have to differentiate between single digit numbers and multiple digit numbers like in the example above. So "55Hello" and "5Hello 5" should return two different answers. Each string will contain at least one letter or symbol.

* NumberAddition("75Number5") == 80
* NumberAddition("10 2One Number*1*") == 13

#### Third Greatest
Have the function ThirdGreatest(strArr) take the array of strings stored in strArr and return the third largest word within in. So for example: if strArr is ["hello", "world", "before", "all"] your output should be world because "before" is 6 letters long, and "hello" and "world" are both 5, but the output should be world because it appeared as the last 5 letter word in the array. If strArr was ["hello", "world", "after", "all"] the output should be after because he first three words are all 5 letters long, so return the last one. The array will have at least three strings and each string will only contain letters.

#### Powers of Two
Have the function PowersofTwo(num) take the num parameter being passed which will be an integer and return the string true if it's a power of two. If it's not return the string false. For example if the input is 16 then your program should return the string true but if the input is 22 then the output should be the string false.

#### Additive Persistence
Have the function AdditivePersistence(num) take the num parameter being passed which will always be a positive integer and return its additive persistence which is the number of times you must add the digits in num until you reach a single digit. For example: if num is 2718 then your program should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9.

* AdditivePersistence(2718) == 2

#### Multiplicative Persistence
Have the function MultiplicativePersistence(num) take the num parameter being passed which will always be a positive integer and return its multiplicative persistence which is the number of times you must multiply the digits in num until you reach a single digit. For example: if num is 39 then your program should return 3 because 3 * 9 = 27 then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4.

#### Off Line Minimum
Have the function OffLineMinimum(strArr) take the strArr parameter being passed which will be an array of integers ranging from 1...n and the letter "E" and return the correct subset based on the following rules. The input will be in the following format: ["I","I","E","I",...,"E",...,"I"] where the I's stand for integers and the E means take out the smallest integer currently in the whole set. When finished, your program should return that new set with integers separated by commas. For example: if strArr is ["5","4","6","E","1","7","E","E","3","2"] then your program should return 4,1,5.

* OffLineMinimum(["4","E","1","E","2","E","3","E"]) == 4,1,2,3

#### Changing Sequence
Have the function ChangingSequence(arr) take the array of numbers stored in arr and return the index at which the numbers stop increasing and begin decreasing or stop decreasing and begin increasing. For example: if arr is [1, 2, 4, 6, 4, 3, 1] then your program should return 3 because 6 is the last point in the array where the numbers were increasing and the next number begins a decreasing sequence. The array will contain at least 3 numbers and it may contains only a single sequence, increasing or decreasing. If there is only a single sequence in the array, then your program should return -1. Indexing should begin with 0.

#### Abbreviation
Write a method that takes two strings: string1 is the base string, and string2 is a potential abbreviation of string1. Have your method return a boolean based on whether string2 is an abbreviation of string1.

#### Run Time
Have the function RunLength(str) take the str parameter being passed and return a compressed version of the string using the Run-length encoding algorithm. This algorithm works by taking the occurrence of each repeating character and outputting that number along with a single character of the repeating sequence. For example: "wwwggopp" would return 3w2g1o2p. The string will not contain any numbers, punctuation, or symbols.

* RunLength("a") == "1a"
* RunLength("abqq") == "1a1b2q"
* RunLength("coolthree") == "1c2oo1l1t1h1r2e"

#### Prime Mover
Have the function PrimeMover(num) return that prime number. The range will be from 1 to 10^4. For example: if num is 16 the output should be 53 as 53 is the 16th prime number.

* PrimeMover(9) == 23
* PrimeMover(100) == 541

#### Palindrome Two
Have the function PalindromeTwo(str) take the str parameter being passed and return the string true if the parameter is a palindrome, (the string is the same forward as it is backward) otherwise return the string false. The parameter entered may have punctuation and symbols but they should not affect whether the string is in fact a palindrome. For example: "Anne, I vote more cars race Rome-to-Vienna" should return true.

#### Division
Have the function Division(num1,num2) take both parameters being passed and return the Greatest Common Factor. That is, return the greatest number that evenly goes into both numbers with no remainder. For example: 12 and 16 both are divisible by 1, 2, and 4 so the output should be 4. The range for both parameters will be from 1 to 10^3.

#### String Scramble
Have the function StringScramble(str1,str2) take both parameters being passed and return the string true if a portion of str1 characters can be rearranged to match str2, otherwise return the string false. For example: if str1 is "rkqodlw" and str2 is "world" the output should return true. Punctuation and symbols will not be entered with the parameters.

* StringScramble("h3llko", "hllo") == true

#### Arith Geo II
Have the function ArithGeoII(arr) take the array of numbers stored in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements.

* ArithGeo([5,10,15,20]) == "Arithmetic"
* ArithGeo([2,4,8,16]) == "Geometric"

#### Array Addition
Have the function ArrayAddition(arr) take the array of numbers stored in arr and return the string true if any combination of numbers in the array can be added up to equal the largest number in the array, otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all the same elements, and may contain negative numbers.

* ArrayAddition([4, 6, 23, 10, 1, 3]) == true
* ArrayAddition([3,5,-1,8,12]) == true
* ArrayAddition([10,20,30,40,100]) == true

#### Letter Count
Have the function LetterCount(str) take the str parameter being passed and return the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. If there are no words with repeating letters return -1. Words will be separated by spaces.

#### Caesar Cipher
The Caesar cipher is one of the earliest known and simplest ciphers. It is a type of substitution cipher in which each letter in the plaintext is 'shifted' a certain number of places down the alphabet. For example, with a shift of 1, A would be replaced by B, B would become C, and so on. The method is named after Julius Caesar, who apparently used it to communicate with his generals. In this algorithm, take a string and offset num and return the Caesar cipher of the original string.

* CaesarCipher("Hello",4) == "Lipps"
* CaesarCipher("Caesar Cipher", 2) == "Ecguct Ekrjgt"

#### Simple Mode
Have the function SimpleMode(arr) take the array of numbers stored in arr and return the number that appears most frequently (the mode). For example: if arr contains [10, 4, 5, 2, 4] the output should be 4. If there is more than one mode return the one that appeared in the array first (ie. [5, 10, 10, 6, 5] should return 5 because it appeared first). If there is no mode return -1. The array will not be empty.

#### Consecutive
Return the number of items needed to be added to the given array in order to create a list of consecutive items. E.g. given an array of [2,4,6], Consecutive(arr) should return 2, because the array is missing [3,5] in order to be a consecutive list.

* Consecutive([5,10,15]) == 8

#### Formatted Division
Have the function FormattedDivision(num1,num2) take both parameters being passed, divide num1 by num2, and return the result as a string with properly formatted commas and 4 significant digits after the decimal place. For example: if num1 is 123456789 and num2 is 10000 the output should be "12,345.6789". The output must contain a number in the one's place even if it is a zero.

* FormattedDivision(8,8) == 1.0000
* FormattedDivision(2, 3) == 0.6667
* FormattedDivision(123456789, 10000) == "12,345.6789"

#### Permutation Step
Have the function PermutationStep(num) take the num parameter being passed and return the next number greater than num using the same digits. For example: if num is 123 return 132, if it's 12453 return 12534. If a number has no greater permutations, return -1 (ie. 999).

* PermutationStep(11121) == 11211
* PermutationStep(41352) == 41523
* PermutationStep(8) == -1

#### Prime Checker
Have the function PrimeChecker return 1 if a permutation of a given num results in one or more prime numbers.

* PrimeChecker(8) == 0
* PrimeChecker(98) == 1

#### Dash Insert II
Have the function DashInsertII(str) insert dashes ('-') between each two odd numbers and insert asterisks ('\*') between each two even numbers in str. For example: if str is 4546793 the output should be 454*67-9-3. Don't count zero as an odd or even number.

* DashInsertII(56647304) == 56*6*47-304

#### Swap II
Have the function SwapII(str) take the str parameter and swap the case of each character. Then, if a letter is between two numbers (without separation), switch the places of the two numbers. For example: if str is "6Hello4 -8World, 7 yes3" the output should be 4hELLO6 -8wORLD, 7 YES3.

* SwapII("Hello -5LOL6") == "hELLO -6lol5"
* SwapII("6Hello4 -8World, 7 yes3") == "4hELLO6 -8wORLD, 7 YES3"
* SwapII("i love cAke33&") == "i LOVE CaKE33&"
* SwapII("123gg))((") == "123GG))(("

#### Number Search
Have the function NumberSearch(str) take the str parameter, search for all the numbers in the string, add them together, then return that final number divided by the total amount of letters in the string. For example: if str is "Hello6 9World 2, Nic8e D7ay!" the output should be 2. First if you add up all the numbers, 6 + 9 + 2 + 8 + 7 you get 32. Then there are 17 letters in the string. 32 / 17 = 1.882, and the final answer should be rounded to the nearest whole number, so the answer is 2. Only single digit numbers separated by spaces will be used throughout the whole string (So this won't ever be the case: hello44444 world). Each string will also have at least one letter.

* NumberSearch("Hello6 9World 2, Nic8e D7ay!") == 2
* NumberSearch("1p2ol5e ####  6") == 4
* NumberSearch("No2 3 6Si4r") == 3

#### Triple Double
Have the function TripleDouble(num1,num2) take both parameters being passed, and return 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2. For example: if num1 equals 451999277 and num2 equals 41177722899, then return 1 because in the first parameter you have the straight triple 999 and you have a straight double, 99, of the same number in the second parameter. If this isn't the case, return 0.

* TripleDouble(465555,5579) == 1
* TripleDouble(451999277,41177722899) == 1
* TripleDouble(451999277,4117772289) == 0

#### String Reduction
Have the function StringReduction(str) take the str parameter being passed and return the smallest number you can get through the following reduction method. The method is: Only the letters a, b, and c will be given in str and you must take two different adjacent characters and replace it with the third. For example "ac" can be replaced with "b" but "aa" cannot be replaced with anything. This method is done repeatedly until the string cannot be further reduced, and the length of the resulting string is to be outputted. For example: if str is "cab", "ca" can be reduced to "b" and you get "bb" (you can also reduce it to "cc"). The reduction is done so the output should be 2. If str is "bcab", "bc" reduces to "a", so you have "aab", then "ab" reduces to "c", and the final string "ac" is reduced to "b" so the output be 1.

* StringReduction("abcabc") == 2
* StringReduction("bcab") == 1
* StringReduction("abcc") == 3
* StringReduction("bbbb") == 4

#### Three Five Multiples
Have the function ThreeFiveMultiples(num) return the sum of all the multiples of 3 and 5 that are below num. For example: if num is 10, the multiples of 3 and 5 that are below 10 are 3, 5, 6, and 9, and adding them up you get 23, so your program should return 23. The integer being passed will be between 1 and 100.

#### Coin Determiner
Have the function CoinDeterminer(num) take the input, which will be an integer ranging from 1 to 250, and return an integer output that will specify the least number of coins, that when added, equal the input integer. Coins are based on a system as follows: there are coins representing the integers 1, 5, 7, 9, and 11. So for example: if num is 16, then the output should be 2 because you can achieve the number 16 with the coins 9 and 7. If num is 25, then the output be 3 because you can achieve 25 with either 11, 9, and 5 coins or with 9, 9, and 7 coins.

* CoinDe#terminer(6) == 2
* CoinDeterminer(16) == 2
* CoinDeterminer(25) == 3
* CoinDeterminer(5) == 1

#### Look Say Sequence
Have the function review each consecutive sequence of repeated numbers and note how many times a given number is repeated. For example, given 1, the function return 11; given 11, the function should return 21.

* LookSaySequence(1211) == 111221
* LookSaySequence(2466) == 121426
* LookSaySequence(11) == 21
* LookSaySequence(3441) == 132411

#### Distinct List
Have the function DistinctList(arr) take the array of numbers stored in arr and determine the total number of duplicate entries. For example if the input is [1, 2, 2, 2, 3] then your program should output 2 because there are two duplicates of one of the elements.

* DistinctList([0,2,2,5,5,5]) == 3

#### Number Encoding
Have the function NumberEncoding(str) take the str parameter and encode the message according to the following rule: encode every letter into its corresponding numbered position in the alphabet. Symbols and spaces will also be used in the input. For example: if str is "af5c a#!" then your program return 1653 1#!.

* NumberEncoding("af5c a#!") == "1653 1#!"

#### Most Free Time
Have the function MostFreeTime(strArr) read the strArr parameter being passed which will represent a full day and will be filled with events that span from time X to time Y in the day. The format of each event will be hh:mmAM/PM-hh:mmAM/PM. For example, strArr may be ["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"]. Your program will have to output the longest amount of free time available between the start of your first event and the end of your last event in the format: hh:mm. The start event should be the earliest event in the day and the latest event be the latest event in the day. The output for the previous input would therefore be 01:30 (with the earliest event in the day starting at 09:10AM and the latest event ending at 02:45PM). The input will contain at least 3 events and the events may be out of order.

* MostFreeTime("12:15PM-02:00PM","09:00AM-10:00AM","10:30AM-12:00PM") == "00:30"
* MostFreeTime("12:15PM-02:00PM","09:00AM-12:11PM","02:02PM-04:00PM") == "00:04"

#### Bracket Master
Have the function BracketMatcher(str) take the str parameter being passed and return 1 if the brackets are correctly matched and each one is accounted for. Otherwise return 0. For example: if str is "(hello (world))", then the output be 1, but if str is "((hello (world))" the the output should be 0 because the brackets do not correctly match up. Only "(" and ")" will be used as brackets. If str contains no brackets return 1.

#### Multiple Brackets
Have the function MultipleBrackets(str) take the str parameter being passed and return 1 #ofBrackets if the brackets are correctly matched and each one is accounted for. Otherwise return 0. For example: if str is "(hello [world])(!)", then the output should be 1 3 because all the brackets are matched and there are 3 pairs of brackets, but if str is "((hello [world])" the the output be 0 because the brackets do not correctly match up. Only "(", ")", "[", and "]" will be used as brackets. If str contains no brackets return 1.

* MultipleBrackets("(coder)[byte)]") == 0
* MultipleBrackets("(c([od]er)) b(yt[e])") == 1

#### Snake case search
Write a method/function that takes an array of arrays to represent a board, each of which contain a series of letters; along with a string representing a search term. And returns a boolean based on whether the word is present on the board. Example, given 'hello' and below board, should return true:

```
[
  [a, r, f, d, g, g, h],
  [w, r, f, t, q, e, x],
  [s, c, v, f, g, l, l],
  [r, f, g, q, t, x, o]
]
```

#### My_Shuffle
Write a method/function that takes an array and randomizes the items inside it, without relying on any existing built-in functions/methods. Be careful not to write a naive or biased solution.
