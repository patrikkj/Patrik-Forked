package projectEuler;

public class Problem03 {

	public static void main(String[] args) {
		int div = 2;
		long num = 600851475143L;
		
		while (div < num) {
			while (num % div == 0) {
				num = num / div;
			}
			div++;
		}
		
		System.out.print("Factor: " + div);
		
	}

}
