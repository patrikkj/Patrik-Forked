package encapsulation;

public class Nim {
	// Instance vars
	private int[] pileArr = new int[3];
	
	// Constructors
	public Nim() {
		this.pileArr[0] = 10;
		this.pileArr[1] = 10;
		this.pileArr[2] = 10;
	}

	public Nim(int pileSize) {
		this.pileArr[0] = pileSize;
		this.pileArr[1] = pileSize;
		this.pileArr[2] = pileSize;
	}
	
	
	//Getters
	public int getPile(int targetPile) { return pileArr[targetPile]; }
	
	
	//Validation
	public boolean isValidMove(int number, int targetPile) {
		if (isGameOver()) return false;
		if (number < 1  ||  number > pileArr[targetPile]) return false;
		
		return true; 
	}
	
	public boolean isGameOver() {
		for (int pileCount : pileArr)
			if (pileCount <= 0) return true;
		
		return false;
	}
	
	
	//Actions
	public void removePieces(int number, int targetPile) {
		if (isGameOver())
			throw new IllegalStateException("Game is over.");
		if (!isValidMove(number, targetPile))
			throw new IllegalArgumentException("Invalid move.");
		
		pileArr[targetPile] -= number;
	}
	
	
	//Other
	@Override
	public String toString() {
		return String.format("%s : [%s, %s, %s]", 
				getClass().getName(), pileArr[0], pileArr[1], pileArr[2]);
	}
	
	public static void main(String[] args) {
		Nim game1 = new Nim();
		Nim game2 = new Nim(12);
		
		System.out.println(game1 + "\n" + game2);
	}
}
