package inheritance;

public interface CardContainer extends Iterable<Card> {
	
	/**
	 * Returns number of cards in container.
	 */
	public int getCardCount();
	
	/**
	 * Returns card at given index in container.
	 * @param n - card index in collection
	 */
	public Card getCard(int n);
}
