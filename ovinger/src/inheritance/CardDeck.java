package inheritance;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class CardDeck extends CardContainerImpl {
	//Declarations
	private static final char[] validSuits = { 'S', 'H', 'D', 'C' };
	
	
	//Constructor
	public CardDeck(int n) {
		super(52);
		
		if (n < 1  ||  n > 13) 
			throw new IllegalArgumentException("Invalid card count.");
		
		for (int i = 0; i != 4*n; i++) 
			addCard(new Card(validSuits[Math.floorDiv(i, n)], i % n + 1));
	}
	
	
	//Actions
	public void shufflePerfectly() {
		int splitIndex = getCardCount() / 2;
		
		//Possible to use arrList.clone() ?
		List<Card> temp = new ArrayList<Card>();
		List<Card> cardList1 = cards.subList(0, splitIndex);
		List<Card> cardList2 = cards.subList(splitIndex, getCardCount());

		for (int i = 0; i < splitIndex; i++) {
			temp.add(cardList1.get(i));
			temp.add(cardList2.get(i));
		}
		
		cards.clear();
		temp.forEach(card -> addCard(card));
	}
	
	public void deal(CardHand hand, int n) {
		if (n < 0  ||  n > getCardCount())
			throw new IllegalArgumentException("Cannot deal that many cards, mans not hot!");
		
		//Iterate through top of deck, moving cards to hand
		for (int i = 0; i < n; i++) 
			hand.addCard(cards.remove(getCardCount() - 1));
	}
	
	
	//Predicates
	public boolean hasCard(Predicate<Card> predicate) {
		return cards.stream().anyMatch(predicate);
	}
	
	public int getCardCount(Predicate<Card> predicate) {
		return cards.stream().filter(predicate).toArray().length;
	}
	
	public List<Card> getCards(Predicate<Card> predicate){
		return cards.stream().filter(predicate).collect(Collectors.toList());
	}
	
}


