function BinaryConverter(binNum) {
  var numArray = binNum.toString().split("").reverse();
  var number = 0;
  for (var i=0; i < numArray.length; i++) {
    var num = parseInt(numArray[i]);
    var location = Math.pow(2, i);
    number += num * location;
  }
  return number;
}

console.log(BinaryConverter(101)) // 5
console.log(BinaryConverter(1000)) // 8

///////////////////////////////////////////////////////////////////

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

console.log(toBinaryNumber(8) === 1000);
