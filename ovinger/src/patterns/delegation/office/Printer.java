package patterns.delegation.office;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Printer {
	// Fields
	private final Map<Employee, List<String>> printHistory = new HashMap<>();
	
	
	// Methods
	/**
	 * Prints document and updates print history.
	 */
	public void printDocument(String document, Employee employee) {
		System.out.println(document);
		
		// Add print to history
		if (printHistory.containsKey(employee))
			printHistory.get(employee).add(document);
		else
			printHistory.put(employee, new ArrayList<>(Arrays.asList(document)));
	}
	
	/**
	 * Returns print history for given employee.
	 */
	public List<String> getPrintHistory(Employee employee) {
		if (printHistory.containsKey(employee))
			return printHistory.get(employee);
		
		return new ArrayList<String>();
	}
}
