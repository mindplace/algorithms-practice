// --- Most common letter -------------------------------------
// Given a string, return the character that is most common, including the number of times it occurs.
// mostCommonLetter("scars") => { letter: "s", letterCount: 2 }

function mostCommonLetter(string){
  var letterCounter = {},
      highestCount = 0,
      mostRecurringLetter = null;

  string.split("").forEach(function(letter){
    if (letterCounter[letter] === undefined) {
      letterCounter[letter] = 0;
    }

    letterCounter[letter] += 1;

    if (letterCounter[letter] > highestCount) {
      mostRecurringLetter = letter;
      highestCount = letterCounter[letter];
    }
  });

  return { letter: mostRecurringLetter, letterCount: highestCount };
}


// --- Tests ---------------------------------------------------

function assert(test, args) {
  var testNumber = args.testNumber,
      message = args.message;

  if (!test) {
    console.log(testNumber + ". " + message + ": false");
  } else {
    console.log(testNumber + ". " + message + ": true");
  };
};

function runTests(){
  var testRunTime = Date.now();

  assert(
    typeof mostCommonLetter("scars") === 'object',
    { message: "Should return an object", testNumber: 0 }
  );

  assert(
    mostCommonLetter("scars").letter === "r",
    { message: "Should return 's' when given 'scars'", testNumber: 1 }
  );

  showElapsedTime(testRunTime);
};

function showElapsedTime(testRunTime){
  var currentTime = Date.now(),
      difference = new Date(currentTime - testRunTime),
      diffSeconds = difference.getSeconds(),
      diffMilliseconds = difference.getMilliseconds();

  console.log("\nTotal test time: 00:0" +  diffSeconds + ":0" + diffMilliseconds)
}


runTests();
