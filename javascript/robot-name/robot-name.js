function Robot() {
  this.name  = getRobotName();
}

Robot.prototype.reset = function() {
  this.name = getRobotName();
  return this;
}

function getRobotName() {
  return randomLetters() + (Math.floor(Math.random() * (999 - 100)) + 100);
}

function randomLetters() {
  var alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');

    var m = alphabet.length, t, i;

    while (m) {
      i = Math.floor(Math.random() * m--);

      t = alphabet[m];
      alphabet[m] = alphabet[i];
      alphabet[i] = t;
    }
  return alphabet.slice(0, 2).join('');
}

module.exports = Robot;
