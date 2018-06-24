// Create a function called repeatify that takes in two arguments as the input - a string and a number. The function should return the string repeated the given numberof times. If the first argument is not a string or the second argument is not a number, return false.
//
// Example: repeatify('hello',3) should return 'hellohellohello'.
//
// Extension: Write the function without using a 'for' loop

// ---


// function repeatify(str, num) {
//   let returningStr = '';
//
//   for(let i = 0; i < num; i++) {
//     returningStr += str;
//   }
//
//   return returningStr;
// }

function repeatify(str, num) {
  let returningStr = '';

  while (num > 0) {
    returningStr += str;
    num--;
  }

  return returningStr;
}


// -- test ----------

function createTest(expression, description) {
  var passFail = expression ? 'Pass' : 'Fail';
  console.log(passFail + ": " + description);
}

createTest((typeof(repeatify) === typeof(Function)), "repeatify is defined");
createTest((repeatify('yes', 3) == 'yesyesyes'), "repeatify(yes, 3) should return yesyesyes");
createTest((repeatify('no', 2) == 'nono'), "repeatify(no, 2) should return nono");
