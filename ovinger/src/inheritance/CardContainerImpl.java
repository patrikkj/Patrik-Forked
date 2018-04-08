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
		return cards.get(n);
	}

	
	@Override
	public Iterator<Card> iterator() {
		return new CardContainerIterator(this);
	}
}
