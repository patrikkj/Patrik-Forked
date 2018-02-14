package encapsulation;

public class Location {
	private int x, y;
	
	public void up() {y--;}
	public void down() {y++;}
	public void right() {x++;}
	public void left() {x--;}
	
	public int getX() {return x;}
	public int getY() {return y;}
	
	public void setX(int x) {
		this.x = x;
	}
	public void setY(int y) {
		this.y = y;
	}
}

