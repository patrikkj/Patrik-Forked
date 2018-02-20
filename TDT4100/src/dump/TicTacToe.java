package dump;

public class TicTacToe {
	
	// ['x', '\0', '\0'],   ['o', '\0', '\0'],   ['x', '\0', '\0']

	private char[][] grid;
	private char currentTurn;
	private boolean finished;
	
	public TicTacToe() {
		grid = new char[3][3];
		currentTurn = 'x';
	}
	
	public void setValue(int row, int col) {
		grid[row][col] = currentTurn;
	}
	
	public char getValue(int row, int col) {
		return grid[row][col];
	}
	
	private boolean isValidMove(int row, int col) {
		//Check row index
		if (row < 0  ||  row > 2)
			return false;
		
		//Check col index
		if (col < 0  ||  col > 2)
			return false;
		
		//Check if cell is occupied
		if (getValue(row, col) != '\0')
			return false;
		
		return true;
	}
	
	private boolean isFinished() {
		char[] winX = new char[] {'x', 'x', 'x'};
		char[] winO = new char[] {'o', 'o', 'o'};
		
		//Check rows
		for (int i = 0; i < grid.length; i++) {
			if (grid[i] == winX  ||  grid[i] == winO)
				return true;
		}
		
		//Check columns
		if (getValue(0, 0) == 'x'  &&  getValue(1, 0) == 'x'  &&  getValue(2, 0) == 'x') return true;			
		if (getValue(0, 0) == 'o'  &&  getValue(1, 0) == 'o'  &&  getValue(2, 0) == 'o') return true;	
		
		if (getValue(1, 0) == 'x'  &&  getValue(1, 1) == 'x'  &&  getValue(2, 1) == 'x') return true;			
		if (getValue(1, 0) == 'o'  &&  getValue(1, 1) == 'o'  &&  getValue(2, 1) == 'o') return true;
		
		if (getValue(2, 0) == 'x'  &&  getValue(1, 2) == 'x'  &&  getValue(2, 2) == 'x') return true;			
		if (getValue(2, 0) == 'o'  &&  getValue(1, 2) == 'o'  &&  getValue(2, 2) == 'o') return true;
		
		
		//Check diagonals
		if (getValue(0, 0) == 'x'  &&  getValue(1, 1) == 'x'  &&  getValue(2, 2) == 'x') return true;			
		if (getValue(0, 0) == 'o'  &&  getValue(1, 1) == 'o'  &&  getValue(2, 2) == 'o') return true;	
		
		if (getValue(2, 0) == 'x'  &&  getValue(1, 1) == 'x'  &&  getValue(0, 2) == 'x') return true;			
		if (getValue(2, 0) == 'o'  &&  getValue(1, 1) == 'o'  &&  getValue(0, 2) == 'o') return true;
		
		return false;
	}
	
	public void move(int row, int col) {
		//If game is finished, break
		if (isFinished())
			return;
		
		//If move is invalid, break
		if (!isValidMove(row, col))
			return;
		
		//If move is valid, set cell value
		setValue(row, col);
		
		//Change player turn
		if (currentTurn == 'x')
			currentTurn = 'o';
		else
			currentTurn = 'x';
	}

	public String toString() {
		String boardString = "";
		
		boardString += "-------------\n";
		
		for (char[] row : grid) {
			boardString += "|";
			
			for (char value : row) {
				
				if (value == '\0')
					value = ' ';
				
				boardString += " " + value + " " + "|";	
			}
			
			boardString += "\n";
			
			boardString += "-------------\n";
		}

		return boardString;
	}
	
	public void getInput(String input) {
		//Input tar inn en streng på formen "RadKolonne", "01"
		char rowChar = input.charAt(0);
		char colChar = input.charAt(1);
		
		int row = Character.getNumericValue(rowChar);
		int col = Character.getNumericValue(colChar);
		
		move(row, col);
	}
	
	
	public static void main(String[] args) {
		TicTacToe game = new TicTacToe();
		
		
		System.out.println(game.toString());
	}
}
