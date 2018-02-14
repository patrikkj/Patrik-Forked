package projectEuler;
import java.util.ArrayList;

public class Problem07 {

	public static void main(String[] args) {
		ArrayList<Integer> primeList = new ArrayList<Integer>();
		double n = 2;
		
		primeList.add(2);
		primeList.add(3);
		
		while (primeList.size() != 10001) {
			
			for (int i = 2; i <= Math.sqrt(n); i++) {
				if (n % i == 0) {
					break;
				} else if (i == (int)Math.sqrt(n)) {
					primeList.add((int)n);
				}
			}
			
			n++;
			
		}
		
		System.out.println(primeList.get(primeList.size() - 1));
	}

}
