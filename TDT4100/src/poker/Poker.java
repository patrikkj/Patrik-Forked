package poker;

public class Poker {
public static void main(String[] args) {
	CardDeck deck = new CardDeck();
	System.out.println(deck);
	
//	deck.shuffle();
	System.out.println(deck);
	
	CardHand hand1 = deck.deal(5);
	CardHand hand2 = deck.deal(5);
	CardHand hand3 = deck.deal(5);
	
	System.out.println(hand1);
	System.out.println(hand2);
	System.out.println(hand3);
	
	System.out.println(CardHand.findStraight(hand1));
}
}
