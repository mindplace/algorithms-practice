// --- Permutation Palindrome -------------------------------------
// Write an efficient function that checks whether any permutation of an input string is a palindrome.
// You can assume the input string only contains lowercase letters.

function buildLetterCount(string) {
  var letterCounter = {};
  for (var i=0; i < string.length; i++) {
    letterCounter[string[i]] == undefined ? letterCounter[string[i]] = 1 : letterCounter[string[i]] += 1;
  }
  return letterCounter;
}

function isPermutationPalindrome(string){
  if (string.length <= 1) { return true; }

  var letterCounts = Object.values(buildLetterCount(string));
  if (letterCounts.every(function(elem){ return elem % 2 == 0; })) {
    return true;
  } else if (string.length % 2 == 0) {
    return false;
  } else {
    var oddCount = 0;
    for (var j=0; j < letterCounts.length; j++) {
      if (letterCounts[j] % 2 != 0) { oddCount += 1; }
    }
    return oddCount <= 1;
  }
}

// --- Tests -----------------------------------------------------

function runTests(){
  function assert(test, args) {
    if (!test) {
      console.log(args.testNumber + ". " + args.message + ": false");
    } else {
      console.log(args.testNumber + ". " + args.message + ": true");
    };
  };

  assert(
    isPermutationPalindrome('c') === true,
    { message: "'c' is a palindrome", testNumber: 0 }
  );

  assert(
    isPermutationPalindrome('cici') === true,
    { message: "'cici' has a palindrome permutation", testNumber: 1 }
  );

  assert(
    isPermutationPalindrome('civi') === false,
    { message: "'civi' does not have a palindrome permutation", testNumber: 2 }
  );

  assert(
    isPermutationPalindrome('civic') === true,
    { message: "'civic' is a palindrome", testNumber: 3 }
  );

  assert(
    isPermutationPalindrome('ivicc') === true,
    { message: "'ivicc' has a palindrome permutation", testNumber: 4 }
  );

  assert(
    isPermutationPalindrome('civil') === false,
    { message: "'civil' does not have a palindrome permutation", testNumber: 5 }
  );

  assert(
    isPermutationPalindrome('livci') === false,
    { message: "'livci' does not have a palindrome permutation", testNumber: 6 }
  );

  assert(
    isPermutationPalindrome('madam im adam') === true,
    { message: "'madam im adam' is a palindrome", testNumber: 7 }
  );
};

runTests();
