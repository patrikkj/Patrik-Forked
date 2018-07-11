package patterns.observable;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public abstract class ObservableList<T> {
	// Fields
	protected final List<T> elements = new ArrayList<>();
	private final Set<ObservableListListener<T>> listeners = new HashSet<>();
	
	
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
	public T getElement(int index) {
		return elements.get(index);
	}
	
	/**
	 * Adds element to list at specified index.
	 */
	protected void addElement(int index, T element) {
		elements.add(index, element);
		
		// Alert listeners
		listeners.forEach(e -> e.listChanged(this, index));
	}

	/**
	 * Appends element to the end of the list.
	 */
	protected void addElement(T element) {
		elements.add(element);

		// Alert listeners
		listeners.forEach(e -> e.listChanged(this, size() - 1));
	}
	
	/**
	 * Removes element from list.
	 */
	protected void removeElement(T element) {
		int changeIndex = elements.indexOf(element);
		elements.remove(element);
		
		// Alert listeners
		listeners.forEach(e -> e.listChanged(this, changeIndex));
	}

	/**
	 * Subscribes to changes made to the underlying list.
	 */
	public void addObservableListListener(ObservableListListener<T> listener) {
		listeners.add(listener);
	}

	/**
	 * Unsubscribes to changes made to the underlying list.
	 */
	public void removeObservableListListener(ObservableListListener<T> listener) {
		listeners.remove(listener);
	}
}
