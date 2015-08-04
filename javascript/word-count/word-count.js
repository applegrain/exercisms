var wordCount = function(input) {
  var trimmedInput = input.trim()
  var splitPattern = /\s+/
  var splitString = trimmedInput.split(splitPattern);

  var counts = splitString.reduce(function(hash, word) {
    if (!hash.hasOwnProperty(word)) {
      hash[word] = 0;
    }
    hash[word] += 1;
    return hash;
  }, {});

  return counts;
};

module.exports = wordCount;

