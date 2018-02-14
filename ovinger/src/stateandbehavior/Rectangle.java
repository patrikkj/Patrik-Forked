package stateandbehavior;

public class Rectangle {
	int minX, maxX, minY, maxY;
	boolean isEmpty;
	
	
	public Rectangle() {
		this.isEmpty = true;		
	}
	
	public int getMinX() {
		return minX;
	}
	
	public int getMaxX() {
		return maxX;
	}
	
	public int getMinY() {
		return minY;
	}
	
	public int getMaxY() {
		return maxY;
	}
	
	public int getWidth() {
		return (isEmpty) ? 0 : (maxX - minX + 1);
	}
	
	public int getHeight() {
		return (isEmpty) ? 0 : (maxY - minY + 1);
	}
	
	public boolean isEmpty() {
		return isEmpty;
	}
	
	public boolean contains(int x, int y) {
		if (((this.minX <= x)	&&	 (x <= this.maxX)) && 
			((this.minY <= y)	&&	 (y <= this.maxY))
			&& !this.isEmpty()) {
			return true;
		}
		return false;
	}
	
	public boolean contains(Rectangle rect) {
		if (contains(rect.getMinX(), rect.getMinY()) &&
				contains(rect.getMinX(), rect.getMaxY()) &&
				contains(rect.getMaxX(), rect.getMinY()) &&
				contains(rect.getMaxX(), rect.getMaxY())) {
			return true;
		}
		return false;
	}
	
	public boolean add(int x, int y) {
		if (contains(x, y))
			return false;
		
		if (isEmpty()) {
			this.minX = x;
			this.maxX = x;
			this.minY = y;
			this.maxY = y;
			this.isEmpty = false;
			return true;
		}
		
		this.minX = Math.min(minX, x);
		this.maxX = Math.max(maxX, x);
		this.minY = Math.min(minY, y);
		this.maxY = Math.max(maxY, y);
		return true;
	}

	public boolean add(Rectangle rect) {
		if (contains(rect)) 
			return false;
		
		if (isEmpty()) {
			this.minX = rect.getMinX();
			this.maxX = rect.getMaxX();
			this.minY = rect.getMinY();
			this.maxY = rect.getMaxY();
			this.isEmpty = false;
			return true;
		}
		
		this.add(rect.getMinX(), rect.getMinY());
		this.add(rect.getMaxX(), rect.getMaxY());
		return true;
	}
	
	public Rectangle union(Rectangle rect) {
		Rectangle newRect = new Rectangle();
		newRect.add(this);
		newRect.add(rect);
		return newRect;
	}
	
	public String toString() {
		return String.format("[%s: minX = %s, maxX = %s, minY = %s, maxY = %s, isEmpty = %s]",
				this.getClass().getSimpleName(),
				getMinX(),
				getMaxX(),
				getMinY(),
				getMaxY(),
				isEmpty());
	}
	
	public static void main(String[] args) {
		Rectangle rect1 = new Rectangle();
		
		System.out.println(rect1.toString());
		rect1.add(-1, -2);
		
		System.out.println(rect1.toString());
		rect1.add(3, 4);
		
		System.out.println(rect1.toString());
	}
}
