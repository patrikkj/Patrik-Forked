package eksamen2012;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class DayPlan {
	protected List<TimeSlot> slots = new ArrayList<>();
	
	public void addTimeSlot(TimeSlot timeSlot) {
		slots.add(timeSlot);
	}
	
	public void removeTimeSlot(TimeSlot timeSlot) {
		slots.remove(timeSlot);
	}
		
	public TimeSlot getTimeSlotAt(int hours, int minutes) {
		return getTimeSlotAt(slots, hours, minutes);
	}
	
	public boolean containsOverlapping() {
		return containsOverlapping(slots);
	}
	
	public Collection<TimeSlot> getFreeTime() {
		return getFreeTime(slots);
	}
	
	
	/// Static methods
	
	protected static TimeSlot getTimeSlotAt(Collection<TimeSlot> slots, int hours, int minutes) {
		return slots.stream()
				.sorted()
				.filter(p -> p.contains(hours, minutes))
				.findFirst()
				.orElse(null);
	}
	
	protected static TimeSlot getTimeSlotAt(Collection<TimeSlot> slots, DayTime dayTime) {
		return getTimeSlotAt(slots, dayTime.hours, dayTime.minutes);
	}
	
	protected static boolean containsOverlapping(Collection<TimeSlot> slots) {
		return slots.stream().anyMatch(t -> getTimeSlotAt(slots ,t.getStartTime()) != t);
	}
	
	protected static Collection<TimeSlot> getFreeTime(Collection<TimeSlot> slots) {
		Collections.sort((List<TimeSlot>) slots);
		Collection<TimeSlot> freeSlots = new ArrayList<>();
		
		TimeSlot lastSlot = new TimeSlot(null, 0, 0, 0);
		
		for (TimeSlot slot : slots) {
			if (!slot.overlaps(lastSlot)) {
				DayTime freeStart = lastSlot.getEndTime();
				DayTime freeEnd = slot.getStartTime();
				int duration = TimeSlot.toMinutes(freeEnd) - TimeSlot.toMinutes(freeStart);
				
				freeSlots.add(new TimeSlot("Freetime", freeStart.hours, freeStart.minutes, duration));
			}
			lastSlot = slot;
		}
		
		// Check last period
		int duration = TimeSlot.toMinutes(23, 59) - TimeSlot.toMinutes(lastSlot.getEndTime());
		if (duration != 0) {
			int startHour = lastSlot.getEndTime().hours;
			int startMin = lastSlot.getEndTime().minutes;
			freeSlots.add(new TimeSlot("Freetime", startHour, startMin, duration));
		}
		
		return freeSlots;
	}
	

	public static void main(String[] args) {
		DayPlan plan = new DayPlan();
		
		TimeSlot java1 = new TimeSlot("Javaa", 10, 15, 105);
		TimeSlot java2 = new TimeSlot("Javaa2", 11, 15, 105);
		
		plan.addTimeSlot(java1);
		plan.addTimeSlot(java2);
		
		System.out.println(plan.getFreeTime());
		
		
		
	}
}











