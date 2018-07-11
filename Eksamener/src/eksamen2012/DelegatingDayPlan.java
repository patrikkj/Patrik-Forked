package eksamen2012;

import java.util.Arrays;
import java.util.Collection;
import java.util.stream.Collectors;

public class DelegatingDayPlan extends DayPlan{
	Collection<DayPlan> dayPlans;
	
	
	public DelegatingDayPlan(DayPlan...dayPlans) {
		this.dayPlans = Arrays.asList(dayPlans);
	}
	
	
	public Collection<TimeSlot> getTotalSlots() {
		return dayPlans.stream()
				.flatMap(e -> e.slots.stream())
				.collect(Collectors.toList());
	}
	
	public TimeSlot getTimeSlotAt(int hours, int minutes) {
		return getTimeSlotAt(getTotalSlots(), hours, minutes);
	}
	
	public boolean containsOverlapping() {
		return containsOverlapping(getTotalSlots());
	}
	
	public Collection<TimeSlot> getFreeTime() {
		return getFreeTime(getTotalSlots());
	}
}
