package eksamen2017;

import java.util.Collection;
import java.util.HashMap;
import java.util.stream.Collectors;

/**
 * 
 * A place where groups of guests can buy a meal
 * 
 */

public class Diner {
	private HashMap<Table, Seating> tables = new HashMap<>();
	
	
	/**
	 * 
	 * Tells whether a Table is occupied.
	 * 
	 * @param table
	 *            the Table to check
	 * 
	 * @return true if anyone is sitting at the provided Table
	 * 
	 */

	public boolean isOccupied(Table table) {
		return tables.get(table) != null;
	}

	/**
	 * 
	 * Computes the guest capacity,
	 * 
	 * either the remaining (includeOccupied == false) or total (includeOccupied ==
	 * true).
	 * 
	 * @param includeOccupied
	 *            controls whether to include tables that are occupied.
	 * 
	 * @return the guest capacity
	 * 
	 */

	public int getCapacity(boolean includeOccupied) {
		if (includeOccupied)
			return tables.keySet().stream()
					.mapToInt(Table::getCapacity)
					.sum();
			
		return tables.keySet().stream()
				.filter(e -> !isOccupied(e))
				.mapToInt(Table::getCapacity)
				.sum();

	}

	/**
	 * 
	 * Adds a table to this Diner
	 * 
	 * @param table
	 * 
	 */

	public void addTable(Table table) {
		tables.put(table, null);
	}

	/**
	 * 
	 * Removes a Table from this Diner.
	 * 
	 * If the table is occupied an IllegalArgumentException exception should be
	 * thrown.
	 * 
	 * @param table
	 * 
	 * @throws IllegalArgumentException
	 * 
	 */

	public void removeTable(Table table) {
		if (isOccupied(table))
			throw new IllegalStateException("Table cannot be removed when occupied.");
		
		tables.remove(table);
	}

	/**
	 * 
	 * Merges two tables, i.e. replaces two tables with one table.
	 * 
	 * lostCapacity is the difference between the old capacity and the new.
	 * 
	 * This number is typically positive, since seats are lost when moving two
	 * tables
	 * 
	 * close to each other.
	 * 
	 * @param table1
	 * 
	 * @param table2
	 * 
	 * @param lostCapacity
	 * 
	 * @throws IllegalArgumentException
	 *             if any of the tables are occupied
	 * 
	 */

	public void mergeTables(Table table1, Table table2, int lostCapacity) {
		if (isOccupied(table1)  ||  isOccupied(table2))
			throw new IllegalArgumentException("Occupied tables cannot be merged.");
		
		removeTable(table1);
		removeTable(table2);
		
		addTable(new CompositeTable(table1, table2, lostCapacity));
	}

	/**
	 * 
	 * Splits a table into two, i.e. replaces one tables with two tables.
	 * 
	 * The two capacities are the capacities of the two new tables.
	 * 
	 * @param table
	 * 
	 * @param capacity1
	 * 
	 * @param capacity2
	 * 
	 * @throws IllegalArgumentException
	 *             if the table is occupied
	 * 
	 */

	public void splitTable(CompositeTable table) {
		if (isOccupied(table))
			throw new IllegalArgumentException("Cannot split occupied table.");
		
		removeTable(table);
		
		addTable(table.getTable1());
		addTable(table.getTable2());
	}

	/**
	 * 
	 * Tells whether a table has the provided capacity,
	 * 
	 * i.e. if that number of new guests can be seated there.
	 * 
	 * Note that a table cannot be shared among different groups.
	 * 
	 * @param table
	 * 
	 * @param capacity
	 * 
	 * @return true of capacity number of guests can be seated here, false
	 *         otherwise.
	 * 
	 */

	public boolean hasCapacity(Table table, int capacity) {
		return (table.getCapacity() >= capacity)  &&  !isOccupied(table);
	}

	/**
	 * 
	 * Returns the tables that has the provided capacity.
	 * 
	 * The tables should be sorted with the one with the least capacity (but enough)
	 * first.
	 * 
	 * @param capacity
	 * 
	 * @return the tables that has the provided capacity
	 * 
	 */

	public Collection<Table> findAvailableTables(int capacity) {
		return tables.keySet().stream()
				.filter(e -> hasCapacity(e, capacity))
				.sorted()
				.collect(Collectors.toList());

	}

	/**
	 * 
	 * Finds a suitable, existing table for the provided group, and creates
	 * 
	 * (but doesn't add) a corresponding Seating.
	 * 
	 * The chosen table should be the one with the least capacity.
	 * 
	 * @param group
	 *            the group to be seated
	 * 
	 * @return the newly created Seating
	 * 
	 */

	public Seating createSeating(Group group) {
		Table table = tables.keySet().stream()
				.filter(e -> hasCapacity(e, group.getGuestCount()))
				.sorted()
				.findFirst()
				.orElse(null);
		
		if (table == null)
			throw new IllegalStateException("No tables available.");
		
		return new Seating(group, table);
	}

	/**
	 * 
	 * Creates and adds a Seating for the provided group, using the createSeating
	 * method.
	 * 
	 * @param group
	 * 
	 * @return true if a Seating was created and added, false otherwise.
	 * 
	 */

	public boolean addSeating(Group group) {
		Seating seating; 
		try {
			seating = createSeating(group);
		}
		catch (IllegalStateException e) {
			return false;
		}
		
		Table table = seating.getTable();
		tables.put(table, seating);

		return true;

	}

	/**
	 * 
	 * Removes the seating for the provided table (number), if one exists
	 * 
	 * @param tableNum
	 *            the number of the table to be removed
	 * 
	 */

	public void removeSeating(int tableNum) {
		Table table = tables.keySet().stream()
				.filter(e -> e.getNum() == tableNum)
				.findFirst()
				.get();
		
		tables.put(table, null);
	}

}