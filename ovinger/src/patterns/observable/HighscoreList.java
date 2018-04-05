package patterns.observable;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;

public class HighscoreList {
	// Fields
	private List<Integer> highscores = new ArrayList<>();
	private HashSet<HighscoreListListener> listeners = new HashSet<>();
	private final int maxSize;
	
	
	// Constructor
	public HighscoreList(int maxSize) {
		this.maxSize = maxSize;
	}
	
	
	// Methods
	/**
	 * Returns the size of this highscore list.
	 */
	public int size() {
		return highscores.size();
	}
	
	/**
	 * Returns element at specified index.
	 */
	public int getElement(int index) {
		return highscores.get(index);
	}
	
	/**
	 * Adds result to highscores if qualified.
	 */
	public void addResult(int result) {
		// Number of elements of higher priority
		int count = (int) highscores.stream().filter(e -> e <= result).count();
		
		// Break if element does not qualify
		if (count == maxSize) return;
		
		// Add element
		highscores.add(count, result);
		
		// Trim list
		highscores = highscores.stream().limit(maxSize).collect(Collectors.toList());
		
		// Alert listeners
		listeners.forEach(e -> e.listChanged(this, count));
	}

	/**
	 * Adds listener to set of listeners if not present already.
	 */
	public void addHighscoreListListener(HighscoreListListener listener) {
		listeners.add(listener);
	}

	/**
	 * Removes listener from set of listeners if present.
	 */
	public void removeHighscoreListListener(HighscoreListListener listener) {
		listeners.remove(listener);
	}
	
}
