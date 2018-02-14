package projectEuler;

public class Problem04 {
	
	public static String strReverse(String inputStr) {
		StringBuilder myString = new StringBuilder(inputStr);
		return myString.reverse().toString();
	}
	
	public static void main(String[] args) {
		int maxVal = 0;
		
		for (int i = 100; i < 1000; i++) {
			for (int j = 100; j < 1000; j++) {
				int product = i * j;
				String prodStr = Integer.toString(product);
				if (prodStr.equals(strReverse(prodStr)) && product > maxVal) {
					maxVal = product;
				}
			}
		}
		
		System.out.println("Largest palindrome: " + maxVal);
		
	}

}
