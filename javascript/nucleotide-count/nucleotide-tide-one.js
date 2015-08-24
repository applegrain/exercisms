module.exports = dna;

function dna(strand) {
  if (strand) isValidStrand(strand);

  var strand = (strand || '');

  return Object.create({
    count: count.bind(null, strand),
    histogram: histogram.bind(null, strand)
  });
}

function count(strand, nucleotide) {
  var acidCount = 0

  strand.split("").map(function(n) {
    if (n === nucleotide) {
      acidCount += 1
    }
  })

  return acidCount;
}

function histogram(strand) {
  return {
    'A': count(strand, 'A'),
    'T': count(strand, 'T'),
    'C': count(strand, 'C'),
    'G': count(strand, 'G')
  }
}

function isValidStrand(strand) {
  for (var i = 1; i < strand.length; i++) {
    if (!histogram(strand).hasOwnProperty(strand[i])) {
      throw "The strand is not valid.";
    }
  }
}
