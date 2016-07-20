module.exports = function(word) {

  this.isIsogram = function() {
    var sanitized = word.toLowerCase().replace(/ /g,'').replace(/-/g, '').split('');

    var categorized = sanitized.reduce(function(hash, letter) {
      if (!hash.hasOwnProperty(letter)) {
        hash[letter] = 0;
      }
      hash[letter] = hash[letter] + 1;
      return hash;
    }, {});

    var moreThanOneOccurrence = Object.keys(categorized).filter(function(el) {
      return categorized[el] > 1;
    });

    return moreThanOneOccurrence.length === 0;
  }
}
