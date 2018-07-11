package patterns.observable;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class StockIndex implements StockListener{
	// Fields
	private final String name;
	private Set<Stock> stocks;
	private double index;
	private Map<String, Integer> values = new HashMap<>();
	
	
	// Constructor
	public StockIndex(String name, Stock...stocks) {
		this.name = name;
		this.stocks = Arrays.stream(stocks).collect(Collectors.toSet());
		
		// Listen to stock changes
		this.stocks.forEach(e -> e.addStockListener(this));
		
		// Initial index value
		index = this.stocks.stream().mapToDouble(Stock::getPrice).sum();
	}
	
	
	// Methods
	/**
	 * Adds stock to index and updates value.
	 */
	public void addStock(Stock stock) {
		if (stocks.add(stock)) {
			stock.addStockListener(this);	
			index += stock.getPrice();
		}
	}

	/**
	 * Removes stock from index and updates value.
	 */
	public void removeStock(Stock stock) {
		if (stocks.remove(stock)) {
			stock.removeStockListener(this);
			index -= stock.getPrice();
		}
	}

	/**
	 * Returns the name of this stock index.
	 */
	public String getName() {
		return name;
	}

	/**
	 * Returns current stock index value.
	 */
	public double getIndex() {
		return index;
	}

	/**
	 * Called upon by stocks whenever there is a change to the stock price.
	 * Updates stock index value.
	 */
	@Override
	public void stockPriceChanged(Stock stock, double oldValue, double newValue) {
		index += (newValue - oldValue);
	}

	
}
