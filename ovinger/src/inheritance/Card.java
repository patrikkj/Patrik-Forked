package inheritance;

public class Card implements Comparable<Card> {
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

	
	@Override
	public int compareTo(Card card) {
		int valThis = evalCard(this);
		int valCard = evalCard(card);
		
		//Return 0 if cards are of equal value
		if (valThis == valCard) return 0;
		
		//Return 1 if 'this' has a higher value, else -1
		return (valThis > valCard) ? 1 : -1;
	}
	
	// Kløver < Ruter < Hjerter < Spar
	private int evalCard(Card card) {
		switch (card.getSuit()) {
		case 'C':
			return 0*13 + card.getFace();
		case 'D':
			return 1*13 + card.getFace();
		case 'H':
			return 2*13 + card.getFace();
		case 'S':
			return 3*13 + card.getFace();
		default:
			return -1;
		}
	}
	
}