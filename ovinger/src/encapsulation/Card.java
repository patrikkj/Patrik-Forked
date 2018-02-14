package encapsulation;

public class Card {
	//Declarations
	private char suit;
	private int face;
	
	
	//Constructor
	public Card(char suit, int face) throws IllegalArgumentException {
		if (!isValidCard(suit, face))
			throw new IllegalArgumentException("Invalid initial attributes.");
		
		this.suit = suit;
		this.face = face;
	}
	
	
	//Validation
	private boolean isValidCard(char suit, int face) {
		if (suit != 'S' && suit != 'H' && suit != 'D' && suit != 'C') return false;
		if (face < 1  ||  face > 13) return false;
		
		return true;
	}
	
	
	//Getters
	public char getSuit() { return suit; }
	
	public int getFace() { return face; }
	
	
	//Others
	@Override
	public String toString() {
		return String.format("%s%s", suit, face);
	}
	
	
	
}
