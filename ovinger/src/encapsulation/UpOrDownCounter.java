package encapsulation;

public class UpOrDownCounter {
	//Declarations
	private int start, end, counter;
	
	
	//Constructor
	public UpOrDownCounter(int start, int end) {
		if (start == end) 
			throw new IllegalArgumentException("Start and end cannot be the same.)");
		
		this.start = start;
		this.end = end;
		this.counter = start;
	}
	
	
	//Getters
	public int getCounter() {return counter;}
	
	
	//Actions
	public boolean count() {
		if ((start < end) && (counter < end))
			return (++counter == end) ? false : true;
		if ((start > end) && (counter > end))
			return (--counter == end) ? false : true;
		
		return false;
	}
	
}
