var wordCount = function(input) {
  var splitString = input.trim().split(/\s+/);

  var instances = splitString.reduce(function(hash, word) {
    if (!hash.hasOwnProperty(word)) { hash[word] = 0; }

    hash[word] += 1;
    return hash;
  }, {});

  return instances;
};

module.exports = wordCount;

