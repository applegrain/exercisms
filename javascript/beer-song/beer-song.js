module.exports = {
  verse: function(num) {
    var fullVerse = [
      firstLine(num),
      middleLine(num),
      lastLine(num)
    ].join("")

    return fullVerse;
  },
  sing: function(start, end) {
    end = typeof end !== 'undefined' ?  end : 0;

    var verses = [];
    for(var i = start; i >= end; i--) {
      verses.push(this.verse(i));
    }
    return verses.join("\n");
  }
};

function firstLine(num) {
  if (num === 0) {
    return "No more bottles of beer on the wall, no more bottles of beer."
  } else if (num === 1) {
    return "1 bottle of beer on the wall, 1 bottle of beer."
  } else {
    return num + " bottles of beer on the wall, " + num + " bottles of beer."
  }
}

function middleLine(num) {
  if (num === 0) {
    return "\nGo to the store and buy some more, "
  } else {
    var middle = num === 1 ? "\nTake it down and pass it around, " : "\nTake one down and pass it around, "
    return middle
  }
}

function lastLine(num) {
  if (num === 0) {
    return "99 bottles of beer on the wall.\n";
  } else {
    var bottle = num === 2 ? "bottle" : "bottles"
    var lastLine = num === 1 ? "no more bottles of beer on the wall.\n" : (num - 1) + " " + bottle + " of beer on the wall.\n"
    return lastLine;
  }
}
