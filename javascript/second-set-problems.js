// Generate the nth number in the Fibonacci sequence.

function fibonacci(num) {
  var sequence = [1, 1];
  while (!(sequence.length === num)) {
    var item = sequence[sequence.length - 2] + sequence[sequence.length - 1];
    sequence.push(item);
  }
  return sequence[sequence.length - 1];
}
// first items in the Fibonacci sequence: [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// console.log(fibonacci(5) === 5);
// console.log(fibonacci(10) === 55);
// -------------------------------------------------------
// # Fibonacci Checker
// # check if a given num is a Fibonacci number.

function fibonacciChecker(num) {
  var series = [1, 1];
  while (series[series.length - 1] < num) {
    var item = series[series.length - 2] + series[series.length - 1];
    series.push(item);
  }
  if (series[series.length - 1] === num) {
    return true;
  } else {
    return false
  }
}

// console.log(fibonacciChecker(5) === true);
// console.log(fibonacciChecker(6) === false);
// -------------------------------------------------------
// # Look Say Sequence
// # Have the function review each consecutive sequence of repeated numbers and note
// # how many times a given number is repeated. For example, given 1, the function
// # should return 11; given 11, the function should return 21.

function lookSaySequence(num) {
  var num = num.toString().split("");
  var counters = [];
  for (var i=0; i < num.length; i++) {
    if (num[i] === num[i - 1]) {
      continue;
    }
    var current = num[i];
    var counter = 1;
    var j = i + 1
    while (current === num[j]) {
      counter += 1;
      j += 1;
    }
    counters.push(counter);
    counters.push(current);
  }
  return (counters.join(""));
}

// console.log(lookSaySequence(11342556) === "211314122516")
// -------------------------------------------------------
// # Number Encoding
// # have the function NumberEncoding(str) take the str parameter and encode the
// # message according to the following rule: encode every letter into its
// # corresponding numbered position in the alphabet. Symbols and spaces will also
// # be used in the input. For example: if str is "af5c a#!" then your program
// # should return 1653 1#!.

function numberEncoding(string) {
  var encoded = new Array;
  string = string.split("");
  for (var i=0; i < string.length; i++) {
    var current = string[i];
    if (current.match(/[a-z]/i)) {
      current = current.toUpperCase().charCodeAt(0) - 64
      console.log(current);
    }
    encoded.push(current);
  }
  return encoded.join("");
}
// console.log(numberEncoding("af5c a#"));
// -------------------------------------------------------
// # Distinct List
// # have the function DistinctList(arr) take the array of numbers stored in arr
// # and determine the total number of duplicate entries. For example if the input
// # is [1, 2, 2, 2, 3] then your program should output 2 because there are two
// # duplicates of one of the elements.

function distinctList(array) {
  var uniques = new Array;
  for (var x in array) {
    if (uniques.indexOf(array[x]) < 0) {
      uniques.push(array[x]);
    }
  }
  return array.length - uniques.length;
}

// console.log(distinctList([1,2,2,2,3]) === 2)
// console.log(distinctList([1,1,2,2,2,3]) === 3)
// -------------------------------------------------------
// // find the smallest multiple given two numbers

function smallestMultiple(num1, num2) {
  var small;
  if (num1 > num2) {
    small = num2;
    big = num1;
  } else {
    small = num1;
    big = num2;
  }

  var multiple = small
  while (!(multiple % big === 0)) {
    multiple += small
  }
  return multiple;
}

// console.log(smallestMultiple(2, 3) === 6);
// -------------------------------------------------------
// // Reverse all the words given a sentence string, and return
// // all the reversed words in a new sentence.

function stringWordReverser(sentence) {
  var wordArray = sentence.split(" ");
  var newSent = new Array;
  for (var i=0; i < wordArray.length; i++) {
    var word = wordArray[i];
    word = word.split("").reverse().join("");
    newSent.push(word);
  }
  return newSent.join(" ");
}

// console.log(stringWordReverser("I say this") === "I yas siht");
// -------------------------------------------------------
// // Have the function RunLength(str) take the str parameter being passed and
// // # return a compressed version of the string using the Run-length encoding
// // # algorithm. This algorithm works by taking the occurrence of each repeating
// // # character and outputting that number along with a single character of the
// // # repeating sequence. For example: "wwwggopp" would return 3w2g1o2p. The
// // # string will not contain any numbers, punctuation, or symbols.

// to compressed string:
function runLength(string) {
  var string = string.split("");
  var counters = [];
  for (var i=0; i < string.length; i++) {
    if (string[i] === string[i - 1]) {
      continue;
    }
    var current = string[i];
    var counter = 1;
    var j = i + 1
    while (current === string[j]) {
      counter += 1;
      j += 1;
    }
    counters.push(counter);
    counters.push(current);
  }
  return counters.join("");
}

// console.log(runLength("wwwggopp") === "3w2g1o2p");

// to uncompressed string:
function fromRunLength(string) {
  var string = string.split("");
  var uncompressed = [];

  var i = 0;
  while (i < string.length - 1) {
    var num = parseInt(string[i]);
    var letter = string[i + 1];

    for (var j=1; j <= num; j++) {
      uncompressed.push(letter);
    }

    i += 2
  }
  return uncompressed.join("");
}

// console.log(fromRunLength("3w2g1o2p") === "wwwggopp");
// -------------------------------------------------------
// // # have the function PrimeMover(num) return the numth prime number. The range
// // # will be from 1 to 10^4. For example: if num is 16 the output should be
// // # 53 as 53 is the 16th prime number.

function nthPrimeNumber(num) {
  var primes = [0, 0, 2];
  var max = 10000; // 10 ^ 4
  for (var i=3; i < max + 1; i++) {
    if (i % 2 == 0) {
      primes.push(0);
    } else {
      primes.push(i);
    }
  }

  var j = 3
  while (true) {
    // sieve
    for (var k = j*j; k < primes.length; k += j) {
      primes[k] = 0;
    }

    // finding the next item bigger than j to use for sieve
    for (var x = j; x < primes.length; x += 1) {
      if (primes[x] > j) {
        j = x;
        break;
      }
    }

    // break condition
    if (j*j > primes.length) {
      break;
    }
  }

  // gives back the primes array without zeros
  primes = primes.filter(function(x){if (x > 0) {return x;}});
  return primes[num - 1];
}

console.log(nthPrimeNumber(3) === 5);
console.log(nthPrimeNumber(10) === 29)
console.log(nthPrimeNumber(79) === 401);
console.log(nthPrimeNumber(94) === 491);
// -------------------------------------------------------
// // # String Scramble
// // # have the function StringScramble(str1,str2) take both parameters being passed
// // # and return the string true if a portion of str1 characters can be rearranged
// // # to match str2, otherwise return the string false. For example: if str1 is
// // # "rkqodlw" and str2 is "world" the output should return true. Punctuation and
// // # symbols will not be entered with the parameters.

function StringScramble(scrambled, word) {
  var scrambledArray = scrambled.split("");
  word = word.split("");

  for (var i=0; i < word.length; i++) {
    var letter = word[i];
    var j = scrambledArray.indexOf(letter);
    if (j > -1) {
      delete word[i];
      delete scrambledArray[j];
    }
  }

  if (word.every(function(x){return x === null})) {
    return true
  } else {
    return false
  }
}

// console.log(StringScramble("rkqodlw", "world") === true)
// console.log(StringScramble("lrffukknahyt", "thankful") === true)
// console.log(StringScramble("roland", "landy") === false)
// -------------------------------------------------------
// ## Mean Mode
// # have the function MeanMode(arr) take the array of numbers stored in arr and
// # return 1 if the mode equals the mean, 0 if they don't equal each other
// # (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)).
// # The array will not be empty, will only contain positive integers,
// # and will not contain more than one mode.

function meanEqualsMode(array) {
  var mean = 0
  for (var i=0; i < array.length; i++) {
    mean += array[i];
  }
  mean = mean / array.length;

  var mode
  var modeCount = 0;
  for (var j=0; j < array.length; j++) {
    var jcount = 0
    var test = array.splice(j, 1);

    for (var k=0; k < test.length; k++) {
      if (test[k] === array[j]) {
        jcount += 1;
      }
    }
    if (jcount > modeCount) {
      modeCount = jcount;
      mode = array[j];
    }
  }

  if (mode === mean) {
    return 1
  } else {
    return 0
  }
}

// console.log(meanEqualsMode([5,3,3,3,1]) === 1);
// console.log(meanEqualsMode([1,1,1,3,5]) === 0);
// -------------------------------------------------------
// # given a string, return the character after every letter "r".

function pirates(string) {
  var arrs = new Array;
  string = string.split("");
  for (var i=0; i < string.length; i++) {
    if (((string[i] === "r") || (string[i] === "R")) && (string[i + 1] != null)) {
      arrs.push(string[i + 1]);
    }
  }
  return arrs.join("");
}

// console.log(pirates("are you really learning Ruby?") === "eenu");
// console.log(pirates("Pirates say arrrrr") === "arrrr");
// -------------------------------------------------------
// # You'll get a string and a boolean.
// # When the boolean is true, return a new string containing all the odd characters.
// # When the boolean is false, return a new string containing all the even characters.

function evenOrOddChars(string, boolean) {
  var returning = new Array;
  string = string.split("");
  if (boolean) {
    for (var i=1; i < string.length; i += 2) {
      returning.push(string[i]);
    }
  } else {
    for (var i=0; i < string.length; i += 2) {
      returning.push(string[i]);
    }
  }
  return returning.join("");
}

// console.log(evenOrOddChars("string", true) === "tig");
// console.log(evenOrOddChars("string", false) === "srn");
// -------------------------------------------------------
// # Given a string, replace every instance of 'sad' to 'happy'.
// Don't forget to consider capitalized instances!

function replaceSadness(sentence) {
  sentence = sentence.split(" ");
  for (var i=0; i < sentence.length; i++) {
    if (sentence[i] === "Sad") {
      sentence[i] = "Happy";
    } else if (sentence[i] === "sad") {
      sentence[i] = "happy"
    }
  }
  return sentence.join(" ");
}

// console.log(replaceSadness("Sad things are very sad") === "Happy things are very happy");
// console.log(replaceSadness("The puppy looked very sad") === "The puppy looked very happy");
// -------------------------------------------------------
// # Write a method named prime_chars? which takes array of strings
// # and returns true if the sum of the number of characters in the array is prime.

function primeChars(array) {
  var total = 0;
  for (var i=0; i < array.length; i++) {
    total += array[i].length;
  }

  var factors = new Array;
  for (var j=1; j <= total; j++) {
    if (total % j === 0) {
      factors.push(j);
    }
  }
  if (factors.length === 2) {
    return true;
  } else {
    return false;
  }
}

// console.log(primeChars(["abc"]) === true);
// console.log(primeChars(["a", "bc"]) === true);
// console.log(primeChars(["a", "b", "cd"]) === false);
// -------------------------------------------------------
// # Given an array of elements, return true if any element shows up three times in a row

function gotThree(array) {
  for (var i=0; i < array.length; i++) {
    if ((array[i] == array[i + 1]) && (array[i] == array[i + 2])) {
      return true
    }
  }
  return false
}

// console.log(gotThree([1,2,2,2,3]) === true);
// console.log(gotThree(["a", "a", "a"]) === true);
// console.log(gotThree([1,2,1,1]) === false);
// -------------------------------------------------------
// # Binary Converter
// # have the function BinaryConverter(str) return the decimal form of the binary
// # value. For example: if 101 is passed return 5, or if 1000 is passed return 8.
function fromBinaryNumber(binNum) {
  var numArray = binNum.toString().split("").reverse();
  var number = 0;
  for (var i=0; i < numArray.length; i++) {
    var num = parseInt(numArray[i]);
    var location = Math.pow(2, i);
    number += num * location;
  }
  return number;
}
//
// console.log(fromBinaryConverter(101)) // 5
// console.log(fromBinaryConverter(1000))

// to binary:

function toBinaryNumber(number) {
  var returning = new Array;
  if (number % 2 != 0) {
    returning[0] = 1;
    number -= 1;
  }

  while (number > 0) {
    i = 1;
    while (Math.pow(2, i) <= number) {
      if (Math.pow(2, (i + 1)) > number) {
        returning[i] = 1;
        number -= (Math.pow(2, i));
        break;
      }
      i++;
    }
  }

  for (var j=0; j < returning.length; j++) {
    if (returning[j] == null) {
      returning[j] = "0";
    } else {
      returning[j] = returning[j].toString();
    }
  }

  return parseInt(returning.reverse().join(""));
}

// console.log(toBinaryNumber(8) === 1000);
// -------------------------------------------------------
// # Number Search
// # have the function NumberSearch(str) take the str parameter, search for all the
// # numbers in the string, add them together, then return that final number.
function numberSearch(string) {
  string = string.split("");
  var sum = 0;
  for (var i=0; i < string.length; i++) {
    if (parseInt(string[i])) {
      sum += parseInt(string[i]);
    }
  }
  return sum;
}

// console.log(numberSearch("1l2k3g ff7")) // 13
// -------------------------------------------------------
// # Three Five Multiples
// #have the function ThreeFiveMultiples(num) return the sum of all the multiples of
// # 3 and 5 that are below num. For example: if num is 10, the multiples of 3 and 5
// # that are below 10 are 3, 5, 6, and 9, and adding them up you get 23, so your
// # program should return 23. The integer being passed will be between 1 and 100.

function ThreeFiveMultiples(integer) {
  var sum = 0;
  for (var i=0; i < integer; i++) {
    if ((i % 3 == 0) || (i % 5 == 0)) {
      sum += i;
    }
  }
  return sum;
}

// console.log(ThreeFiveMultiples(10)) // 23
// -------------------------------------------------------
// # Consecutive
// # Return the number of items needed to be added to the given array in order to create
// # a list of consecutive items. E.g. given an array of [2,4,6], Consecutive(arr) should
// # return 2, because the array is missing [3,5] in order to be a consecutive list.

function consecutiveMissing(array) {
  var missing = 0;
  array = array.sort(function(a, b) {return a - b})
  for (var i=0; i < array.length - 1; i++) {
    var elem = array[i];
    if (elem + 1 != array[i + 1]) {
      missing += (array[i + 1] - elem) - 1
    }
  }
  return missing;
}

// console.log(consecutiveMissing([6,2,4]) == 2)
// -------------------------------------------------------
// # Dash Insert II
// # have the function DashInsertII(str) insert dashes ('-') between each two odd numbers
// # and insert asterisks ('*') between each two even numbers in str. For example: if str
// # is 4546793 the output should be 454*67-9-3. Don't count zero as an odd or even number.

function dashInsert(number) {
  var returning = []
  number = number.toString().split("")
  for (var i=0; i < number.length; i++) {
    returning.push(number[i])
    if (number[i + 1] == null) {
      break
    }

    if ((parseInt(number[i]) % 2 != 0) && (parseInt(number[i + 1]) % 2 != 0)) {
      returning.push("-")
    } else if ((parseInt(number[i]) % 2 == 0) && (parseInt(number[i + 1]) % 2 == 0)) {
      returning.push("*")
    }
  }
  return returning.join("")
}

// console.log(dashInsert(4546793) == "454*67-9-3")
// -------------------------------------------------------
// // # Arith Geo II
// // # have the function ArithGeoII(arr) take the array of numbers stored in arr and
// // # return the string "Arithmetic" if the sequence follows an arithmetic pattern or
// // # return "Geometric" if it follows a geometric pattern. If the sequence doesn't
// // # follow either pattern return -1. An arithmetic sequence is one where the difference
// // # between each of the numbers is consistent, where as in a geometric sequence, each term
// // # after the first is multiplied by some constant or common ratio. Arithmetic example:
// // # [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54].

function arithmetic(array) {
  var allArithmetic = null;
  for (var j=0; j < array.length; j++) {
    var check = []
    array.forEach(function(item, index, array){
      if (item + j == array[index + 1]) {
        check.push(item)
      } else if (array[index + 1] == undefined) {
        check.push(item)
      }
    })
    if (check.length == array.length) {
      allArithmetic = true;
    }
  }
  if (!allArithmetic) {
    allArithmetic = false;
  }
  return allArithmetic
}

function geometric(array) {
  var allGeometric = null;
  for (var j=0; j < array.length; j++) {
    var check = []
    array.forEach(function(item, index, array){
      if (item * j == array[index + 1]) {
        check.push(item)
      } else if (array[index + 1] == undefined) {
        check.push(item)
      }
    })
    if (check.length == array.length) {
      allGeometric = true;
    }
  }
  if (!allGeometric) {
    allGeometric = false;
  }
  return allGeometric
}

function arithGeo(array) {
  if (arithmetic(array)) {
    return "Arithmetic"
  } else if (geometric(array)) {
    return "Geometric"
  } else {
    return -1
  }
}

// console.log(arithGeo([2,4,6,8]) == "Arithmetic")
// console.log(arithGeo([2,6,18,54]) == "Geometric")
// console.log(arithGeo([2,4,6,10]) == -1)
// -------------------------------------------------------
// # Swap Case
// # have the function SwapCase(str) take the str parameter and swap the case of
// # each character. For example: if str is "Hello World" the output should be
// # hELLO wORLD. Let numbers and symbols stay the way they are.

function swapCase(string) {
  var returning = []
  string = string.split("")
  for (var i=0; i < string.length; i++) {
    if (string[i] == string[i].toUpperCase()) {
      returning.push(string[i].toLowerCase())
    } else if (string[i] == string[i].toLowerCase()) {
      returning.push(string[i].toUpperCase())
    } else {
      returning.push(string[i])
    }
  }
  return returning.join("")
}

// console.log(swapCase("Hello World") == "hELLO wORLD")
// console.log(swapCase("4H2yt3FF") == "4h2YT3ff")



// ----------------------------------------------------------
// Given two strings, write a method to decide if one is a permutation of another.

function stringPermutation(stringOne, stringTwo) {
  var letterIndex = stringTwo.indexOf(stringOne[0]);

  if (stringOne.length != stringTwo.length) {
    return false;
  } else if(!stringOne.length) {
    return true;
  } else if(letterIndex > -1) {
    stringTwo = stringTwo.slice(0, letterIndex) + stringTwo.slice(letterIndex + 1, stringTwo.length)
    return stringPermutation(stringOne.slice(1, stringOne.length), stringTwo)
  } else {
    return false;
  }
}

// console.log(stringPermutation('mere', 'dithmeer')) // false
// console.log(stringPermutation('meredith', 'dithmeer')) // true
