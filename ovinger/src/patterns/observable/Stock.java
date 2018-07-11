package patterns.observable;

import java.util.HashSet;
import java.util.Set;

public class Stock {
	// Fields
	private final String ticker;
	private double price;
	private Set<StockListener> listeners = new HashSet<>();
	
	
	// Constructor
	public Stock(String ticker, double price) {
		this.ticker = ticker;
		this.price = price;
	}
	
	
	// Methods
	/**
	 * Sets the price for this stock and alerts listeners.
	 */
	public void setPrice(double price) {
		// Validate price
		if (price <= 0)
			throw new IllegalArgumentException("Stock price cannot be negative.");
		
		// Cache old price
		double oldPrice = this.price;
		
		// Set new price
		this.price = price;
		
		// Alert listeners
		listeners.forEach(e -> e.stockPriceChanged(this, oldPrice, price));
	}
	
	/**
	 * Returns the stock name.
	 */
	public String getTicker() {
		return ticker;
	}

	/**
	 * Returns the current stock price.
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * Adds listener to set of listeners if not present already.
	 */
	public void addStockListener(StockListener listener) {
		listeners.add(listener);
	}

	/**
	 * Removes listener from set of listeners if present.
	 */
	public void removeStockListener(StockListener listener) {
		listeners.remove(listener);
	}
}
