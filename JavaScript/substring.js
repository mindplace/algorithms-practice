function isSubstring(str, char, length) {
  var seekingPattern = char.repeat(length),
      regexp = new RegExp(seekingPattern, "gi");

  var foundMatch = !!(str.match(regexp) && str.match(regexp).length > 0);

  return foundMatch;
}

console.log(isSubstring("abcdaaa", "a", 3))
console.log(isSubstring("abcdaaa", "a", 0))
console.log(isSubstring("abcdaaa", "a", 4))
