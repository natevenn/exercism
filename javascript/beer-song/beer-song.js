function BeerSong() {
  BeerSong.prototype.verse = function(verse) {
    return findVerse(verse)
  }

  BeerSong.prototype.sing = function(start, end) {
    if(end == null){
      end = 0
    }
    var string = ""
    for (var i=start; i > end; i--) {
      while (i > end) {
        string + findVerse(i) + "\n"
      }
    }
    string + findVerse(end)
  }
  return 'hello'
}

var findVerse = function(num) {
  var numberOfBottles = num + " bottles "
  var oneLess = (num - 1)
  var secondStanza = "Take one down and pass it around, " + oneLess + " bottles"
  if (num == 2){
    secondStanza = "Take one down and pass it around, " + oneLess + " bottle"
  }
  if (num == 1){
    numberOfBottles = num + " bottle "
    secondStanza = "Take it down and pass it around, no more bottles"
  }
  if (num == 0){
    return 'No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n';
  }

  return numberOfBottles + "of beer on the wall, " + numberOfBottles + "of beer.\n" + secondStanza + " of beer on the wall.\n";
}

//take the starting num interpolate into the verse
//if given a ending number subtract from start number by 1 and interpolate into
//verse. repeat until num is less than end number
//pass num into a seperate function that interpolates into verse

module.exports = BeerSong


