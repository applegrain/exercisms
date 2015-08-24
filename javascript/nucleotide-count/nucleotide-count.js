function Nucleotide(n) {
  var nucleotides = n || ""

  if (nucleotides) isValidStrand(nucleotides);

  this.isValidStrand = function(nucleotides) {
    nucleotides.split("").forEach(function(n) {
      if (!histogram(nucleotides).hasOwnProperty(n)) throw "The strand is not valid"
    });
  }

  this.count = function(acid) {
    var regExp = new RegExp(acid, 'g');
    return (nucleotides.match(regExp)||[]).length
  };

  this.histogram = function() {
    return { A : count('A'), T : count('T'), C : count('C'), G : count('G') };
  }

  return this;
}

module.exports = Nucleotide;
