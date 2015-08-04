module.exports = {
  compute: function(base, comparison) {
    if (base.length != comparison.length) {
      throw new Error('DNA strands must be of equal length.')
    }

    // var hammingDistance = base.split("").reduce(function(counts, letter, i) {
    //   if (letter !== comparison[i]) {
    //     counts += 1 
    //   }
    //   return counts; 
    // }, 0)

    var unmatchedLetters = base.split("").filter(function(letter, i) {
      return letter !== comparison[i];
    });
    return unmatchedLetters.length;
  }
};
