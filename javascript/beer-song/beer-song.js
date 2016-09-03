function BeerSong() {
  this.verse = function(verse) {
    return findVerse(verse)
  }

  this.sing = function(start, end) {
    if(end == null){ end = 0 }
    var string = ""
    for (var i=start; i > end; i--) {
      string += findVerse(i) + "\n"
    }
    string += findVerse(end)
    return string
  }
}

var findVerse = function(num) {
  var numberOfBottles = num + " bottles "
  var oneLess = (num - 1)
  var nextStanza = "Take one down and pass it around, " + oneLess + " bottles"
  if (num == 2){
    nextStanza = "Take one down and pass it around, " + oneLess + " bottle"
  }
  if (num == 1){
    numberOfBottles = num + " bottle "
    nextStanza = "Take it down and pass it around, no more bottles"
  }
  if (num == 0){
    return 'No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n';
  }

  return numberOfBottles + "of beer on the wall, " + numberOfBottles + "of beer.\n" + nextStanza + " of beer on the wall.\n";
}

module.exports = BeerSong


