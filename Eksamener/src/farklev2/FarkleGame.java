package farklev2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.stream.Collectors;

import farkle.Player;

public class FarkleGame {
	
	private int diceCount = 6;
	private int winningScore = 10000;
	private List<Player> players;
	private Map<Player, Integer> scores;
	
	public FarkleGame(Player... players) {
		this.players = new ArrayList<>(Arrays.asList(players));
		this.scores = Arrays.stream(players).collect(Collectors.toMap(p -> p, p -> (int)(Math.random()*100)));
	}
	
	
	private String generateFileString() {
		String gameRules = String.format("%s,%s%n", diceCount, winningScore);
		String gameState = players.stream()
				.map(p -> String.format("%s:%s", p.getName(), scores.get(p)))
				.collect(Collectors.joining(System.lineSeparator()));
		
		return gameRules + gameState;
	}
	
	private boolean isNumber(String str) {
		for (char c : str.toCharArray())
			if (!Character.isDigit(c)) 
				return false;
		
		return true;
	}
	
	private boolean parseLineString(String line) {
		if (line.contains(",")) {
			int dotIndex = line.indexOf(',');
			String diceCount = line.substring(0, dotIndex);
			String winningScore = line.substring(dotIndex + 1);
			
			if (!diceCount.matches("[0-9]+")  ||  !winningScore.matches("[0-9]+")) 
				return false;
			
			this.diceCount = Integer.valueOf(diceCount);
			this.winningScore = Integer.valueOf(winningScore);
		}
		else if (line.contains(":")) {
			int colIndex = line.indexOf(':');
			String playerName = line.substring(0, colIndex);
			String playerScore = line.substring(colIndex + 1);
			
			if (!playerScore.matches("[0-9]+")) {
				System.out.println(line);
				return false;
			}
			
			Player player = new Player(playerName);
			players.add(player);
			scores.put(player, Integer.valueOf(playerScore));
		}
		else
			return false;
		
		return true;
	}
	
	
	
	
	public void load(InputStream stream) {
		players.clear();
		scores.clear();
		
		Scanner scanner = new Scanner(stream);
		
		while (scanner.hasNextLine())
			if (!parseLineString(scanner.nextLine())){
				System.err.println("Invalid file format.");
				break;
			}
		
		scanner.close();
	}
	
	public void load(FileInputStream stream) {
		players.clear();
		scores.clear();
		
		Scanner scanner = new Scanner(stream);
		
		while (scanner.hasNextLine())
			if (!parseLineString(scanner.nextLine())){
				System.err.println("Invalid file format.");
				break;
			}
		
		scanner.close();
	}
	
	
	
	
	
	
	public void load(String filename) {
		try (Scanner scanner = new Scanner(new File(filename))) {
			while (scanner.hasNextLine())
				if (!parseLineString(scanner.nextLine())) {
					System.err.println("Invalid file format.");
					break;
				}
		} catch (FileNotFoundException e) {
			System.err.printf("Something went wrong (%s).%n", e.getMessage());
		}
	}
	
	
	public void save(String filename) {
		try (PrintWriter writer = new PrintWriter(filename)) {
			writer.print(generateFileString());
		} catch (FileNotFoundException e) {
			System.err.printf("Something went wrong (%s).%n", e.getMessage());
		}
	}
	
	
	
	
	
	
	
	
	
	
	public void save(OutputStream stream) {
		PrintWriter writer = null;
		
		writer = new PrintWriter(stream);
		
		writer.print(generateFileString());
		writer.flush();
		writer.close();
	}
	
	public void save(FileOutputStream stream) {
		PrintWriter writer = null;
		writer = new PrintWriter(stream);
		writer.print(generateFileString());
		writer.flush();
		writer.close();
	}
	public static void main(String[] args) {
		FarkleGame game = new FarkleGame(new Player("Adrian"), new Player("Patrik"));
		game.save("MittSpill.txt");
		
		game.load("MittSpill.txt");
		
		System.out.println(game.players);
		System.out.println(game.scores);
	}
}
