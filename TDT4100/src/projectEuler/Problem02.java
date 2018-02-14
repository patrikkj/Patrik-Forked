package projectEuler;

public class Problem02 {

	public static void main(String[] args) {
		int fibSum = 2, fib1 = 1, fib2 = 2;
		int fibElem = fib1 + fib2;
		
		while (fibElem < 4000000) {
			if (fibElem % 2 == 0) {
				fibSum += fibElem;
			}

			fib1 = fib2;
			fib2 = fibElem;
			fibElem = fib1 + fib2;	
		}
		
		System.out.print("Sum: " + fibSum);
		
	}

}
