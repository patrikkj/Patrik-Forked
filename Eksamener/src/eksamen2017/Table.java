package eksamen2017;

/**
 * 
 * A table with a certain maximum capacity.
 * 
 */

public abstract class Table implements Comparable<Table> {
	private final int capacity;
	private final int num;
	private static int tableID;

	/**
	 * 
	 * Initializes this Table with the provided capacity.
	 * 
	 * The table is also assigned a unique number.
	 * 
	 * @param capacity
	 * 
	 */

	public Table(int capacity) {
		num = ++tableID;
		this.capacity = capacity;
	}
	
	
	public int getCapacity() {
		return capacity;
	}

	/**
	 * @return the table number
	 */
	public int getNum() {
		return num;
	}

	@Override
	public int compareTo(Table table) {
		return Integer.compare(capacity, table.getCapacity());
	}

}