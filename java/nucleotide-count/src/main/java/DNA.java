import java.util.Map;
import java.util.HashMap;
import java.lang.*;

public class DNA {
  private String word;
  private Map<Character, Integer> dnaMap;

  public DNA(String word) {
    this.word = word;
    this.dnaMap = new HashMap<>();
    this.dnaMap.put(new Character('A'), new Integer(0));
    this.dnaMap.put(new Character('C'), new Integer(0));
    this.dnaMap.put(new Character('G'), new Integer(0));
    this.dnaMap.put(new Character('T'), new Integer(0));
  };

  public int count(char letter) {
    int counter = 0;
    if(!dnaMap.containsKey(letter)){
      throw new IllegalArgumentException();
    }
    for(int i=0; i < word.length(); i++) {
      if ( word.charAt(i) == letter ) {
        counter++;
      }
    }
    return counter;
  }

  public Map<Character, Integer> nucleotideCounts() {
    for(int i=0; i < word.length(); i++) {
      char nucleotide = word.charAt(i);
       int counter = count(nucleotide);
         if(dnaMap.containsKey(nucleotide)) {
           dnaMap.replace(new Character(nucleotide), new Integer(counter));
         }
    }
    return dnaMap;
  }
}
