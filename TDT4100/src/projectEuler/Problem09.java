package projectEuler;

public class Problem09 {

	public static void main(String[] args) {		
		for (int a = 0; a <= 334; a++) {
			
			for (int b = a; b <= 500; b++) {
			
				double c = Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2));
				if (a + b + c == 1000) {
					System.out.println(a + b + c);
					System.out.println(a*b*(int)c);
				}
			}
			
		}
	}

}
