package stateandbehavior;

public class UpOrDownCounter {

	int start, end, counter;
	
	
	public UpOrDownCounter(int start, int end) throws IllegalArgumentException {
		if (start == end) {
			throw new IllegalArgumentException("Start and end value cannot be the same!");
		}
		this.start = start;
		this.end = end;	
		this.counter = start;
	}

	public int getCounter() {
		return counter;
	}

	public boolean count() {
		if ((end > start)	 &&  (counter < end)) {
			counter++;
			return (counter == end) ? false : true;
		} 
		else if ((end < start)  &&  (counter > end)) {
			counter--;
			return (counter == end) ? false : true;
		}
		return false;
	}
	
	public String toString() {
		return String.format("[%s: start = %s, end = %s, counter = %s]",
				this.getClass().getSimpleName(), start, end, getCounter());
	}
	
	public static void main(String[] args) {
		UpOrDownCounter myCounter = new UpOrDownCounter(10, 12);
		System.out.println(myCounter.toString());
	}
}
