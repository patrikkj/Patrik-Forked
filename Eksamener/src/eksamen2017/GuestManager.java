package eksamen2017;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * 
 * Handles guests arriving at and departing from a Diner.
 * 
 */

public class GuestManager implements CapacityListener {
	private final Diner diner;
	private List<Group> queuedGroups = new ArrayList<>();
	
	
	public GuestManager(Diner diner) {
		this.diner = diner;
	}

	/**
	 * 
	 * Handles arriving groups, by either seating them immediately
	 * 
	 * (if possible) or putting them in queue. Those enqueued will
	 * 
	 * be seated when the Diner's (change in) capacity allows.
	 * 
	 * @param group
	 * 
	 */

	public void groupArrived(Group group) {
		if (!diner.addSeating(group))
			queuedGroups.add(group);
			
	}

	/**
	 * 
	 * Handles departing groups, by removing their seating.
	 * 
	 * @param tableNum
	 *            the table where the group was seated
	 * 
	 */

	public void groupDeparted(int tableNum) {
		diner.removeSeating(tableNum);
	}

	@Override
	public void capacityChanged(Diner diner) {
		Iterator<Group> it = queuedGroups.iterator();
		while (it.hasNext())
			if (diner.addSeating(it.next())) {
				it.remove();
				return;
			}
	}

}