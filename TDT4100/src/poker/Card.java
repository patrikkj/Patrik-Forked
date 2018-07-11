package poker;

import java.util.Arrays;
import java.util.List;

public class Card implements Comparable<Card> {
	private final char suit;
	private final int face;
	
	public static final List<Character> VALID_SUITS = Arrays.asList(new Character[] {'S', 'H', 'D', 'C'});
	
	
	public Card(char suit, int face) {
		// Validate suit
		if (! VALID_SUITS.contains(suit))
				throw new IllegalArgumentException("Invalid suit.");
		
		// Validate face
		if (face < 1  ||  face > 13)
			throw new IllegalArgumentException("Invalid face.");
		
		this.suit = suit;
		this.face = face;
	}
	

	public char getSuit() {
		return suit;
	}
	
	public int getFace() {
		return face;
	}
	
	@Override
	public String toString() {
		return String.format("%s%s", suit, face);
	}

	@Override
	public int compareTo(Card card) {
		return evalCard(this) - evalCard(card);
	}
	
	private int evalCard(Card card) {
		return (13 * VALID_SUITS.indexOf(card.getSuit())) + face;
	}
}






