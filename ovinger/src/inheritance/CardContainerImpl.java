package inheritance;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CardContainerImpl implements CardContainer {
	// Fields
	protected final List<Card> cards = new ArrayList<>();
	private final int maxCardCount;
	
	
	// Constructor
	protected CardContainerImpl(int maxCardCount) {
		this.maxCardCount = maxCardCount;
	}
	
	
	/**
	 * Adds card to card container if size does not exceed max size
	 */
	public void addCard(Card card) {
		if (getCardCount() >= maxCardCount)
			throw new IllegalStateException("Container cannot exceed max size.");
		
		cards.add(card);
	}
	
	/**
	 * Returns number of cards in container.
	 */
	public int getCardCount() {
		return cards.size();
	}
	
	/**
	 * Returns card at given index in container.
	 * @param n - card index in collection
	 */
	public Card getCard(int n) {
		if (n < 0  ||  n >= cards.size())
			throw new IllegalArgumentException("Invalid card index.");
		
		return cards.get(n);
	}

	/**
	 * Returns the maximum number of cards this container can contain.
	 */
	public int getMaxCardCount() {
		return maxCardCount;
	}
	
	
	@Override
	public Iterator<Card> iterator() {
		return new CardContainerIterator(this);
	}
}
