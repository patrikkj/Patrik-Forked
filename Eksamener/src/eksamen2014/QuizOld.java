package eksamen2014;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class QuizOld {
	
	private List<QuestionOld> questions = new ArrayList<>();
	
	
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
			
			addQuestion(new QuestionOld(question, answer, options));
		}
	}
	
	public void addQuestion(QuestionOld question) {
		questions.add(question);
	}
	
	public void askQuestions() {
		Scanner scanner = new Scanner(System.in);
		String input = null;
		
		for (QuestionOld question : questions) {
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
		QuestionOld q1 = new QuestionOld("Hva er meningen med livet?", "Ostepop");
		QuestionOld q2 = new QuestionOld("Hvor mange dager er det i en uke?", "7");
		QuestionOld q3 = new QuestionOld("Hvilket år sluttet andre verdenskrig?", "1945");
		QuestionOld q4 = new QuestionOld("Hvor gammel er jeg?", "20", Arrays.asList(new String[] {"18", "19", "20"}));
		
		QuizOld quiz = new QuizOld();
		
		quiz.addQuestion(q1);
		quiz.addQuestion(q2);
		quiz.addQuestion(q3);
		quiz.addQuestion(q4);
		
		quiz.askQuestions();
	}
}
