var isAnagram = require('./anagram');

describe('Anagram', function() {
  it("checks whether a word is an anagram", function() {
    var result = isAnagram("computer", ["computre"]);
    expect(result).toEqual(["computre"]);
  });

  it("knows whether or not a word is an anagram", function() {
    var result = isAnagram("computer", ["screen"]);
    expect(result).toEqual([]);
  });

  it("works case insensitively", function() {
    var result = isAnagram("Computer", ["ScReEn", "comPutre", "bIke"]);
    expect(result).toEqual(["comPutre"]);
  });

  it("accepts a list of strings as candidates", function() {
    var result = isAnagram("Computer", "ScReEn", "comPutre", "bIke", "coffEE", "comRetup");
    expect(result).toEqual(["comPutre", "comRetup"])
  });
});
