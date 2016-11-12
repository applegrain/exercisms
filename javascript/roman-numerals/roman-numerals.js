'use strict';

const TRANSLATIONS = {
  1000: 'M',
  900: 'CM',
  500: 'D',
  400: 'CD',
  100: 'C',
  90: 'XC',
  50: 'L',
  40: 'XL',
  10: 'X',
  9: 'IX',
  5: 'V',
  4: 'IV',
  1: 'I'
}


module.exports = function(integerToConvert) {
  let romanNumeral = '';
  Object.keys(TRANSLATIONS).reverse().forEach(function(arabicNumeral) {

    while (integerToConvert >= arabicNumeral) {
      integerToConvert -= arabicNumeral;
      romanNumeral += TRANSLATIONS[arabicNumeral];
    }
  });

  return romanNumeral;
}
