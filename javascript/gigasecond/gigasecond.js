function Gigasecond(date) {
  this.date = function() {
    var datePlusGs = date.setSeconds(date.getSeconds() + Math.pow(10, 9))
    return date
  }
};

module.exports = Gigasecond;
