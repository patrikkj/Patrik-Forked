package eksamen2017_kont;

import java.util.ArrayList;
import java.util.List;

/**

 * Manages the set of ordered items for a table (set of guests).

 */
public class Table implements KitchenListener {
	private final Menu menu;
	private List<MenuItem> items = new ArrayList<>();
	private Kitchen kitchen;
	
    /**
     * Initializes a new Table with a Menu that provides the prices for the Courses and Meals
     * @param menu
     */
    public Table(Menu menu) {
    	this.menu = menu;
    }

    /**
     * Computes the total price for all the added items. Prices are provided by the Menu.
     * @return the total price
     * @throws IllegalStateException when the price of an item cannot be provided by the Menu
     */
    public double getPrice() throws IllegalStateException {
    	try {
	    	return items.stream().mapToDouble(e -> menu.getPrice(e)).sum();
    	}
    	catch (IllegalArgumentException e) {
    		throw new IllegalStateException(e);
    	}
    }
	
	/**
	 * Adds item.
	 */
	public void addMenuItem(MenuItem item) {
		items.add(item);
		
		if (kitchen == null)
			throw new IllegalStateException("Table needs to be connected to a kitchen.");
		kitchen.menuItemAdded(this, item);
	}
	
	/**
	 * Remove item.
	 */
	public void removeMenuItem(MenuItem item) {
		items.remove(item);
	}

	/**
     * Sets the Kitchen that should be notified when items are added.
     * Note that this method may be called several times with different Kitchen objects.
     * @param kitchen
     */
    public void setKitchen(Kitchen kitchen) {
    	if (this.kitchen != null)
    		kitchen.removeKitchenListener(this);
    	
    	this.kitchen = kitchen;
    	
    	if (kitchen != null)
    		kitchen.addKitchenListener(this);
    }

	
    
    @Override
	public void courseReady(Table table, Course course) {
    	
	}
}
