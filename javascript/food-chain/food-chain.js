var VERSES = [
  {
    animal: "fly"
  },
  {
    animal: "spider",
    intro: "It wriggled and jiggled and tickled inside her.",
    chased: "that wriggled and jiggled and tickled inside her"
  },
  {
    animal: "bird",
    intro: "How absurd to swallow a bird!"
  },
  {
    animal: "cat",
    intro: "Imagine that, to swallow a cat!"
  },
  {
    animal: "dog",
    intro: "What a hog, to swallow a dog!"
  },
  {
    animal: "goat",
    intro: "Just opened her throat and swallowed a goat!"
  },
  {
    animal: "cow",
    intro: "I don't know how she swallowed a cow!"
  },
  {
    animal: "horse"
  }
];

module.exports = {
  verse: function(index) {
    index  = index - 1
    var current = VERSES[index]
    var previous = VERSES.slice(0, index + 1);

    var lines = [opening(current.animal)]

    if (index == VERSES.length - 1) {
      lines.push("She's dead, of course!");
    } else {
      isNotLastVerse(lines, current, previous);
    }

    return lines.join("\n") + "\n";
  },
  verses: function(start, end) {
    var final_verse = [];
    for (var i = start; i <= end; i++) {
      final_verse.push(this.verse(i));
    }
    return final_verse.join("\n") + "\n";
  }
};

function opening (current) {
  return "I know an old lady who swallowed a " + current + ".";
}

function closing () {
  return "I don't know why she swallowed the fly. Perhaps she'll die.";
}

function isNotLastVerse(lines, current, previous) {
  var middle = middle_lines(previous);

  if (current.intro) {
    lines.push(current.intro);
  }

  if (middle) {
    lines.push(middle);
  }

  lines.push(closing());
}

function middle_lines (previous) {
  var lines = [];

  for (var i = 1; i < previous.length; i++) {
    var firstAnimal = previous[i].animal;
    var second = previous[i - 1];
    var secondAnimal = second.animal;

    line(firstAnimal, secondAnimal, second, lines)
  }
  return lines.reverse().join("\n")
}

function line(firstAnimal, secondAnimal, second, lines) {

    if (second.chased) {
      secondAnimal += " " + second.chased;
    }

    lines.push("She swallowed the " + firstAnimal + " to catch the " + secondAnimal + ".");
}
