// Write a method that takes two strings: string1 is the base string, and string2 is a potential
// abbreviation of string1. Have your method return a boolean based on whether string2 is an abbreviation
// of string1.

function isAbbr(baseStr, testStr) {
  if (!testStr.length) {
    return true
  }

  var i = baseStr.indexOf(testStr[0])
  if (i > -1) {
    newBase = baseStr.split("").splice(i + 1, baseStr.length).join("")
    newTest = testStr.split("").splice(1, testStr.length).join("")
    return isAbbr(newBase, newTest)
  } else {
    return false
  }
}
