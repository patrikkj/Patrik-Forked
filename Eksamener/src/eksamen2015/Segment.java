package eksamen2015;

public class Segment {
	private final double distance, duration;
	
	public Segment(double distance, double duration) {
		if (distance < 0  ||  duration < 0)
			throw new IllegalArgumentException("Invalid input.");
		
		this.distance = distance;
		this.duration = duration;
	}
	
	public double getDistance() {
		return distance;
	}
	
	public double getDuration() {
		return duration;
	}
	
	public double getSpeed() {
		return distance / duration;
	}
}
