package farkle;

import java.util.Collection;

public class Dice {
	// Fields
	private int value;
	private boolean free = true;
	public static final int DIE_SIDES = 6;

	
	// Constructors
	public Dice() {
		throwDice();
	}
	
	
	// Methods
	public void throwDice() {
		if (!isFree())
			throw new IllegalStateException("Cannot throw locked dice.");
		
		value = (int) Math.ceil(Math.random()*DIE_SIDES);
	}
	
	public int getValue() {
		return value;
	}
	
	public boolean isFree() {
		return free;
	}
	
	public void lock() {
		free = false;
	}
	
	public void unlock() {
		free = true;
	}

	// Static methods
	protected static void rollDices(Collection<Dice> dices) {
		dices.forEach(Dice::throwDice);
	}
	
	@Override
	public String toString() {
		return Integer.toString(value);
	}
}
