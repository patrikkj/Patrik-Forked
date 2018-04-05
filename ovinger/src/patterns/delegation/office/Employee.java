package patterns.delegation.office;

import java.util.function.BinaryOperator;

public interface Employee {
	/**
	 * Returns the result of applying the binary operator to {@code value1} and  {@code value2}.
	 */
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2);
	
	/**
	 * Prints document.
	 */
	public void printDocument(String document);
	
	/**
	 * Returns the number of tasks performed by or on behalf of this employee.
	 */
	public int getTaskCount();
	
	/**
	 * Returns the number of distributable Employees, self-inclusive.
	 */
	public int getResourceCount();
}
