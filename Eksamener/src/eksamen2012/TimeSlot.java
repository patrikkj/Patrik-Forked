package eksamen2012;

public class TimeSlot implements Comparable<TimeSlot> {
	private final String description;
	private final DayTime startTime;
	private final DayTime endTime;
	private final int duration;
	
	public TimeSlot(String description, int hours, int minutes, int duration) {
		if (hours < 0  ||  hours > 23)
			throw new IllegalArgumentException();
		
		if (minutes < 0  ||  minutes > 59)
			throw new IllegalArgumentException();
		
		this.description = description;
		this.duration = duration;
		startTime = new DayTime(hours, minutes);
		endTime = new DayTime(hours + ((duration + minutes) / 60), (minutes + duration) % 60);
		
	}
	
	
	public DayTime getStartTime() {
		return startTime;
	}
	
	public DayTime getEndTime() {
		return endTime;
	}
	
	public int getDuration() {
		return duration;
	}
	
	protected static int toMinutes(int hours, int minutes) {
		return hours*60 + minutes;
	}
	
	protected static int toMinutes(DayTime dayTime) {
		return toMinutes(dayTime.hours, dayTime.minutes);
	}
	
	public boolean contains(int hours, int minutes) {
		int checkTime = toMinutes(hours, minutes);
		return ((toMinutes(startTime)) < (checkTime)
			&& (toMinutes(endTime)) >= (checkTime));
	}
	
	public boolean overlaps(TimeSlot timeSlot) {
		return (timeSlot.contains(startTime.hours, startTime.minutes))  ||
				(timeSlot.contains(endTime.hours, endTime.minutes));
	}
	
	
	
	@Override
	public String toString() {
		return String.format("%s@%s-%s", description, startTime, endTime);
	}


	@Override
	public int compareTo(TimeSlot timeSlot) {
		return toMinutes(startTime) - toMinutes(timeSlot.startTime);
	}
}


