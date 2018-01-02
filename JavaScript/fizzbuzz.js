function FizzBuzz() {
  for (var i=1; i <= 30; i++) {
    var x = "";
    if (i % 3 == 0) {
      x += "Fizz";
    }
    if (i % 5 == 0) {
      x += "Buzz";
    }
    if (x == "") {
      x = i;
    }
    console.log(x);
  }
}

FizzBuzz();
