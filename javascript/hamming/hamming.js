module.exports = {
  compute: function(base, comparison) {
    if (base.length != comparison.length) {
      throw new Error('DNA strands must be of equal length.')
    }

    var unmatchedLetters = base.split("").filter(function(letter, i) {
      return letter !== comparison[i];
    });
    return unmatchedLetters.length;
  }
};
