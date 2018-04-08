package patterns.observable2;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public abstract class ObservableList {
	// Fields
	protected final List<Object> elements = new ArrayList<>();
	private final HashSet<ObservableListListener> listeners = new HashSet<>();
	
	
	// Methods
	/**
	 * Returns the size of this list.
	 */
	public int size() {
		return elements.size();
	}

	/**
	 * Returns the elemenet at specified list index.
	 */
	public Object getElement(int index) {
		return elements.get(index);
	}
	
	/**
	 * Adds element to list at specified index.
	 */
	protected void addElement(int index, Object element) {
		if (!acceptsElement(element))
			throw new IllegalArgumentException("Element must be subclass of list element class.");
		
		elements.add(index, element);
		
		// Alert listeners
		listeners.forEach(e -> e.listChanged(this, index));
	}

	/**
	 * Appends element to the end of the list.
	 */
	protected void addElement(Object element) {
		if (!acceptsElement(element))
			throw new IllegalArgumentException("Element must be subclass of list element class.");
		
		elements.add(element);

		// Alert listeners
		listeners.forEach(e -> e.listChanged(this, size() - 1));
	}
	
	/**
	 * Removes element from list.
	 */
	protected void removeElement(Object element) {
		int changeIndex = elements.indexOf(element);
		elements.remove(element);
		
		// Alert listeners
		listeners.forEach(e -> e.listChanged(this, changeIndex));
	}

	/**
	 * Subscribes to changes made to the underlying list.
	 */
	public void addObservableListListener(ObservableListListener listener) {
		listeners.add(listener);
	}

	/**
	 * Unsubscribes to changes made to the underlying list.
	 */
	public void removeObservableListListener(ObservableListListener listener) {
		listeners.remove(listener);
	}
	
	
	
	protected abstract boolean acceptsElement(Object element);
}
