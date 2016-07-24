'use strict';

class Isogram {
  constructor(word) {
    this.word = this._sanitize(word);
    // TODO: this array is a disaster. should instead generate an array with all alphanumeric chars
    this.alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
                     't', 'u', 'v', 'w', 'x', 'y', 'z', 'é', 'å', 'ä', 'ö', 'ü', 'ß'];
  }

  isIsogram() {
    for (let i = 0; i < this.word.length; i++) {
      let index = this.alphabet.indexOf(this.word[i]);
      if (index === -1) { return false; }

      this.alphabet.splice(index, 1);
    }
    return true;
  }
  _sanitize(input) {
    // TODO: the replace()'s are too fragile
    return input.toLowerCase().replace(/ /g,'').replace(/-/g, '').split('');
  }
};

module.exports = Isogram;
