var BigInt = require('./big-integer');

module.exports = function() {

  this.square = function(num) {
    return num === 1 ? num.toString() : this.calculateSum(num);
  }

  this.total = function() {
    var sum = BigInt(0);
    for (var i = 1; i <= 64; i++) { sum = sum.add(this.calculateSum(i)); }

    return sum.toString();
  }

  this.calculateSum = function(num) {
    var sum = BigInt(1);
    for (var i = 1; i < num; i++) { sum = sum.times(2); }

    return sum.toString();
  }
}