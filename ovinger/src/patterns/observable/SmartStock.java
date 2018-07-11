package patterns.observable;

import java.util.HashMap;
import java.util.Map;

public class SmartStock extends Stock {
	// Difference listener, Array format: [difference, reportedPrice]
	private Map<StockListener, double[]> differenceListeners = new HashMap<>(); 
	
	// Interval listener, Array format: [min, max]
	private Map<StockListener, double[]> intervalListeners = new HashMap<>(); 
	
	
	// Constructor
	public SmartStock(String ticker, double price) {
		super(ticker, price);
	}
	
	
	// Methods
	/**
	 * Sets price from superclass, alerts conditional listeners.
	 */
	@Override
	public void setPrice(double price) {
		// Retrive old price, used by conditional listeners
		double oldPrice = getPrice();
		
		// Set price
		super.setPrice(price);
		
		// Alert conditional listeners
		alertIntervalListeners(oldPrice);
		alertDifferenceListeners();
	}
	
	/**
	 * Add interval listener.
	 */
	public void addStockListener(StockListener listener, double min, double max) {
		intervalListeners.put(listener, new double[] {min, max});
	}
	
	/**
	 * Add difference listener.
	 */
	public void addStockListener(StockListener listener, double difference) {
		differenceListeners.put(listener, new double[] {difference, getPrice()});
	}
	
	/**
	 * Alerts interval listeners
	 */
	private void alertIntervalListeners(double oldPrice) {
		for (Map.Entry<StockListener, double[]> entry : intervalListeners.entrySet()) {
			// Array format: [min, max]
			double[] values = entry.getValue();
			
			// Alert stock if condition is met
			if (getPrice() < values[0]  ||  getPrice() > values[1])
				entry.getKey().stockPriceChanged(this, oldPrice, getPrice());
		}
	}

	/**
	 * Alerts difference listeners
	 */
	private void alertDifferenceListeners() {
		for (Map.Entry<StockListener, double[]> entry : differenceListeners.entrySet()) {
			// Array format: [difference, reportedPrice]
			double[] values = entry.getValue();
			
			// Alert stock if condition is met
			if (Math.abs(values[1] - getPrice()) > values[0]) {
				entry.getKey().stockPriceChanged(this, values[1], getPrice());
				values[1] = getPrice();
			}
		}
	}
}
