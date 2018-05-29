package dump;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class FizzBuzz {
	private static Map<Integer, String> map = new HashMap<>();
	
	static {
		map.put(3, "Fizz");
		map.put(5, "Buzz");
	}
	
	public static String parseNumber(int n) {
		String numStr = "";
		
		for (Entry<Integer, String> entry : map.entrySet())
			if (n % entry.getKey() == 0)
				numStr += entry.getValue();
		
		return (numStr.equals("")) ? Integer.toString(n) : numStr;
	}
	
	public static void main(String[] args) {
		for (int i = 0; i <= 100; i++)
			System.out.println(parseNumber(i));
	}
}
