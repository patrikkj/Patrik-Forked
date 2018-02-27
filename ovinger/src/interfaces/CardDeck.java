package interfaces;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class CardDeck implements CardContainer {
	//Declarations
	private ArrayList<Card> cardArrList = new ArrayList<Card>();
	private static final char[] validSuits = { 'S', 'H', 'D', 'C' };
	
	
	//Constructor
	public CardDeck(int n) throws IllegalArgumentException {
		if (n > 13  ||  n < 1) 
			throw new IllegalArgumentException("Invalid card count.");
		
		for (int i = 0; i != 4*n; i++) 
			cardArrList.add(new Card(validSuits[Math.floorDiv(i, n)], i % n + 1));
	}
	
	
	//Getters
	public int getCardCount() { return cardArrList.size(); }
	
	public Card getCard(int n) { 
		if (n >= cardArrList.size()) 
			throw new IllegalArgumentException("Card does not exist.");
		
		return cardArrList.get(n);
	}
	
	
	//Actions
	public void shufflePerfectly() {
		int splitIndex = cardArrList.size() / 2;
		
		//Possible to use arrList.clone() ?
		ArrayList<Card> tempArrList = new ArrayList<Card>();
		List<Card> cardList1 = cardArrList.subList(0, splitIndex);
		List<Card> cardList2 = cardArrList.subList(splitIndex, cardArrList.size());

		for (int i = 0; i < splitIndex; i++) {
			tempArrList.add(cardList1.get(i));
			tempArrList.add(cardList2.get(i));
		}

		cardArrList = tempArrList;
	}
	
	public void deal(CardHand hand, int n) {
		if (n < 0  ||  n > getCardCount())
			throw new IllegalArgumentException("Cannot deal that many cards, mans not hot!");
		
		//Iterate through top of deck, moving cards to hand
		for (int i = 0; i < n; i++) 
			hand.addCard(cardArrList.remove(cardArrList.size() - 1));
	}
	
	
	//Predicates
	public boolean hasCard(Predicate<Card> predicate) {
		return cardArrList.stream().anyMatch(predicate);
	}
	
	public int getCardCount(Predicate<Card> predicate) {
		return cardArrList.stream().filter(predicate).toArray().length;
	}
	
	public List<Card> getCards(Predicate<Card> predicate){
		return cardArrList.stream().filter(predicate).collect(Collectors.toList());
	}
	
	
	//Other
	@Override
	public String toString() {
		String outputStr = "";
		
		for (int i = 0; i < cardArrList.size(); i++) {
			outputStr += cardArrList.get(i).toString() + "\t";

			if ((i + 1) % (cardArrList.size() / 4) == 0)
				outputStr += "\n";
		}
		
		return outputStr;
	}
	
	public void printDeck() {
		for (int i = 0; i < cardArrList.size(); i++) 
			System.out.println(cardArrList.get(i));
	}
	
	public static void main(String[] args) {
		CardDeck deck1 = new CardDeck(10);
		deck1.printDeck();
		
	}


	@Override
	public Iterator<Card> iterator() {
		return new CardContainerIterator(this);
	}
}


