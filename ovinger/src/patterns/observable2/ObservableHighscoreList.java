package patterns.observable2;

public class ObservableHighscoreList extends ObservableList {
	// Fields
	private final int maxSize;
	
	
	public ObservableHighscoreList(int maxSize) {
		this.maxSize = maxSize;
	}

	
	/**
	 * Adds result to highscores if qualified.
	 */	
	public void addResult(int result) {
		// Number of elements of higher priority
		int count = (int) elements.stream().filter(e -> (Integer) e <= result).count();
		
		// Break if element does not qualify
		if (count == maxSize) return;
		
		// Trim list (prior to adding element, preventing listeners from updating maxSize + 1 list)
		if (size() == maxSize) removeElement(getElement(size() - 1));
			
		// Add element
		addElement(count, result);
	}
	
	
	
	@Override
	protected boolean acceptsElement(Object element) {
		return element instanceof Integer;
	}
}
