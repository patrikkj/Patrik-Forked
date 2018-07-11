package farkle;

public class Player {
	private final String name;
	private final int ID;
	private static int playerID;
	
	public Player(String name) {
		this.name = name;
		this.ID = playerID++;
	}
	
	public String getName() {
		return name;
	}
	
	public int getID() {
		return ID;
	}
	
	@Override
	public String toString() {
		return name;
	}
}
