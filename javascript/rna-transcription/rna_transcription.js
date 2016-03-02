module.exports = function(n) {
  var pairs = {
    'C': 'G',
    'G': 'C',
    'A': 'U',
    'T': 'A'
  }

  // ES6
  // return n.split('').map(n => pairs[n]).join('');
  return n.split("").map(function(n) {
    return pairs[n];
  }).join("");
}
