package eksamen2014;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class Quiz {
	
	private List<Question> questions = new ArrayList<>();
	
	
	public void init(File file) throws IOException {
		BufferedReader reader = new BufferedReader(new FileReader(file));
		
		while (reader.ready()) {
			String question;
			String answer;
			List<String> options = new ArrayList<>();
			
			question = reader.readLine();
			answer = reader.readLine();

			String line = reader.readLine();
			while (!line.equals("\n")  &&  reader.ready()) {
				options.add(line);
				line = reader.readLine();
			}
			
			addQuestion(new Question(question, answer, options));
		}
	}
	
	public void addQuestion(Question question) {
		questions.add(question);
	}
	
	public void askQuestions() {
		Scanner scanner = new Scanner(System.in);
		String input = null;
		
		for (Question question : questions) {
			question.askQuestion(System.out);
			
			while (scanner.hasNextLine()) {
				input = scanner.nextLine();
				
				if (question.checkAnswer(input))
					break;
				
				System.out.println("Incorrect answer, try again.");
			}
		}
		
		scanner.close();
	}
	
	
	public static void main(String[] args) {
		Question q1 = new Question("Hva er meningen med livet?", "Ostepop");
		Question q2 = new Question("Hvor mange dager er det i en uke?", "7");
		Question q3 = new Question("Hvilket år sluttet andre verdenskrig?", "1945");
		Question q4 = new Question("Hvor gammel er jeg?", "20", Arrays.asList(new String[] {"18", "19", "20"}));
		
		Quiz quiz = new Quiz();
		
		quiz.addQuestion(q1);
		quiz.addQuestion(q2);
		quiz.addQuestion(q3);
		quiz.addQuestion(q4);
		
		quiz.askQuestions();
	}
}
