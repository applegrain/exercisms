module.exports = function(d) {
  this.date = function() {
    var newDate = new Date((d.getTime() + 1000000000000));

    newDate.setSeconds(0);
    newDate.setMinutes(0);
    newDate.setHours(0);
    return newDate;
  }
}
