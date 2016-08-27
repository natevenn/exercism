function at(hour, min) {
  if(min >= 60){
    hour += Math.floor(min / 60)
  }
  var hour = formatTime(hour, 24)
  var min = formatTime(min, 60)
  this.toString = function() {
    if(min === undefined) {
      return hour + ':' + '00'
    }else{
      return hour + ':' + min
    }
  }
  return this
}

var formatTime = function(time, rollOver) {
  if(time >= rollOver) {
    time = time % rollOver
  }
  if(time < 10) {
    return '0' + time
  }else{
    return time
  }
}

module.exports = at
