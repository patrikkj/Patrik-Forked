package inheritance;

public class CardHand extends CardContainerImpl {
	public CardHand(int maxSize) {
		super(maxSize);
	}
	
	public Card play(int n) {
		if (n < 0  ||  n >= cards.size())
			throw new IllegalArgumentException("Invalid card index.");
				
		return cards.remove(n);
	}
}