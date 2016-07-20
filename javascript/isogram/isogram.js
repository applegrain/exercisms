'use strict';

class Isogram {
  constructor(word) {
    this.word = this._sanitize(word);
  }

  isIsogram() {
    let categorized = this.categorize();

    return Object.keys(categorized).filter(function(el) {
      return categorized[el] > 1;
    }).length === 0;
  }

  categorize() {
    return this.word.reduce(function(hash, letter) {
      if (!hash.hasOwnProperty(letter)) {
        hash[letter] = 0;
      }
      hash[letter] = hash[letter] + 1;
      return hash;
    }, {});
  }

  _sanitize(input) {
    return input.toLowerCase().replace(/ /g,'').replace(/-/g, '').split('');
  }
};

module.exports = Isogram;
