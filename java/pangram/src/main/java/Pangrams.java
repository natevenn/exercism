import java.util.Set;
import java.util.HashSet;


public class Pangrams {
  public static boolean isPangram(String sentence) {

    String sanitizedSentence = sanitizeSentence(sentence);

    Set<Character> uniqueSet = uniqueify(sanitizedSentence);

    Boolean result = uniqueSet.size() == 26;

    return result;
  }

  private static String sanitizeSentence(String sentence) {
   return sentence.toLowerCase().replaceAll("[^a-z]", "");
  }

  private static Set<Character> uniqueify(String sentence) {
    Set<Character> set = new HashSet<Character>();

    for(int i=0; i < sentence.length(); i++) {
      set.add(sentence.charAt(i));
    }

    return set;
  }
}
