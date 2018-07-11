package poker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class CardHand extends CardContainer {
	
	public CardHand(Collection<Card> cards) {
		super(cards);
	}
	
	
	
	// Hand evaluation
//	public static boolean checkRoyalFlush(CardHand hand) {
//		
//	}
	
	/**
	 * Finds the longest increasing subsequence.
	 * @param hand
	 * @return
	 */
	public static int findStraight(CardHand hand) {
		List<Integer> faces = hand.cards.stream()
				.mapToInt(Card::getFace)
				.boxed()
				.collect(Collectors.toList());
		Collections.sort(faces);
		
		Integer start = faces.get(0);
		Integer best = faces.get(0);
		Integer last = faces.get(0) - 1;
		
		int currentChain = 0;
		int longestChain = 0;
		
		for (Integer face : faces) {
			if (last == face - 1) {
				currentChain++;
				last = face;
			} else {
				if (currentChain > longestChain) {
					longestChain = currentChain;
					best = start;
				}
				start = face;
				currentChain = 1;
			}
		}
		
		return (longestChain == 5  ||  currentChain == 5) ? best : -1;
	}
	
	public static int findSameFace(CardHand hand) {
		
	}
}







