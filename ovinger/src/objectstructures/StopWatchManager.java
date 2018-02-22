package objectstructures;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class StopWatchManager {
	//Instance variables
	Map<String, StopWatch> map;
	
	
	//Constructor
	public StopWatchManager() {
		this.map = new HashMap<String, StopWatch>();
	}
	
	
	//Actions
	/**Insert new StopWatch into hashmap and return new entry*/
	public StopWatch newStopWatch(String name) {
		//Initialize new StopWatch object
		StopWatch stopWatch = new StopWatch();
		
		//Add entry to hashmap
		map.put(name, stopWatch);
		
		//Return new entry
		return stopWatch;
	}
	
	/**Remove specified StopWatch from hashmap if present*/
	public void removeStopWatch(String name) {
		map.remove(name);
	}
	
	/**Stream through values, ticking for each element in stream*/
	public void tick(int ticks) throws IllegalArgumentException {
		if (ticks < 0)
			throw new IllegalArgumentException("Tick cannot be negative");
		
		map.values().stream().forEach(watch -> watch.tick(ticks));
	}
	
	
	//Getters
	/**Returns object in hashmap represented by given String*/
	public StopWatch getStopWatch(String name) {
		return map.get(name);
	}
	
	/**Returns a shallow copy of hashmap values*/
	public Collection<StopWatch> getAllWatches() {
		return new ArrayList<StopWatch>(map.values());
	}
	
	/**Returns a collection containing all started watches in hashmap*/
	public Collection<StopWatch> getStartedWatches() {
		//Filters collection of watches by given predicate
		List<StopWatch> startedWatches = map.values()
											.stream()
											.filter(watch -> watch.isStarted())
											.collect(Collectors.toList());
		
		//Returns filtered collection
		return startedWatches;
	}
	
	/**Returns a collection containing all stopped watches in hashmap*/
	public Collection<StopWatch> getStoppedWatches() {
		//Filters collection of watches by given predicate
		List<StopWatch> stoppedWatches = map.values()
											.stream()
											.filter(watch -> watch.isStopped())
											.collect(Collectors.toList());
		
		//Returns filtered collection
		return stoppedWatches;
	}
	
	
	//Other
	public static void main(String[] args) {
		StopWatchManager manager = new StopWatchManager();
		System.out.println("First iteration");

		manager.newStopWatch("SW1");
		manager.newStopWatch("SW2");
		
		manager.tick(1);
		Collection<StopWatch> list = manager.getAllWatches();
		list.forEach(watch -> System.out.println(watch));
				
		System.out.println("\nSecond iteration");
	
		manager.tick(2);
		Collection<StopWatch> list2 = manager.getAllWatches();
		list2.forEach(watch -> System.out.println(watch));
	}
	
	
}
