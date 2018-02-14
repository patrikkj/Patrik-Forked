package stateandbehavior;

public class Location {
	
	int x, y;
	
	public void up() {
		y--;
	}
	
	public void down() {
		y++;
	}
	
	public void left() {
		x--;
	}
	
	public void right() {
		x++;
	}

	public int getX() {
		return x;
	}
	
	public int getY() {
		return y;
	}
	
	public String toString() {
		return String.format("%s: (%s, %s)", 
							 this.getClass().getSimpleName(), x, y);
	}
	
	public static void main(String[] args) {
		
		Location myLoc = new Location();
		
		myLoc.up();
		System.out.println(myLoc.toString());
		myLoc.down();
		System.out.println(myLoc.toString());
		myLoc.left();
		System.out.println(myLoc.toString());
		myLoc.right();
		System.out.println(myLoc.toString());

	}
}
