package eksamen2017;

import java.util.HashSet;

/**
 * 
 * A group (of people) dining together, and should be seated at the same table.
 * 
 * We currently only need to handle the size.
 * 
 */

public class Group {
	private int guestCount; // Final if non-modifiable (ref. a)
	private HashSet<GroupListener> listeners = new HashSet<>();

	/**
	 * 
	 * Initializes this Group with the provided guest count
	 * 
	 */
	public Group(int guestCount) {
		this.guestCount = guestCount;
	}

	
	public int getGuestCount() {
		return guestCount;
	}
	
	public void setGuestCount(int guestCount) {
		int oldGuestCount = guestCount;
		
		this.guestCount = guestCount;
		
		// Alert listeners
		listeners.forEach(e -> e.groupChanged(this, oldGuestCount, guestCount));
	}
	
	public void addGroupListener(GroupListener listener) {
		listeners.add(listener);
	}
	public void removeGroupListener(GroupListener listener) {
		listeners.remove(listener);
	}
}