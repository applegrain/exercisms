'use strict';

function Triangle(a, b, c) {
  this.sides = [a, b, c];
}

Triangle.prototype.kind = function() {
  if (this.isIllegal()) {
    throw new Error()
  }

  switch (this.uniqueSides().length) {
    case 1: return 'equilateral';
    case 2: return 'isosceles'
    case 3: return 'scalene';
    default: null;
  }
}

Triangle.prototype.isIllegal = function() {
  return violatesTriangleEquality(this.sides) || hasNegativeLength(this.sides);
}

Triangle.prototype.uniqueSides = function() {
  return this.sides.reduce(function(arr, side) {
    if (arr.indexOf(side) === -1) { arr.push(side) };
    return arr;
  }, []);
}

function hasNegativeLength(sides) {
  var hasNegativeSide = sides[0] < 0 || sides[1] < 0 || sides[2] < 0;
  var hasNoLength = add(sides) === 0;

  return hasNegativeSide || hasNoLength;
}

function violatesTriangleEquality(sides) {
  var a = sides[0], b = sides[1], c = sides[2];
  return (a + b < c) || (a + c < b) || (b + c < a);
}

function add(sides) {
  return sides.reduce(function(s, n) { return s = s + n; }, 0);
}

module.exports = Triangle;