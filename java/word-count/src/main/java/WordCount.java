import java.util.Map;
import java.util.HashMap;
import java.util.Arrays;

public class WordCount {
  public Map<String, Integer> phrase(String words) {
      Map<String, Integer> phraseMap = new HashMap<String, Integer>();

      String sanatizedWords = sanatizeWords(words);

      String[] wordsArray = sanatizedWords.split(" ");

      int i = 0;
      while (i < wordsArray.length) {
        String word = wordsArray[i].toLowerCase();
        countWords(phraseMap, word);
        i++;
      }
    return phraseMap;
  }

  public Map<String, Integer> countWords(Map<String, Integer> wordMap, String word) {
    if(wordMap.containsKey(word)) {
      int count = wordMap.get(word);
      count ++;
      wordMap.put(word, count);
    }else{
      wordMap.put(word, 1);
    }
    return wordMap;
  }

  public String sanatizeWords(String words) {
    return words.replaceAll("[^a-zA-Z0-9\\s]", "").replaceAll("\\s+", " ");
  }
}
