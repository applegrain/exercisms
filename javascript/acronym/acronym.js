module.exports = {
  parse: function(string) {
    return string.split(/[^0-9a-zA-Z]/g).reduce(function(acronym, substr) {


      if (/[A-Z]/.test(substr)) {
        acronym += substr.split(/[a-z]/).filter(function(character) {
          return character;
        }).map(function(char) { return char[0] }).join('');
      } else if (substr) {
        acronym += substr[0].toUpperCase();
      }

      return acronym;
    }, '');
  }
}
