// ### Bitonic Point Detection
//
// Given an array of integers that is initially increasing and then decreasing (a bitonic sequence), find the index of the peak (the bitonic point).
// 
// Hint: There's a solution that is O(n) and one that is O(log(n))!
//
// Example:
// ```
// Input: [2, 3, 4, 5, 2, 1]
//
// Output: 3
// ```
//
// [Source](https://www.geeksforgeeks.org/find-bitonic-point-given-bitonic-sequence/)

function bitonic(arr) {
  let largestNum = 0;
  let largestNumIndex = 0;

  for (let i = 0; i < arr.length; i++){
    if (arr[i] > largestNum) {
      largestNum = arr[i];
      largestNumIndex = i;
    } else {
      break;
    }
  }

  return largestNumIndex;
}


// -- test ----------

function createTest(expression, description) {
  var passFail = expression ? 'Pass' : 'Fail';
  console.log(passFail + ": " + description);
}

createTest((typeof(bitonic) === typeof (Function)), "testing if bitonic is defined" );
createTest((bitonic([1, 2, 3, 4, 1]) == 3), "Given [1, 2, 3, 4, 1], returns 3 which is the location of the largest num");
createTest((bitonic([11, 12, 13, 14, 10]) == 3), "Given [11, 12, 13, 14, 10], returns 3 which is the location of the largest num");
