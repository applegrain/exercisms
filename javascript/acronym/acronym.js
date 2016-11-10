module.exports = {
  parse(string) {
    return string.split(/[^a-zA-Z]/g).reduce((acronym, substr) => {

      if (/[A-Z]/.test(substr)) {
        acronym += substr.split(/[a-z]/)
                         .filter(character => character)
                         .map(character => character[0])
                         .join('');
      }
      else if (substr) {
        acronym += substr[0].toUpperCase();
      }

      return acronym;
    }, '');
  }
}
