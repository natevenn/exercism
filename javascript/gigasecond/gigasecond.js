function Gigasecond(birthDate) {
  this.date = function() {
    newDate = new Date(birthDate)
    newDate.setUTCSeconds(newDate.getSeconds() + Math.pow(10, 9))
    return newDate
  }
};

module.exports = Gigasecond;
