import java.util.List;
import java.util.Map;
import java.util.HashMap;

public class Etl {
   public Map<String, Integer> transform(Map<Integer, List<String>> old) {
      HashMap<String, Integer> map = new HashMap<String, Integer>();

      for (Map.Entry<Integer, List<String>> entry : old.entrySet()) {

        for (String letter : entry.getValue()) {
          map.put(letter.toLowerCase(), entry.getKey());
        }
      }
      return map;
   }
}
