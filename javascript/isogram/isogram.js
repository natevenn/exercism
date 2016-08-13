function Isogram(word) {
  this.word = word
  Isogram.prototype.isIsogram = function() {
    var wordArray = formatWord(this.word)
    var counter = 0
    var newArray = {}
    var result = true
    for (var i=0; i < wordArray.length; i++) {
      var letter = wordArray[i]
      if(newArray[letter]){
        var result = false
      } else {
        newArray[letter] = 1
      }
    }
  return result
  }
}

function formatWord(word) {
  return word.toLowerCase().replace(/\s+|-/g, '').split('')
}

module.exports = Isogram
