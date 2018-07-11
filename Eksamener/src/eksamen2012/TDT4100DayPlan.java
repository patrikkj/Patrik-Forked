package eksamen2012;

public class TDT4100DayPlan extends DayPlan {
	
	private static final TimeSlot TDT4100Lecture = new TDT4100Lecture();
	
	public TDT4100DayPlan() {
		addTimeSlot(TDT4100Lecture);
	}
	
	@Override
	public void addTimeSlot(TimeSlot timeSlot) {
		if (timeSlot.overlaps(TDT4100Lecture))
			throw new IllegalStateException("Overlaps with TDT4100 lecture!");
		
		super.addTimeSlot(timeSlot);
	}
		
	@Override
	public void removeTimeSlot(TimeSlot timeSlot) {
		if (timeSlot == TDT4100Lecture)
			throw new IllegalStateException("Cannot remove TDT4100 lecture!");
		
		super.removeTimeSlot(timeSlot);
	}
}
