import java.util.HashMap;

public class DNA {
  private String input;
  private char[] letters = {'A', 'C', 'G', 'T'};

  public DNA() {};
  public DNA(String input) {
    this.input = input;
  }

  public Integer count(char nucleotide) throws IllegalArgumentException {
    Integer counter = 0;

    if (!(new String(letters).contains(String.valueOf(nucleotide)))) {
      throw new IllegalArgumentException();
    }

    for (int i = 0; i < input.length(); i++) {
      if (nucleotide == input.charAt(i)) {
        counter++;
      }
    }

    return counter;
  }

  public HashMap<Character, Integer> nucleotideCounts() {
    HashMap<Character, Integer> hashMap = new HashMap<Character, Integer>();
    for (char letter : letters) {
      hashMap.put(letter, count(letter));
    }

    return hashMap;
  }
}
