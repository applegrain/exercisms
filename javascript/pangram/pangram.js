module.exports = Pangram;

function Pangram(sentence) {
  this.letters = letters(sentence)
}

Pangram.prototype.isPangram = function() {
  var alphabet = uniqueLetters(this.letters);
  return alphabet.length === 26;
}

function uniqueLetters(letters) {
  return letters.reduce(function(a, letter) {
    a.indexOf(letter) === -1 ? a.push(letter) : a;
    return a;
  }, []);
}

function letters(sentence) {
    return sentence.toLowerCase()
                   .split("")
                   .filter(function(el) { return el !== " " && /^[a-z]+$/.test(el); });
}
