package projectEuler;
import java.util.ArrayList;
public class Problem10 {

	public static void main(String[] args) {
		long primeSum = 5;
		ArrayList<Integer> primeList = new ArrayList<Integer>();
		primeList.add(2);
		primeList.add(3);
		
		for (int n = 5; n < 2000000; n++) {
			double lim = Math.sqrt(n);
			
			for (int index = 0; index < primeList.size(); index++) {
				
				if (n % primeList.get(index) == 0) {
					break;
				}
				else if (primeList.get(index) > lim) {
					primeList.add(Integer.valueOf(n));
					primeSum += n;
					break;
				}
			}
		}
		
		System.out.println(primeSum);
		
	}

}
