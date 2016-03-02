module.exports = function(age) {
  this.seconds = age;

  this.onEarth = function() {
    var age = this.seconds / 31557600;
    return parseFloat(age.toFixed(2));
  }

  this.onMercury = function() {
    return this.formatAge(0.2408467);
  }

  this.onVenus = function() {
    return this.formatAge(0.61519726);
  }

  this.onMars = function() {
    return this.formatAge(1.8808158);
  }

  this.onJupiter = function() {
    return this.formatAge(11.862615);
  }

  this.onSaturn = function() {
    return this.formatAge(29.447498);
  }

  this.onUranus = function() {
    return this.formatAge(84.016846);
  }

  this.onNeptune = function() {
    return this.formatAge(164.79132);
  }

  this.formatAge = function(div) {
    var age = this.onEarth() / div;
    return parseFloat(age.toFixed(2));
  }
}