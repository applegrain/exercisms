module.exports = function(target, words) {
  var wordArray = Array.isArray(words) ?
                    words :
                    Array.prototype.slice.call(arguments, 1);

  return wordArray.filter(function(word){
    return normalize(word) === normalize(target);
  });
};

function normalize(word) {
  return word.toLowerCase().split("").sort().join("");
}
