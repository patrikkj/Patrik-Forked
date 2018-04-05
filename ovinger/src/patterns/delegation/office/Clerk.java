package patterns.delegation.office;

import java.util.function.BinaryOperator;

public class Clerk implements Employee {
	// Fields
	private final Printer printer;
	private int taskCount;
	
	
	// Constructor
	public Clerk(Printer printer) {
		this.printer = printer;
	}
	
	
	// Methods
	/**
	 * {@inheritDoc}
	 */
	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		taskCount++;
		return operation.apply(value1, value2);
	}
	
	/**
	 * {@inheritDoc}
	 */
	@Override
	public void printDocument(String document) {
		taskCount++;
		printer.printDocument(document, this);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int getTaskCount() {
		return taskCount;
	}
	
	/**
	 * {@inheritDoc}
	 */
	@Override
	public int getResourceCount() {
		return 1;
	}

}
