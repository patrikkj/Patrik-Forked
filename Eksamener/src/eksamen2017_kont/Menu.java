package eksamen2017_kont;

import java.util.HashMap;

/**
 * 
 * Manages the set of Courses and Meals offered and their prices.
 * 
 */

public class Menu {

	private HashMap<MenuItem, Double> items = new HashMap<>();

	/**
	 * Adds course to menu with given price.
	 */
	public void addCourse(Course course, Double price) {
		items.put(course, price);
	}

	/**
	 * Remove course to menu with given price.
	 */
	public void removeCourse(Course course) {
		items.remove(course);
	}

	/**
	 * Adds meal to menu with given price.
	 */
	public void addMeal(Meal meal, Double price) {
		items.put(meal, price);
	}

	/**
	 * Remove meal to menu with given price.
	 */
	public void removeMeal(Meal meal) {
		items.remove(meal);
	}

	/**
	 * 
	 * Gets the price for a Course.
	 * 
	 * @param course
	 * 
	 * @return the price
	 * 
	 * @throws IllegalArgumentException
	 *             if this Menu doesn't include the provided Course
	 * 
	 */
	public double getPrice(Course course) throws IllegalArgumentException {
		Double price = items.get(course);

		if (price == null)
			throw new IllegalArgumentException("Course is not provided in this menu.");

		return price;
	}
	
	/**
	 * Gets the price for a MenuItem.
	 * 
	 * @param item
	 * 
	 * @return the price
	 * 
	 * @throws IllegalArgumentException
	 *             if this Menu doesn't include the provided MenuItem
	 * 
	 */
	public double getPrice(MenuItem item) throws IllegalArgumentException {
		if (item instanceof Course)
			return getPrice((Course) item);
		if (item instanceof Meal)
			return getPrice((Meal) item);
		
		throw new IllegalArgumentException("MenuItem not supported.");
	}

	/**
	 * 
	 * Sets/changes the price of the provided Course.
	 * 
	 * @param course
	 * 
	 * @param price
	 * 
	 */
	public void updatePrice(MenuItem item, double price) {
		items.put(item, price);
	}

	/**
	 * 
	 * Gets the price for a Meal. If the registered price is 0.0,
	 * 
	 * the price is computed as the sum of the prices of the Meal's courses.
	 * 
	 * @param meal
	 * 
	 * @return
	 * 
	 * @throws IllegalArgumentException
	 *             if this Menu doesn't include the provided Meal,
	 * 
	 *             or if a price of a Course is needed, but is missing
	 * 
	 */
	public double getPrice(Meal meal) throws IllegalArgumentException {
		Double price = items.get(meal);

		if (price == null)
			throw new IllegalArgumentException("Meal is not provided in this menu, or price is missing.");

		if (price == 0.0)
			return meal.getCourses().stream().mapToDouble(e -> getPrice(e)).sum();

		return price;
	}

	/**
	 * 
	 * Sets/changes the price of the provided Meal.
	 * 
	 * @param meal
	 * 
	 * @param price
	 * 
	 */
	public void updatePrice(Meal meal, double price) {
		items.put(meal, price);
	}

}
