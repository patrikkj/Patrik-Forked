package eksamen2015;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Path {
	private List<Segment> segments = new ArrayList<>();
	
	
	public Path() {}
	
	public Path(Segment...segments) {
		this.segments.addAll(Arrays.asList(segments));
	}
	
	public void addSegment(Segment segment) {
		segments.add(segment);
	}
	
	public void removeSegment(Segment segment) {
		segments.remove(segment);
	}
	
	public Segment getSegment(int index) {
		return segments.get(index);
	}
	
	public double getDuration() {
		return segments.stream().mapToDouble(Segment::getDuration).sum();
	}
	
	public double getDistance(Segment fromSegment, Segment toSegment) {
		if (!segments.contains(fromSegment) || !segments.contains(toSegment))
			throw new IllegalArgumentException("Segment must be within path!");
		
		return segments.stream()
			.sequential()
			.dropWhile(s -> (fromSegment == null) ? false : !s.equals(fromSegment))
			.takeWhile(s -> (toSegment == null) ? true : !s.equals(toSegment))
			.mapToDouble(Segment::getDistance)
			.sum();
	}
	
	public Segment getSegmentAt(double distance, boolean next) {
		double currentDist = 0;
		
		for (Segment segment : segments) {
			currentDist += segment.getDistance();
			
			if (next && currentDist > distance)
				return segment;
			else if (!next && currentDist >= distance)
				return segment;
		}
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
