package dump;

import java.time.Duration;
import java.time.Instant;

public class Primes {
	private static int[] primes;
	private static int primeCount = 2;
	
	private static final void findPrimes(final int range) {
		primes = new int[range/2];
		primes[0] = 2;
		primes[1] = 3;
		
		for (int i = 6; i < range; i += 6) {
			isPrime(i-1);
			isPrime(i+1);
		}
	}
	
	private static final boolean isPrime(final int num) {
		for (int i = 0; i < primes.length; i++) {
			if (num % primes[i] == 0) 
				return false;
			
			if (primes[i] > Math.sqrt(num)) {
				primes[primeCount++] = num;
				return true;
			}
		}
		return true;
	}
	
	public static void main(String[] args) {
		Instant start = Instant.now();
		
		findPrimes(1000000000);
		
		System.out.println(primeCount);
		System.out.printf("%s", (double) Duration.between(start, Instant.now()).toMillis()/1000);
	}
}
