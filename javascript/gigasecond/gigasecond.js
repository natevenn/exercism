function Gigasecond(birthDate) {
  this.date = function() {
    var beginingOfTime = new Date(1970, 0, 1)
    var gigaSeconds = birthDate.getSeconds() + Math.pow(10, 9)
    var gigaSecondsAnniversary = beginingOfTime.setSeconds(birthDate + gigaSeconds)
    console.log(beginingOfTime)
    //return beginingOfTime
  }
};

module.exports = Gigasecond;
