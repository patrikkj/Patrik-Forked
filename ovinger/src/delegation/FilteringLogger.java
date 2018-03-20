package delegation;

import java.util.Arrays;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Logger for filtering logs based on severity.
 */
public class FilteringLogger implements ILogger {
	private Set<String> severitySet;
	private ILogger logger;
	
	
	public FilteringLogger(ILogger logger, String... severities) {
		// Validate severities
		for (String severity : severities)
			if (!isValidSeverity(severity))
				throw new IllegalArgumentException("Severity " + severity + " is not valid.");
		
		// Fill set of current severities
		severitySet = Arrays.stream(severities).collect(Collectors.toSet());
		
		this.logger = logger;
	}
	
	
	/**
	 * If valid, logs input message and exception.
	 */
	@Override
	public void log(String severity, String message, Exception exception) {
		// Validate severity
		if (!isValidSeverity(severity))
			throw new IllegalArgumentException("Severity " + severity + " is not valid.");
		
		// Break if severity shouldn't be logged
		if (!isLogging(severity)) return;
		
		// Log message using input logger
		logger.log(severity, message, exception);
	}
	
	/**
	 * Returns wheter given severity is currently being logged.
	 */
	public boolean isLogging(String severity) {
		return severitySet.contains(severity);
	}
	
	/**
	 * If severity is valid, update wheter severity should be logged.
	 */
	public void setIsLogging(String severity, boolean value) {
		// Validate severity
		if (!isValidSeverity(severity))
					throw new IllegalArgumentException("Severity " + severity + " is not valid.");

		if (value)
			severitySet.add(severity);
		else
			severitySet.remove(severity);
	}
	
	/**
	 * Returns wheter a severity is valid.
	 */
	private boolean isValidSeverity(String severity) {
		return severity.equals(ERROR) ||  severity.equals(WARNING) ||severity.equals(INFO);
	}
}
