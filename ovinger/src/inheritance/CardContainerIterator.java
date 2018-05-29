package inheritance;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class CardContainerIterator implements Iterator<Card>{
	//Instance vars
	private CardContainer container;	// Container to be iterated through
	private int cardCount;				// Size of container to be iterated through
	private int currentCount;			// Current card count

	
	//Constructor
	public CardContainerIterator(CardContainer container) {
		this.container = container;
		cardCount = container.getCardCount();
		currentCount = 0;
	}

	
	@Override
	public boolean hasNext() {
		return (currentCount < cardCount);
	}

	@Override
	public Card next() throws NoSuchElementException {
		// Break if iterator is exhausted
		if (!hasNext()) 
			throw new NoSuchElementException("Iterator is exhausted.");
		
		// Return card and increment card count
		return (container.getCard(currentCount++));
	}
	
	@Override
	public void remove() throws UnsupportedOperationException {
		throw new UnsupportedOperationException("Remove operation not supported.");
	}
}
