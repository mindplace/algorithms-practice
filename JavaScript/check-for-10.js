// --- Check for the 10 ---------------------------------------
// Write a method/function that takes an array of numbers and
// returns a boolean based on if any number in the array,
// added up to its index, equals 10.

function checkForTen(array){
  if (typeof array != 'object' || array === undefined) { return false; }

  for (var i = 0; i < array.length; i++) {
    var currentNum = array[i];
    if (i + currentNum == 10) { return true; }
  };

  return false;
};
 
// --- Tests --------------------------------------------------
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
    checkForTen([0, 1, 2, 3]) == false,
    { message: "Should return false if no such number found", testNumber: 0 }
  );

  assert(
    checkForTen([9, 8, 8]) == true,
    { message: "Should return true if such number is found", testNumber: 1 }
  );

  assert(
    checkForTen([10, 9, 8]) == true,
    { message: "Should return true if more than one number is found", testNumber: 2 }
  );

  assert(
    checkForTen() == false,
    { message: "Should return false if no argument passed", testNumber: 3 }
  );

  assert(
    checkForTen([]) == false,
    { message: "Should return false if empty array is passed", testNumber: 4 }
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
