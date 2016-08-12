function Words() {
  Words.prototype.count = function(words) {
    var wordsArray = formatWords(words)
    var wordCounts = {}
    wordsArray.forEach(function(word){
      if(wordCounts.hasOwnProperty(word)){
        wordCounts[word] += 1
      }else{
        wordCounts[word] = 1
      }
    })
    return wordCounts
  }
}

function formatWords(words) {
  return words.toLowerCase().trim().replace(/\s+/, ' ').split(' ')
}
module.exports = Words
