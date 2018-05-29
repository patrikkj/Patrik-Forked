package eksamen2017_kont;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

/**

 * Represents a set of (pre-defined) Courses that are ordered as a whole

 */

public class Meal extends MenuItem implements Iterable<Course> {

    private final List<Course> courses;
    
  

    public Meal(String name, String description, Course[] courses) {

        super(name, description);

        

        this.courses = Arrays.asList(courses);

    }

     /*
      * Oppgave d)
      * public static List<T> asList(T[] array);
      */

    
    public List<Course> getCourses() {
    	return courses;
    }
    
    public boolean addCourse(Course course) {
    	return courses.add(course);
    }
    
    public boolean removeCourse(Course course) {
    	return courses.remove(course);
    }

	@Override
	public Iterator<Course> iterator() {
		return courses.iterator();
	}
    
	 /**
     * Finds a Course satisfying the provided Predicate.
     * @param test
     * @return the first Course satisfying the provided Predicate, otherwise null.
     */
    public Course findCourse(Predicate<Course> test) {
    	return courses.stream().filter(test).findFirst().orElse(null);
    }
}











  
