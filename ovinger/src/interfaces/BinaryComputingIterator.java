package interfaces;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.BinaryOperator;

public class BinaryComputingIterator implements Iterator<Double> {
	// Instance variables
	private Iterator<Double> it1, it2;
	private Double default1, default2;
	private BinaryOperator<Double> operator;
	
	
	// Constructors
	public BinaryComputingIterator(Iterator<Double> it1, Iterator<Double> it2, BinaryOperator<Double> operator) {
		this.it1 = it1;
		this.it2 = it2;
		this.operator = operator;
	}
	
	public BinaryComputingIterator(Iterator<Double> it1, Iterator<Double> it2, Double default1, Double default2, BinaryOperator<Double> operator) {
		this.it1 = it1;
		this.it2 = it2;
		this.default1 = default1;
		this.default2 = default2;
		this.operator = operator;
	}
	
	// Returns true if either iterator has a next value
	@Override
	public boolean hasNext() {
		if (!it1.hasNext() && !it2.hasNext())
			return false;
		
		// If no default value is assigned, 
		// both iterators are required to have a next value
		if ((it1.hasNext() || default1 != null)  &&  (it2.hasNext() || default2 != null))
			return true;
		
		return false;
	}
	
	// Performs operation on the next iterator values
	@Override
	public Double next() throws NoSuchElementException {
		// Break if iterator is exhausted
		if (!hasNext())
			throw new NoSuchElementException("Iterator is exhausted.");
		
		// Set up values for each iterator
		Double val1 = (it1.hasNext()) ? it1.next() : default1;
		Double val2 = (it2.hasNext()) ? it2.next() : default2;
		
		// Use binary operator to generate return value
		return operator.apply(val1, val2);
	}
	
}
