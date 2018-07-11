package eksamen2014;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class QuestionOld {
	private final String question, answer;
	private List<String> options;
	
	
	// Constructors
	public QuestionOld(String question, String answer) {
		this.question = question;
		this.answer = answer;
	}
	
	public QuestionOld(String question, String answer, Collection<String> options) {
		this(question, answer);

		if (options.isEmpty()) return;
			
		if (!options.contains(answer))
			throw new IllegalArgumentException("Answer needs to be present in alternatives.");
			
		this.options = new ArrayList<>(options);
	}
	
	
	// Methods
	public void askQuestion(PrintStream printStream) {
		printStream.printf("Question: %s%n%n", question);
		
		if (options != null) {
			StringBuilder sb = new StringBuilder("Options: \n");
			for (int i = 0; i < options.size(); i++)
				sb.append(String.format("%s: %s%n", i + 1, options.get(i)));
			printStream.print(sb.toString());
		}
	}
	
	// FIX
	public boolean checkAnswer(String answer) {
//		for (char c : answer.toCharArray())
//			if (!Character.isDigit(c))
//				break;
//		else {
//			int option = Integer.valueOf(answer);
//			if (options.size() < option)
//				return options.get(option - 1).equals(answer);
//		}
//			
//		return answer.equals(this.answer);
		return true;
	}
}
