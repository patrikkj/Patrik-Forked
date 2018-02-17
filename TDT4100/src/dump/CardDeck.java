package dump;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

public class CardDeck {
   static Collection<Card> cards = Arrays.asList(new Card('S', 1), new Card('S', 2), 
												 new Card('H', 1), new Card('H', 2), 
												 new Card('D', 12), new Card('D', 13),
												 new Card('C', 12), new Card('C', 13));
   
   

   public static void main(String[] args) {
	   cards.stream().filter(card -> card.getSuit() == 'S').forEach(c -> System.out.print(c + " "));
	   System.out.println();
	   
	   List<Card> newList = cards.stream()
			   .filter(card -> card.getSuit() == 'H')
			   .collect(Collectors.toList());
	   System.out.println(newList);
	   
	   List<String> colorList = cards.stream()
			   .map(card -> (card.getSuit() == 'S' || card.getSuit() == 'C') ? "Black" : "Red")
			   .collect(Collectors.toList());
	   System.out.println(colorList);
	   
	   int cardSum = cards.stream()
			   .map(Card::getFace)
			   .reduce((a, b) -> (a + b))
			   .get();
	   System.out.println(cardSum);
	   
	   boolean queenOfSpades = cards.stream()
			   .anyMatch(card -> card.getSuit() == 'S'  && card.getFace() == 12);
	   System.out.println(queenOfSpades);
	   
//	   boolean hasPokerFlush = cards.stream()
//			   .map(Card::getSuit)
//			   .map(card -> cards.)
//			   .sorted();
   }
}
