function Pangram(sentence) {
  formattedSentence = formatSentence(sentence)

  Pangram.prototype.isPangram = function() {
    sortedLetters = formattedSentence.sort()

    for (var i=0; i<sortedLetters.length; i++) {
      firstLetter = sortedLetters[i]
      nextLetter = sortedLetters[i + 1]
      if (nextLetter){
        if (firstLetter === nextLetter) {
          sortedLetters.splice(i + 1, 1)
          i -= 1
        }
      }
    }
    if (sortedLetters.length === 26) {
      return true
    }
    return false
  }
}

function formatSentence(sentence) {
  //return sentence.toLowerCase().replace(/\s+|[0-9]|_/g, '').split('')
  return sentence.toLowerCase().replace(/[^a-zA-Z]/g, '').split('')
}

module.exports = Pangram
