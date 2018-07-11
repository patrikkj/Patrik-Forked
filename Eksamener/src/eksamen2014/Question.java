package eksamen2014;

import java.util.ArrayList;
import java.util.Collection;

public class Question {
	private final String question, answer;
	private final Collection<String> options;
	
	
	
	public Question(String question, String answer, Collection<String> options) {
		if (options.isEmpty())
			options.add(answer);
		
		if (!options.contains(answer)) 
			throw new IllegalArgumentException("Sneaky move...");
		
		this.question = question;
		this.answer = answer;
		this.options = options;
	}
	
	public Question(String question, String answer) {
		this(question, answer, new ArrayList<>());
	}
	
	public askQuestion(PrintStream )
}
