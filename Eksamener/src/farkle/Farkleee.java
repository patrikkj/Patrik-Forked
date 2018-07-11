package farkle;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class Farkleee {
	public static int[] generateDices() {
		return Collections.nCopies(6, (int) (Math.random() * 6d)).stream().mapToInt(i -> i).toArray();
	}

	public static boolean isFarkle(int[] dices) {
		Collection<Integer> betterdices = Arrays.stream(dices).boxed().collect(Collectors.toList());

		Predicate<Integer> isTriple = (p) -> (Collections.frequency(betterdices, p) >= 3);
		Predicate<Integer> isSingle = (p) -> p.equals(1) || p.equals(5);

		return betterdices.stream().noneMatch(isTriple.or(isSingle));
	}
	
	
}
