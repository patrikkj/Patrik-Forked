package poker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class CardDeck extends CardContainer {
	
	
	public CardDeck() {
		this(13);
	}
	
	public CardDeck(int n) {
		for (int i = 0; i < 4*n; i++)
			cards.add(new Card(Card.VALID_SUITS.get(i/n), i%n + 1));
	}
	
	
	public void shuffle() {
		Collections.shuffle(cards);
	}
	
	public CardHand deal(int size) {
		if (size > cards.size())
			throw new IllegalStateException("Cannot deal that many cards!");
		
		Collection<Card> hand = new ArrayList<>();

		for (int i = 0; i < size; i++)
			hand.add(cards.remove(0));
		
		return new CardHand(hand);
	}
	
}
