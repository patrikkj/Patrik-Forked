package eksamen2017_kont;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Predicate;

import junit.framework.TestCase;

public class MealTest extends TestCase {
 
    private Course c1, c2;
    private Meal meal;
    
    @Override
    protected void setUp() throws Exception {
    	init_courses();
    	init_meal();
    }
    
    
    private void init_courses() {
    	c1 = new Course("Beef", "Beef desc");
    	c2 = new Course("Stew", "Stew desc");
    }
    
    private void init_meal() {
    	meal = new Meal("BeefStew", "BeefStew desc", new Course[] {c1, c2});
    }
    
    /**
     * Tests Meal's support for foreach loop (iteration)
     */
    public void testIteration() {
    	Iterator<Course> it = meal.iterator();
    	
    	assertEquals(c1, it.next());
    	assertEquals(c2, it.next());
    	
    	try {
    		it.next();
    		fail("Iterator should be empty!");
    	}
    	catch (Exception e) {
    		assertTrue(e instanceof NoSuchElementException);
    	}
    }
     
    /**
     * Tests Meal's findCourse(Prediate) method
     */
    public void testFindCourse() {
    	// General tests
    	Predicate<Course> p1 = e -> e.getName().equals("Beef");
    	Predicate<Course> p2 = e -> e.getName().equals("Stew");
    	Predicate<Course> p3 = e -> e.getDescription().contains("Beef");
    	Predicate<Course> p4 = e -> e.getDescription().contains("Stew");
    	
    	// Test multiple matches
    	Predicate<Course> p5 = e -> e.getName().contains("e");
    	Predicate<Course> p6 = e -> e.getDescription().contains("desc");
    	
    	// General tests
    	assertEquals(c1, meal.findCourse(p1));
    	assertEquals(c2, meal.findCourse(p2));
    	assertEquals(c1, meal.findCourse(p3));
    	assertEquals(c2, meal.findCourse(p4));

    	// Test multiple matches
    	assertEquals(c1, meal.findCourse(p5));
    	assertEquals(c1, meal.findCourse(p6));
    }
}