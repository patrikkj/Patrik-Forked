package interfaces;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CardHand implements CardContainer {
	//Instance variables
	private List<Card> cardHandList;

	
	//Constructor
	public CardHand() {
		cardHandList = new ArrayList<Card>();
	}
	
	
	//Validation
	private boolean isValidIndex(int n) {
		if (n < 0  ||  n > cardHandList.size()) return false;
		
		return true;
	}
	
	
	//Getters
	public int getCardCount() {
		return cardHandList.size();
	}
	
	public Card getCard(int n) throws IllegalArgumentException {
		//Validate input
		if (!isValidIndex(n))
			throw new IllegalArgumentException("Invalid card index.");
		
		//Return card
		return cardHandList.get(n);
	}
	
	
	//Actions
	public void addCard(Card card) {
		cardHandList.add(card);
	}
	
	public Card play(int n) throws IllegalArgumentException {
		//Validate input
		if (!isValidIndex(n))
			throw new IllegalArgumentException("Invalid card index.");
		
		//Play card
		return cardHandList.remove(n);
	}


	@Override
	public Iterator<Card> iterator() {
		return new CardContainerIterator(this);
	}
}