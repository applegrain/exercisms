//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {
};

Bob.prototype.hey = function(input) {

  var upCaseInput = input.toUpperCase()
  var isQuestionMark = input.slice(-1)
  var isExclamationMark = input.slice(-1)
  var hasNoDownCase = input.toLowerCase()
  var isEmpty = ""

  if (!input || /^\s*$/.test(input)) {
    return "Fine. Be that way!"
  } else if (input === upCaseInput && /[A-Z]/.test(input)) {
    return "Whoa, chill out!"
  } else if (isQuestionMark === "?") {
    return "Sure."
  } else {
    return "Whatever."
  }

};

module.exports = Bob;
