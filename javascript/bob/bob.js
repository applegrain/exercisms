//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
  var input = input
  var upCaseInput = input.toUpperCase();
  var lastCharacter = input.slice(-1);
  var isNumber = /^\d+$/.test(input);

  if (input == upCaseInput) {
    return "Whoa, chill out!";
  } else if (lastCharacter == "?") {
    return "Sure."
  } else if (isNumber == true) {
    return "Whatever."
  } else {
    return "Whatever."
  }
};

module.exports = Bob;
