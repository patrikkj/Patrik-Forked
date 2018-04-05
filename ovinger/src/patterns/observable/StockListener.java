package patterns.observable;

/**
 * Adds the ability to subscribe to stocks.
 */
public interface StockListener {
	public void stockPriceChanged(Stock stock, double oldValue, double newValue);
}
