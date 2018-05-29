package eksamen2017;

/**
 * 
 * Represents the fact that a Group is seated at and occupies a Table
 * 
 */

public class Seating implements GroupListener {
	private final Group group;
	private final Table table;

	/**
	 * Initializes this Seating ...
	 */

	public Seating(Group group, Table table) {
		if (group.getGuestCount() > table.getCapacity())
			throw new IllegalArgumentException("Capacity exceeded.");
			
		this.group = group;
		this.table = table;
		
		// Subscribe to group changes
		group.addGroupListener(this);
	}

	public Group getGroup() {
		return group;
	}

	public Table getTable() {
		return table;
	}

	@Override
	public void groupChanged(Group group, int oldGuestCount, int newGuestCount) {
		if (newGuestCount > table.getCapacity())
			throw new IllegalStateException("New guest count exceeds table capacity.");
	}
}