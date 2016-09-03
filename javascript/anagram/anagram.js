function Anagram(word) {
  var subject = normalizeWord(word)

  Anagram.prototype.matches = function(wordList) {
    if(wordList instanceof Array) {
      return wordList.filter(isAnagram)
    }else{
      var anagrams = []
      for(var i=0; i<arguments.length; i++) {
        anagrams.push(arguments[i])
      }
      return anagrams.filter(isAnagram)
    }
  }

  var isAnagram = function(value) {
    if(word.toLowerCase() !== value.toLowerCase()) {
      return normalizeWord(value) === subject
    }
  }
}

var normalizeWord = function(value) {
    return value.toLowerCase().split('').sort().join('')
}


module.exports = Anagram
