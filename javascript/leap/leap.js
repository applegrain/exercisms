module.exports = function(year) {
  var isLeapYear = false
  if (byFour(year) && notByHundred(year) || byFourHundred(year)) return isLeapYear = true;
}

function byFour(year) {
  return year % 4 == 0;
}

function byFourHundred(year) {
  return year % 400 == 0;
}

function notByHundred(year) {
  return year % 100 != 0;
}
