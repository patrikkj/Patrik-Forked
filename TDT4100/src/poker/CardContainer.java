package poker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

public abstract class CardContainer implements Iterable<Card>{
	protected List<Card> cards = new ArrayList<>();
	
	
	protected CardContainer() {}
	
	protected CardContainer(Collection<Card> cards) {
		this.cards.addAll(cards);
	}
	
	
	public int getCardCount() {
		return cards.size();
	}
	
	protected List<Card> getCards() {
		return cards;
	}
	
	public Card getCard(int n) {
		return cards.get(n);
	}
	
	@Override 
	public String toString() {
		return cards.stream()
				.map(Card::toString)
				.collect(Collectors.joining(", ", this.getClass().getSimpleName() + " [", "]"));
	}
	
	public Iterator<Card> iterator() {
		return cards.iterator();
	}
}
