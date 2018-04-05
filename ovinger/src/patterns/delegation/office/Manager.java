package patterns.delegation.office;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.function.BinaryOperator;

public class Manager implements Employee {
	// Fields
	private List<Employee> employees;
	
	
	// Constructor
	public Manager(Collection<Employee> employees) {
		if (employees.isEmpty())
			throw new IllegalArgumentException("A manager cannot have no employees.");
		
		this.employees = new ArrayList<>(employees);
	}
	
	
	// Methods
	/**
	 * {@inheritDoc}<br>
	 * Delegates the calculations to the employee with the least tasks at hand.
	 */
	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		return selectEmployee().doCalculations(operation, value1, value2);
	}

	/**
	 * {@inheritDoc}<br>
	 * Delegates the printing to the employee with the least tasks at hand.
	 */
	@Override
	public void printDocument(String document) {
		selectEmployee().printDocument(document);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int getTaskCount() {
		return employees.stream().mapToInt(Employee::getTaskCount).sum();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int getResourceCount() {
		return employees.stream().mapToInt(Employee::getResourceCount).sum() + 1;
	}
	
	/**
	 * Returns the employee with the least tasks performed.
	 */
	private Employee selectEmployee() {
		return employees.stream().sorted((e1, e2) -> e2.getTaskCount() - e1.getTaskCount()).findFirst().get();
	}
}
