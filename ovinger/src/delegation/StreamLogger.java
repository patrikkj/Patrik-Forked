package delegation;

import java.io.OutputStream;
import java.io.PrintWriter;

/**
 * Logger for outputting logs to specified stream.
 */
public class StreamLogger implements ILogger {
	private PrintWriter stream;
	private String formatString; 

	
	public StreamLogger(OutputStream stream) {
		this.stream = new PrintWriter(stream);
		this.formatString = "%s: %s (%s)";
	}

	
	/**
	 * If valid severity, logs input message and exception.
	 */
	@Override
	public void log(String severity, String message, Exception exception) {
		if (!isValidSeverity(severity))
			throw new IllegalArgumentException("Severity " + severity + " is not valid.");
		
		stream.write(String.format(formatString, severity, message, exception));
		stream.flush();
	}
	
	/**
	 * Assigns a format for output logs. Format should be compatible with the built-in String.format method.
	 */
	public void setFormatString(String formatString) {
		this.formatString = formatString;
	}
	
	/**
	 * Returns wheter a severity is valid.
	 */
	private boolean isValidSeverity(String severity) {
		return severity.equals(ERROR) ||  severity.equals(WARNING) ||severity.equals(INFO);
	}
}
