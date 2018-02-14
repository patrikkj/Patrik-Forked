package projectEuler;

public class Problem06 {

	public static void main(String[] args) {
		long sumOfSquare = 0;
		long squareOfSum = (long)Math.pow((Math.pow(100, 2) + 100)/2, 2);
		System.out.println(squareOfSum);
		
		for (int i = 0; i <= 100; i++) {
			sumOfSquare += Math.pow(i, 2);
		}
		
		System.out.println(squareOfSum - sumOfSquare);
	}

}
