package eksamen2015;

public class Trip {
	private Path expected, actual;
	
	public Trip(Path expected) {
		this.expected = expected;
		this.actual = new Path();
	}
	
	public void registerSegment(double distance, double duration) {
		Segment expectedSeg = expected.getSegmentAt(distance, false);
		double segDistance = distance - actual.getDistance(null, null);
		double segDuration = duration - actual.getDuration();
		
		if (expectedSeg.getDistance() != segDistance)
			throw new IllegalArgumentException("Invalid segment distance!");
		
		if (distance > expected.getDistance(null, null))
			throw new IllegalArgumentException("Too many segments!");
			
		actual.addSegment(new Segment(segDistance, segDuration));
	}
	
	
}
