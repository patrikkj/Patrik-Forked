package testing;

import junit.framework.TestCase;

public class CardTest extends TestCase {
	private Card card;
	private CardDeck cardDeck;
	
	/*
	 * Card
	 */
	public void testCard() {
		test_card_validConstructor('S', 1);
		test_card_validConstructor('H', 1);
		test_card_validConstructor('D', 1);
		test_card_validConstructor('C', 1);

		test_card_validConstructor('S', 7);
		test_card_validConstructor('H', 7);
		test_card_validConstructor('D', 7);
		test_card_validConstructor('C', 7);
		
		test_card_validConstructor('S', 13);
		test_card_validConstructor('H', 13);
		test_card_validConstructor('D', 13);
		test_card_validConstructor('C', 13);
	}

	public void testCardInvalidSuit() {
		try {
			card = new Card('A', 1);
			fail("IllegalArgumentException should be thrown after new Card('A', 1).");
		}
		catch (Exception e) {
			assertTrue("Exception should be of type IllegalArgumentException.", e instanceof IllegalArgumentException);
		}

		try {
			card = new Card('\0', 1);
			fail("IllegalArgumentException should be thrown after new Card('\\0', 1).");
		}
		catch (Exception e) {
			assertTrue("Exception should be of type IllegalArgumentException.", e instanceof IllegalArgumentException);
		}
	}
	
	public void testCardInvalidFace() {
		try {
			card = new Card('S', 0);
			fail("IllegalArgumentException should be thrown after new Card('S', 0).");
		}
		catch (Exception e) {
			assertTrue("Exception should be of type IllegalArgumentException.", e instanceof IllegalArgumentException);
		}

		try {
			card = new Card('S', 14);
			fail("IllegalArgumentException should be thrown after new Card('S', 14).");
		}
		catch (Exception e) {
			assertTrue("Exception should be of type IllegalArgumentException.", e instanceof IllegalArgumentException);
		}
	}
	
	public void testCardToString() {
		test_card_toString('S', 1);
		test_card_toString('H', 1);
		test_card_toString('D', 1);
		test_card_toString('C', 1);

		test_card_toString('S', 13);
		test_card_toString('H', 13);
		test_card_toString('D', 13);
		test_card_toString('C', 13);
	}
	
	private void test_card_validConstructor(char suit, int face) {
		card = new Card(suit, face);
		String call = String.format("new Card('%s', %s)", suit, face);
		
		String suitMessage = String.format("getSuit() == '%s' failed after %s.", suit, call);
		assertEquals(suitMessage, suit, card.getSuit());
		
		String faceMessage = String.format("getFace() == %s failed after %s.", face, call);
		assertEquals(faceMessage, face, card.getFace());
	}
	
	private void test_card_toString(char suit, int face) {
		card = new Card(suit, face);
		String expected = String.format("%s%s", suit, face);
		String message = String.format("toString == %s failed after new Card('%s', %s).", expected, suit, face);
		assertEquals(message, expected, card.toString());
	}
	
	
	/*
	 * CardDeck
	 */
	public void testCardDeck() {  
		cardDeck = new CardDeck(1);
		assertTrue("\"S1\", \"H1\", \"D1\", \"C1\" failed after new CardDeck(1).", 
				assertEquals_cardDeck(new String[] {"S1", "H1", "D1", "C1"}));

		cardDeck = new CardDeck(2);
		assertTrue("\"S1\", \"S2\", \"H1\", \"H2\", \"D1\", \"D2\", \"C1\", \"C2\" failed after new CardDeck(2).", 
				assertEquals_cardDeck(new String[] {"S1", "S2", "H1", "H2", "D1", "D2", "C1", "C2"}));
		
		cardDeck = new CardDeck(3);
		assertTrue("\"S1\", \"S2\", \"S3\", \"H1\", \"H2\", \"H3\", \"D1\", \"D2\", \"D3\", \"C1\", \"C2\", \"C3\" failed after new CardDeck(3).", 
				assertEquals_cardDeck(new String[] {"S1", "S2", "S3", "H1", "H2", "H3", "D1", "D2", "D3", "C1", "C2", "C3"}));
	}
	
	public void testGetCardCount() {
		cardDeck = new CardDeck(0);
		assertEquals(0, cardDeck.getCardCount());
		
		cardDeck = new CardDeck(1);
		assertEquals(4, cardDeck.getCardCount());
		
		cardDeck = new CardDeck(2);
		assertEquals(8, cardDeck.getCardCount());
		
		cardDeck = new CardDeck(13);
		assertEquals(52, cardDeck.getCardCount());
	}
	
	public void testGetCard() {
		cardDeck = new CardDeck(3);
		
		card = cardDeck.getCard(1);
		assertEquals("S2", card.getSuit() + Integer.toString(card.getFace()));
		
		card = cardDeck.getCard(4);
		assertEquals("H2", card.getSuit() + Integer.toString(card.getFace()));
		
		try {
			cardDeck.getCard(12);
			fail("getCard(12) should throw an IllegalArgumentException for 'new CardDeck(3)'.");
		}
		catch (Exception e) {
			assertTrue("Exception should be of type IllegalArgumentException", e instanceof IllegalArgumentException);
		}
	}
	
	public void testShufflePerfectly() {
		cardDeck = new CardDeck(2);
		assertTrue("[\"S1\", \"D1\", \"S2\", \"D2\", \"H1\", \"C1\", \"H2\", \"C2\"] failed after new CardDeck(2), shufflePerfectly().", 
				assertEquals_cardDeck(new String[] {"S1", "D1", "S2", "D2", "H1", "C1", "H2", "C2"}));
	}
	
	private boolean assertEquals_cardDeck(String[] expected) {
		if (cardDeck.getCardCount() != expected.length) 
			return false;

		for (int i = 0; i < expected.length; i++) {
			Card card = cardDeck.getCard(i);
			
			String expectedString = expected[i];
			String actualString = String.format("%s%s", card.getSuit(), card.getFace());
			
			if (!expectedString.equals(actualString)) return false;
		}
		
		return true;
	}
}
