package encapsulation;

public class Rectangle {
	//Declarations
	private int minX, maxX, minY, maxY;
	private boolean isEmpty;
	
	
	//Constructor
	public Rectangle() {
		this.isEmpty = true;
	}
	
	
	//Getters
	public int getMinX() { return minX; }
	
	public int getMaxX() { return maxX; }
	
	public int getMinY() { return minY; }
	
	public int getMaxY() { return maxY; }
	
	public int getWidth() { return (isEmpty) ? 0 : (maxX - minX + 1); }
	
	public int getHeight() { return (isEmpty) ? 0 : (maxY - minY + 1); }
	
	public boolean isEmpty() { return isEmpty; }
	
	public boolean contains(int x, int y) {
		if (isEmpty) return false;
		if ((minX > x)  ||  (maxX < x)  ||  (minY > y)  ||  (maxY < y)) return false;
		
		return true;
	}
	
	public boolean contains(Rectangle rect) {
		if (this.isEmpty  ||  rect.isEmpty) return false;
		if (!this.contains(rect.minX, rect.minY)  ||  !this.contains(rect.maxX, maxY)) return false;
		
		return true;
	}
	
	
	//Setters
	public void setMinX(int x) throws IllegalArgumentException { 
		if (isEmpty || (maxX < x)) 
			throw new IllegalArgumentException("Unable to set minX value.");
		this.minX = x; 
	}	
	
	
	public void setMaxX(int x) throws IllegalArgumentException { 
		if (isEmpty || (minX > x)) 
			throw new IllegalArgumentException("Unable to set maxX value.");
		this.maxX = x; 
	}
	
	public void setMinY(int y) throws IllegalArgumentException { 
		if (isEmpty || (maxY < y)) 
			throw new IllegalArgumentException("Unable to set minY value.");
		this.minY = y; 
	}
	
	
	public void setMaxY(int y) throws IllegalArgumentException { 
		if (isEmpty || (minY > y)) 
			throw new IllegalArgumentException("Unable to set maxY value.");
		this.maxY = y; 
	}
	
	
	//Actions
	public boolean add(int x, int y) {
		if (contains(x, y)) return false;
		
		minX = (isEmpty) ? x : Math.min(minX, x);
		maxX = (isEmpty) ? x : Math.max(maxX, x);
		minY = (isEmpty) ? y : Math.min(minY, y);
		maxY = (isEmpty) ? y : Math.max(maxY, y);
		
		isEmpty = false;
		return true;
	}
	
	public boolean add(Rectangle rect) {
		if (contains(rect) || rect.isEmpty) return false;
		
		add(rect.minX, rect.minY);
		add(rect.maxX, rect.maxY);
		return true;
	}
	
	public Rectangle union(Rectangle rect) {
		Rectangle unionRect = new Rectangle();
		
		unionRect.add(this);
		unionRect.add(rect);
		
		return unionRect;
	}
	
	
	//Others
	@Override
	public String toString() {
		return String.format("[%s:  minX = %s, maxX = %s, minY = %s, maxY = %s, isEmpty = %s]", 
				this.getClass().getName(), minX, maxX, minY, maxY, isEmpty);
	}
	
	public static void main(String[] args) {
		Rectangle rect1 = new Rectangle();
		rect1.add(1, 2);
		System.out.println(rect1);
	}
}
