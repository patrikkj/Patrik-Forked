package interfaces;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class CardComparator implements Comparator<Card>{
	//Instance variables
	private boolean acePriority;
	private char triumph;
	private List<Character> hirearchy = new ArrayList<>(); 
	
	
	//Constructors
	public CardComparator(boolean acePriority, char triumph) {
		this.acePriority = acePriority;
		this.triumph = triumph;
		
		//Set default hirearchy
		hirearchy.addAll(Arrays.asList(new Character[] {'C', 'D', 'H', 'S'}));
	}

	public CardComparator(boolean acePriority, char triumph, char[] hirearchy) {
		this.acePriority = acePriority;
		this.triumph = triumph;
		
		//Set hirearchy
		for (char c : hirearchy) 
			this.hirearchy.add(c);
	}
	
	
	@Override
	public int compare(Card card1, Card card2) {
		int valCard1 = evalCard(card1);
		int valCard2 = evalCard(card2);
		
		//Return 0 if cards are of equal value
		if (valCard1 == valCard2) return 0;
		
		//Return 1 if 'card1' has a higher value, else -1
		return (valCard1 > valCard2) ? 1 : -1;		
	}
	
	private int evalCard(Card card) {
		int cardValue = card.getFace();
		char cardType = card.getSuit();
		
		//If card is ace, adjust value accordingly
		if (cardValue == 1)
			cardValue = (acePriority) ? 14 : 1;
		
		// If card is triumph, return value
		if (cardType == triumph)
			return 4*13 + cardValue;
		
		// In case of normal card, check hirearchy
		return hirearchy.indexOf(cardType)*13 + cardValue;
	}
}
