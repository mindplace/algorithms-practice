// iterate through array and choose smallest number

function smallestNumber(array) {
  var smallest = array[0];

  for (var i=0; i < array.length; i++) {

    if (smallest > array[i]) {
      smallest = array[i];
    }
  }
  console.log(smallest);
}

// smallestNumber([10, 9, 2, 8, 6, 4])
// -------------------------------------------------------
// take sentence, split into array, iterate through and choose smallest word

function smallestWord(sentence) {
  var wordsArray = sentence.split(" ");
  var smallest = wordsArray[0];

  for (var i=0; i < wordsArray.length; i++) {
    if (smallest.length > wordsArray[i].length) {
      smallest = wordsArray[i];
    }
  }
  console.log(smallest);
}

// smallestWord("this is a sentence")
// -------------------------------------------------------
// take array of words, return the third greatest number in the array
// (two versions: one with sort, one without)

// version 1 -- not sorting the array first
function unsortedThirdGreatest(array) {
  var first = 0;
  var second = 0;
  var third = 0;

  for (var i=0; i < array.length; i++) {

    if (array[i] > first) {
      first = array[i];
    }
    else if (array[i] > second) {
      second = array[i];
    }
    else if (array[i] > third) {
      third = array[i];
    }
  }
  console.log(third)
}

// unsortedThirdGreatest([5, 11, 10, 8, 2, 6])

//version 2 -- sorting the array first

function sortedThirdGreatest(array) {
  array.sort(function(a, b) {
    return a - b;
  }).reverse();
  var thirdGreatest = array[2]
  console.log(thirdGreatest);
}

// sortedThirdGreatest([5, 11, 10, 8, 2, 6])
// -------------------------------------------------------
// method that returns the most common letter in a string

function mostCommonLetter(string) {
  var mostCommon = "";
  var highestCount = 0;
  var stringArray = string.split("");

  for (var i=0; i < stringArray.length; i++) {
    var current = stringArray[i];
    var currentCount = stringArray.map( function(element) {
      if (element === current) {
        return element;
      }
    }).filter(Boolean).length

    if (currentCount > highestCount) {
      highestCount = currentCount;
      mostCommon = current;
    }
  }
  console.log(mostCommon);
}

// mostCommonLetter("ttttrggr")
// ------------------------------------------------------
// add commas into a number to look like a standard number

function injectCommas(number) {
  var backwardsArray = number.toString().split("").reverse();
  var splitSets = new Array;

  while (backwardsArray.length) {
    var set = backwardsArray.splice(0, 3);
    splitSets.push(set.reverse().join(""));
  }
  console.log(splitSets.reverse().join(","));
}

// injectCommas(23451);
// injectCommas(8468247468450);
// -------------------------------------------------------
// write a method that returns the factorial of a given number

function recursiveFactorial(num){
  if (num == 1) {
    return 1;
  }
  else if (num == 0) {
    return 1;
  }
  else {
    return num * recursiveFactorial(num - 1);
  }
}

// var result = recursiveFactorial(3);
// console.log(result);
// -------------------------------------------------------
// write a method that takes an array of numbers and returns true if any
// number in the array, added up to its index, equals 10.

function addToTen(array) {
  var numsPlusIndex = new Array;

  for (var i=0; i < array.length; i++) {
    numsPlusIndex.push(array[i] + i);
  }

  for (var i=0; i < numsPlusIndex.length; i++) {
    if (numsPlusIndex[i] === 10) {
      return true;
    }
  }
  return false;
}

// console.log(addToTen([2, 9, 3, 4]));
// -------------------------------------------------------
// write method that prints out factors for each number from 1 to a given max.

function getFactors(num) {
  var range = new Array;
  for (var i=1; i <= num; i++) {
    range.push(i);
  }

  var factors = new Array;
  for (var i=0; i < range.length; i++) {
    if (num % range[i] === 0) {
      factors.push(range[i]);
    }
  }
  console.log(factors);
}

// getFactors(8);
// -------------------------------------------------------
// method that takes an array of numbers, and returns a new array with all the
// numbers doubled

function doubler(array) {
  var doubledNums = array.map( function(elem) {
    return elem * 2;
  });
  console.log(doubledNums);
}

// doubler([1, 2, 3, 4, 5]);
// -------------------------------------------------------
// Write a function oddball_sum(numbers), which takes in an array of
// integers and returns the sum of all the odd elements.

function oddballSum(array) {
  var sumArray = new Array;

  for (var i=0; i < array.length; i++) {
    if (!(array[i] % 2 === 0)) {
      sumArray.push(array[i]);
    }
    else if (array[i] === 1) {
      sumArray.push(array[i]);
    }
  }

  var sum = 0;
  for (var i=0; i < sumArray.length; i++) {
    sum = sum + sumArray[i];
  }

  console.log(sum);
}

// oddballSum([1, 4, 5, 3, 1])
// -------------------------------------------------------
// method that takes two numbers and returns the greatest common factor
function euclidGreatestCommonFactor(numOne, numTwo){
  if (numOne > numTwo) {
    var larger = numOne;
    var smaller = numTwo;
  }
  else {
    var larger = numTwo;
    var smaller = numOne;
  }

  var remainder = larger % smaller;

  if (!(remainder === 0)) {
    console.log(remainder);
    return euclidGreatestCommonFactor(smaller, remainder);
  }
}

// euclidGreatestCommonFactor(30, 12);
// euclidGreatestCommonFactor(45, 330);
// euclidGreatestCommonFactor(345, 230);
// -------------------------------------------------------
// Write a function disemvowel(string), which takes in a string,
// and returns that string will all the vowels removed.

function disemvowel(string) {
  var noVowels = new Array;
  var vowels = [ "a", "e", "i", "o", "u" ];
  var letters = string.split("");
  for (var i=0; i < letters.length; i++) {
    var current = letters[i];
    var tester = false;
    for (var j=0; j < vowels.length; j++) {
      if (current === vowels[j]) {
        tester = true;
      }
    }
    if (!tester) {
      noVowels.push(current);
    }
  }
  console.log(noVowels.join(""));
}

// disemvowel("this sentence might still be readable");
// -------------------------------------------------------
// method that takes a number and returns true/false depending on if it
// is prime

function primeTester(num) {
  var range = new Array;
  for (var i=1; i <= num; i++) {
    range.push(i);
  }

  var factors = new Array;
  for (var i=0; i < range.length; i++) {
    var current = range[i];
    if (num % current === 0) {
      factors.push(current);
    }
  }

  if (factors.length === 2) {
    return true;
  }
  return false;
}

// console.log(primeTester(37));
// console.log(primeTester(22));
// -------------------------------------------------------
// adding up items in an array

function sumUpArray(array) {
  var sum = 0;
  for (var i=0; i < array.length; i++) {
    sum = sum + array[i];
  }
  console.log(sum);
}

// sumUpArray([1, 2, 3, 4, 5, 6]);
// -------------------------------------------------------
// sum of integers from 1 to given num

function sumToMax(max) {
  var sum = 0;
  for (var i=1; i <= max; i++) {
    sum = sum + i;
  }
  console.log(sum);
}

// sumToMax(6);
// -------------------------------------------------------
// reverse a string || reverse an array

function reverseString(string) {
  var chars = string.split("").reverse();
  console.log(chars.join(""));
}

// reverseString("string");

function reverseArray(array) {
  console.log(array.reverse());
}

// reverseArray([1, 2, 3, 4, 5]);
// -------------------------------------------------------
// find the mode in a given array

function findMode(array) {
  var hashOfValues = {};
  for (var i=0; i < array.length; i++) {
    var count = 0;
    var current = array[i];
    for (var j=0; j < array.length; j++) {
      var secondCurrent = array[j];
      if (secondCurrent === current) {
        count += 1;
      }
    }
    hashOfValues[current] = count;
  }

  var highestCount = 0;
  for (var elem in hashOfValues) {
    if (hashOfValues[elem] > highestCount) {
      highestCount = hashOfValues[elem];
    }
  }

  var items = new Array;
  for (var thing in hashOfValues) {
    if (hashOfValues[thing] === highestCount) {
      items.push(Number(thing));
    }
  }
  console.log(items);
}

findMode([1, 1, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4]); // [3, 4]
findMode([1, 1, 1, 1, 2, 3, 4]) // [1]
// -------------------------------------------------------
// count vowels in a string

function countVowels(string) {
  var totalCount = 0;

  var vowels = [ "a", "e", "i", "o", "u" ];
  var letters = string.split("");

  for (var i=0; i < letters.length; i++) {
    var current = letters[i];
    for (var j=0; j < vowels.length; j++) {
      if (current === vowels[j]) {
        totalCount = totalCount + 1;
      }
    }
  }
  console.log(totalCount);
}

// countVowels("talekijohu");
// -------------------------------------------------------
// recursive palindrome

function recursivePalindrome(word) {
  if (word.length === 1) {
    return true;
  }
  else if (word.length === 2) {
    if (word[0] === word[1]) {
      return true;
    }
    else {
      return false;
    }
  }
  else {
    var newWord = word.slice(1, -1);
    return recursivePalindrome(newWord);
  }
}

// console.log(recursivePalindrome("radar"));
// console.log(recursivePalindrome("tart"));
// -------------------------------------------------------
// method that takes a book title and capitalizes appropriately

function capitalizeBookTitles(titleString) {
  var wordsArray = titleString.split(" ");
  var noCapitalize = [ "a", "the", "of", "an", "to", "for", "if" ];
  var titlizedArray = [];

  for (var i=0; i < wordsArray.length; i++) {
    var word = wordsArray[i];
    var inNoCapitalize = false;
    for (var j=0; j < noCapitalize.length; j++) {
      if (noCapitalize[j] == word) {
        inNoCapitalize = true;
      }
    }

    if (i === 0) {
      var newWord = word.charAt(0).toUpperCase() + word.slice(1);
      titlizedArray.push(newWord);
    }
    else if (!(inNoCapitalize)) {
      var newWord = word.charAt(0).toUpperCase() + word.slice(1);
      titlizedArray.push(newWord);
    }
    else {
      titlizedArray.push(word);
    }
  }
  console.log(titlizedArray.join(" "));
}

// capitalizeBookTitles("the life changing magic of tidying up");
// -------------------------------------------------------
// 'nearby az': Write a method that takes a string in and returns true if the
// letter
// "z" appears within three letters **after** an "a". You may assume
// that the string contains only lowercase letters.

function nearbyAZ(string) {
  var letters = string.split("");
  for (var i=0; i < letters.length - 3; i++) {
    var current = letters[i]
    if (current === "a") {
      for (var j=i; j < (i + 4); j++) {
          if (letters[j] === "z") {
            return true
          }
      }
    }
  }
  return false
}

// console.log(nearbyAZ("azmmnl")) // true
// console.log(nearbyAZ("ammnz")) // false
// console.log(nearbyAZ("ammnzammz")) // true
// -------------------------------------------------------
// Write a method that takes an array of numbers. If a pair of numbers
// in the array sums to zero, return true. If no pair of numbers sums to zero,
// return false.

function twoSum(array) {
  var toZero = false;
  for (var i=0; i < array.length; i++) {
    var current = array[i];
    for (var j=0; j < array.length; j++) {
      var comparator = array[j];
      if (!(current === comparator)) {
        if (current + comparator === 0) {
          toZero = true;
        }
      }
    }
  }
  console.log(toZero);
}

// twoSum([1, 2, 3, 3, -2, 4, 5]);
// ------------------------------------------------------
// method that takes an array of words ["grasping", "turning", "running",
// "fighting"]
// and selects a word that contains "turn"

function wordInArray(array, wordToFind) {
  var word = "";
  for (var i=0; i < array.length; i++) {
    var current = array[i];
    if (current.indexOf(wordToFind) > -1) {
      word = current;
    }
  }
  console.log(word);
}

// wordInArray(["turning", "running", "hanging", "instruct"], "tru")
// wordInArray(["turning", "running", "hanging", "instructing"], "run")
// -------------------------------------------------------
// fahrenheit to celsius conversion & celsius to fahrenheit

function temperatureConversion(temp, toNewType) {
  if ((toNewType[0] === "c") || (toNewType[0] === "C")) {
    // convert to celsius
    console.log((temp - 32) * (5/9))
  }
  else {
    // convert to fahrenheit
    console.log((temp * 9/5) + 32)
  }
}

// temperatureConversion(36, "Fahrenheit") // 98.8
// temperatureConversion(98, "Celsius") // 36.66...7
// -------------------------------------------------------
// method that returns true if num passed to it is a power of 2, otherwise
// return false
// my method: It repeatedly divides x, the 32-bit unsigned integer being
// tested, by 2. It divides until either the quotient becomes 1, in which case
// x is a power of two, or the quotient becomes odd before reaching 1, in which
// case x is not a power of two.
function checkIfPowerOfTwo(num) {
  while ((num % 2 === 0) && (num > 1)) {
    num = num / 2
  }
  console.log(num === 1);
}

// checkIfPowerOfTwo(2 * 2 * 2 * 2);
// checkIfPowerOfTwo(2 * 2 * 3);
// -------------------------------------------------------
// method that finds perfect squares in a given array

function findPerfectSquares(array) {
  var squares = new Array;
  for (var i=0; i < array.length; i++) {
    var num = array[i];
    var numFactors = new Array;
    for (var j=2; j < num; j++) {
      if (num % j === 0) {
        numFactors.push(j);
      }
    }
    for (var k=0; k < numFactors.length; k++) {
      if (numFactors[k] * numFactors[k] === num) {
        squares.push(numFactors[k] * numFactors[k]);
      }
    }
  }
  console.log(squares);
}

// findPerfectSquares([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) // 4, 9
// -------------------------------------------------------
// Write a method that takes in a string and an array of indices in the
// string. Produce a new string, which contains letters from the input
// string in the order specified by the indices of the array of indices.

function rearrangeString(string, indices) {
  var newWordArray = new Array;
  for (var i=0; i < indices.length; i++) {
    newWordArray[indices[i]] = string[i];
  }
  console.log(newWordArray.join(""));
}

// rearrangeString("sing", [3, 1, 2, 0]) // gins
// -------------------------------------------------------
// Write a method that takes in a string and returns the number of
// letters that appear more than once in the string. You may assume
// the string contains only lowercase letters. Count the number of
// letters that repeat, not the number of times they repeat in the string.

function repeatingLetters(string) {
  var lettersCounter = {};
  var lettersArray = string.split("");

  for (var i=0; i < lettersArray.length; i++) {
    var letter = lettersArray[i];
    var letterCount = 0;

    for (var j=0; j < lettersArray.length; j++) {
      var currentLetter = lettersArray[j];
      if (currentLetter === letter) {
        letterCount += 1;
      }
    }
    lettersCounter[letter] = letterCount;
  }

  var repeatedLetters = 0;
  for (var elem in lettersCounter) {
    var currentNum = lettersCounter[elem]
    if (currentNum > 1) {
      repeatedLetters += 1;
    }
  }
  console.log(repeatedLetters);
}

// repeatingLetters("aaaddt") // 2
// -------------------------------------------------------
// Write a function lucky_sevens?(numbers), which takes in an array of integers
// and returns true if any three consecutive elements sum to 7.

function luckySevens(array) {
  for (var i=0; i < array.length - 2; i++) {
    var addThree = (array[i] + array[i + 1] + array[i + 2])
    if (addThree === 7) {
      return true;
    }
  }
  return false;
}

// console.log(luckySevens([2, 0, 3, 4])) // true
// console.log(luckySevens([3, 3, 3, 3, 6, 6, 0, 1])) // true
// console.log(luckySevens([1, 2, 1, 2])) // false
// -------------------------------------------------------
// given a word, return true if that word's vowels are in alphabetical order.

function orderedVowels(string) {
  var vowels = new Array;
  var letterArray = string.split("");

  for (var i=0; i < letterArray.length; i++) {
    var x = letterArray[i];
    var test = (x === "a" || x === "e" || x === "i" || x === "o" || x === "u")
    if (test) {
      vowels.push(x);
    }
  }
  var test = (vowels.join("") === vowels.sort().join(""))
  console.log(test);
}

// orderedVowels("asterix") // true
// orderedVowels("funeral") // false
// -------------------------------------------------------
// bubble sort an array

function bubbleSort(array) {
  var sorted = false;
  while (!sorted) {
    for (var i=0; i < array.length - 1; i++) {
      var a = array[i];
      var b = array[i + 1];
      if (a > b) {
        array[i] = b;
        array[i + 1] = a;
        break;
      }
      if (i === array.length - 2) {
        sorted = true;
      }
    }
  }
  console.log(array);
}

// bubbleSort([5, 4, 3, 2, 1]) // [1, 2, 3, 4, 5]
// bubbleSort([9, 2, 7, 4, 5, 1, 6, 3, 8]) // [1, 2, 3, 4, 5, 6, 7, 8, 9]
// -------------------------------------------------------
// In Ruby, Array has a `uniq` method that removes duplicates from an array. It
// returns the unique elements in the order in which they first appeared:
//
// [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
//
// Write your own `uniq` method, called `my_uniq`; it should take in an
// Array and return a new array. It should not call `uniq`.

function myUniq(array) {
  var unique = new Array;
  for (var i=0; i < array.length; i++) {
    var x = array[i];
    var toAdd = true;
    for (var j=0; j < unique.length; j++) {
      if (unique[j] === x) {
        toAdd = false;
      }
    }
    if (toAdd) {
      unique.push(x);
    }
  }
  console.log(unique);
}

// myUniq([1, 1, 1, 2, 2, 2, 3, 3, 3])
// -------------------------------------------------------
//   Implement a Rock, Paper, Scissors game. The method `rps` should take
//   a string (either "Rock", "Paper" or "Scissors") as a parameter and
//   return the computer's choice, and the outcome of the match. Example:
//
// rps("Rock") # => "Paper, Lose"
// rps("Scissors") # => "Scissors, Draw"
// rps("Scissors") # => "Paper, Win"

function rockPaperScissors(string) {
  var options = {
    1: "Rock",
    2: "Paper",
    3: "Scissors",
  };

  var judge = {
    "Function wins!": [["Rock", "Paper"], ["Paper", "Scissors"], ["Scissors", "Rock"]],
    "You win!": [["Paper", "Rock"], ["Scissors", "Papers"], ["Rock", "Scissors"]],
    "Aww, a draw...": [["Paper", "Paper"], ["Rock", "Rock"], ["Scissors", "Scissors"]]
  };

  var functionMove = options[Math.floor((Math.random() * 3) + 1)];
  var moves = [string, functionMove].join(" ")
  var message = "";

  for (var elem in judge) {
    var group = judge[elem];
    for (var i=0; i < group.length; i++) {
        var potential = group[i].join(" ")
        if (moves === potential) {
          message = elem;
          break;
        }
    }
  }
  console.log("You played " + string + ", function played " + functionMove + ": " + message)
}

// rockPaperScissors("Paper");
// -------------------------------------------------------
//   Implement a Swingers game. The method `swingers` should take an
//   array of couple arrays and return the same type of data structure,
//   with the couples mixed up. Assume that the first item in the couple
//   array is a man, and the second item is a woman. Don't pair a person
//   with someone of their own gender (sorry to ruin your fun). An
//   example run of the program:
//
// swingers([
//   ["Clyde", "Bonnie"],
//   ["Paris", "Helen"],
//   ["Romeo", "Juliet"]
// ])

function swingers(array) {
  var firstPartners = new Array;
  var secondPartners = new Array;

  for (var i=0; i < array.length; i++) {
    var group = array[i];
    firstPartners.push(group[0]);
    secondPartners.push(group[1]);
  }

  var first = firstPartners.shift();
  firstPartners.push(first);

  var newCombo = new Array;
  for (var i=0; i < secondPartners.length; i++) {
    var group = [firstPartners[i], secondPartners[i]];
    newCombo.push(group);
  }
  console.log(newCombo);
}

// swingers([["Clyde", "Bonnie"], ["Paris", "Helen"], ["Romeo", "Juliet"]]);
// -------------------------------------------------------
// Write a method `substrings` that will take a `String` and return an
// array containing each of its substrings.

function substrings(string) {
  var substringArray = new Array;
  var letters = string.split("");

  for (var i=0; i < letters.length; i++) {
    for (var j=i; j < letters.length; j++) {
      substringArray.push(letters.slice(i, (j + 1)).join(""));
    }
  }
  console.log(substringArray);
}

// substrings("cat") // ["c", "ca", "cat", "a", "at", "t"]
// -------------------------------------------------------
// To represent a *matrix*, or two-dimensional grid of numbers, we can
// write an array containing arrays which represent rows:
//
// rows = [
//     [0, 1, 2],
//     [3, 4, 5],
//     [6, 7, 8]
//   ]
//
// row1 = rows[0]
// row2 = rows[1]
// row3 = rows[2]
// Write a method, `my_transpose`, which will convert between the
// row-oriented and column-oriented representations.

function transpose(array) {
  var columns = new Array;
  for (var i=0; i < array.length; i++) {
    var row = array[i];
    for (var j=0; j < row.length; j++) {
        if (!columns[j]) {
          columns[j] = [row[j]];
        }
        else {
          columns[j].push(row[j]);
        }
    }
  }
  console.log(columns);
}

// transpose([[0,0,0], [1, 1, 1], [2, 2, 2]])
// transpose([[0,0,0,0,0], [1,1,1,1,1], [2,2,2,2,2]])
// -------------------------------------------------------
// Martha has created a hash with letter symbols as keys to represent items that
// start with their keys. However, she realized everything is off by one letter.
//
// wrong_hash =
// { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }
//
// Write a program `hash_correct` that takes this wrong hash and returns the
// correct one.

function fixOffset(hashObject) {
  var valuesArray = new Array;
  for (var elem in hashObject) {
    valuesArray.push(hashObject[elem]);
  }

  var newObject = {}
  for (var i=0; i < valuesArray.length; i++) {
    var letter = valuesArray[i].split("").shift();
    newObject[letter] = valuesArray[i];
  }
  console.log(newObject);
}

// fixOffset({a: "banana", b: "cabbage", c: "dental_floss", d: "eel_sushi"});
// fixOffset({r: "quail", s: "ramen", t: "spicy_tuna", u: "turkey"})
