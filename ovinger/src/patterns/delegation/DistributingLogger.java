package patterns.delegation;

import java.util.HashMap;

/**
 * Logger for distributing logs based on severity.
 */
public class DistributingLogger implements ILogger {
	private HashMap<String, ILogger> loggerMap;
	
	
	public DistributingLogger(ILogger errorLogger, ILogger warningLogger, ILogger infoLogger) {
		loggerMap = new HashMap<>();
		loggerMap.put(ERROR, errorLogger);
		loggerMap.put(WARNING, warningLogger);
		loggerMap.put(INFO, infoLogger);
	}

	
	/**
	 * If valid, logs input message and exception.
	 */
	@Override
	public void log(String severity, String message, Exception exception) {
		// Validate severity
		if (!isValidSeverity(severity))
			throw new IllegalArgumentException("Severity " + severity + " is not valid.");
		
		// Distribute log using logger map
		loggerMap.get(severity).log(severity, message, exception);
	}
	
	/**
	 * If valid, assigns logger to specified severity.
	 */
	public void setLogger(String severity, ILogger logger) {
		// Validate severity
		if (!isValidSeverity(severity))
			throw new IllegalArgumentException("Severity " + severity + " is not valid.");
		
		// Set logger
		loggerMap.put(severity, logger);
	}
	
	/**
	 * Returns wheter a severity is valid.
	 */
	private boolean isValidSeverity(String severity) {
		return severity.equals(ERROR) ||  severity.equals(WARNING) ||severity.equals(INFO);
	}
}
