module.exports = phoneNumber;

function phoneNumber(number) {
  this.number = function() {
    hasEleven = hasElevenDigits(clean(number));

    return isValid(hasEleven);
  }

  this.areaCode = function() {
    return number.slice(0, 3);
  }

  this.toString = function() {
    var tail = number.slice(3, 10);
    return '(' + this.areaCode() + ') ' + tail.slice(0, 3) + '-' + tail.slice(3, 10);
  }
};

function clean(number) {
  return number.replace(/[^\d.]/g, '').replace(/\./g, '');
};

function hasElevenDigits(number) {
  var condition = number.length > 10 && number[0] == 1
  return condition ? number.slice(1) : number;
}

function isValid(number) {
  var condition = number.length != 10;
  return condition ? '0000000000' : number;
}
