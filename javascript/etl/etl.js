module.exports = (old) => {
  var pairs = Object.keys(old).reduce(function(object, element) {

    old[element].forEach(function(letter) {
      object[letter.toLowerCase()] = parseInt(element);
    });

    return object;
  }, {});

  return pairs;
}