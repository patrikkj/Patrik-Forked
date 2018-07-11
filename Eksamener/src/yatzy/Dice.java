package yatzy;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.stream.Collectors;

public class Dice {
	// Fields
	private final int[] dices;
	public static final int DIE_SIDES = 6;

	
	// Constructors
	public Dice() {
		this(1);
	}
	
	public Dice(int n) {
		dices = new int[n];
	}
	
	
	// Methods
	public void throwDice() {
		value = (int) Math.ceil(Math.random()*DIE_SIDES);
	}
	
	public void throwDice(Collection<Dice> dices) {
		
	}
	
	public int getValueCount(int value) {
		return getValueCount(dices, value);
	}
	
	// Private helper method
	private static int getValueCount(int[] array, int value) {
		return (int) Arrays.stream(array).filter(e -> e == value).count();
	}
	
	public int getHighestValueOfSame(int count, int butNot) {
		return Arrays.stream(dices)
				.boxed()
				.sorted(Comparator.reverseOrder())
				.filter(n -> (getValueCount(n) >= count))
				.filter(n -> n != butNot)
				.findFirst()
				.orElse(0);
	}
	
	public int getStraightSum(int startValue, int endValue) {
		return Arrays.stream(dices)
				.filter(n -> n >= startValue)
				.filter(n -> n <= endValue)
				.sum();
	}
	
	// Private helper method
	protected static int generateValue() {
		return (int) Math.ceil(Math.random() * DIE_SIDES);
	}
	
	public void roll() {
		Arrays.stream(dices).forEach(n -> n = generateValue());
	}
	
	public void roll(int[] values) {
		for (int value : values)
			if (getValueCount(values, value) > getValueCount(dices, value))
				throw new IllegalStateException("Not enough matching dices.");
		
		for (int value : values) {
			for (int dice : dices)
				if (dice == value) {
					dice = generateValue();
					break;
				}
		}
	}
	
	
	@Override
	public String toString() {
		return Arrays.stream(dices)
				.mapToObj(Integer::toString)
				.collect(Collectors.joining("-"));
	}
}
