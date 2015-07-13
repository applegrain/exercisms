var HelloWorld = function() {};

HelloWorld.prototype.hello = function(input) {
  var name = input || 'world'
  return "Hello, " + name + "!"
};

module.exports = HelloWorld;
