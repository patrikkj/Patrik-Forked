package eksamen2017_kont;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Manages a queue of courses to produce, based on what is requested by Tables.
 */
public class Kitchen {

	// for each Table that has requested Courses,
	// there is a Collection of the Courses that are yet to be made
	private Map<Table, Collection<Course>> courseQueue = new HashMap<Table, Collection<Course>>();
	private Set<KitchenListener> listeners = new HashSet<>();

	/**
     * Enqueues a Course in the production queue, that is part of the provided Table.
     * @param table
     * @param course
     */
    private void produceCourse(Table table, Course course) {        
        if (courseQueue.containsKey(table))
	        courseQueue.get(table).add(course);
        else
        	courseQueue.put(table, new ArrayList<>(Arrays.asList(course)));
    }

	/**
     * Internal methods that must be called when a Course of a Table has been produced.
     * Notifies registered listeners about the event.
     * @param table
     * @param course
     */
    private void courseProduced(Table table, Course course) {
    	// Remove course from production queue
        courseQueue.get(table).remove(course);
        
        // Alert listeners
        listeners.forEach(e -> e.courseReady(table, course));
    }

	/**
     * Should be called when a MenuItem is added to a Table,
     * so the corresponding Courses can be produced.
     * @param table
     * @param item
     */
    public void menuItemAdded(Table table, MenuItem item) {
    	if (item instanceof Course)
    		produceCourse(table, (Course) item);
    	
    	else if (item instanceof Meal)
    		for (Course course : (Meal) item)
    			produceCourse(table, course);
    }

	//////////
    
    public boolean addKitchenListener(KitchenListener listener) {
    	return listeners.add(listener);
    }
    
    public boolean removeKitchenListener(KitchenListener listener) {
    	return listeners.remove(listener);
    }
    
}