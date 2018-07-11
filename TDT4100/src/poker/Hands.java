package poker;

public enum Hands {
	ROYAL_FLUSH		(10, "Royal flush"),
	STRAIGHT_FLUSH	(9, "Straight flush"),
	FOUR_OF_A_KIND	(8, "Four of a kind"),
	FULL_HOUSE		(7, "Full house"),
	FLUSH			(6, "Flush"),
	STRAIGHT		(5, "Straight"),
	THREE_OF_A_KIND	(4, "Three of a kind"),
	TWO_PAIR		(3, "Two pair"),
	PAIR			(2, "Pair"),
	HIGH_CARD		(1, "High card");
	
	public final int VALUE;
	public final String NAME;
	
	private Hands(int VALUE, String NAME) {
		this.VALUE = VALUE;
		this.NAME = NAME;
	}
	
}
