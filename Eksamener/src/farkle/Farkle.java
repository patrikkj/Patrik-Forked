package farkle;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Scanner;

public class Farkle extends DiceGame {
	private Scanner scanner;
	private int winScore;
	private static final int[] WIN_SCORES = new int[] {1000, 2000, 3000, 5000, 10000, 20000};
	
	public Farkle() {
		super(6, new ArrayList<>());
	}
	
	public Farkle(Collection<Player> players) {
		super(6, players);
	}

	private void gameSetup() {
		// Introduction
		System.out.println("Welcome to the game of gainzz!\n");
		
		// Player creation
		while(playerCreation());
		
		// Rule selection
		setRules();
	}
	
	private boolean playerCreation() {
		System.out.printf("Input player %s's name: ", getPlayerCount() + 1);
		String name = scanner.nextLine();
		
		if (name.isEmpty()) 
			return false;
		
		addPlayer(name);
		return true;
	}
	
	private void setRules() {
		System.out.println("\nSelect winning conditions:");
		
		// Display options
		for(int i = 0; i < WIN_SCORES.length; i++)
			System.out.printf("(%s) %s%n", i+1, WIN_SCORES[i]);
		
		// Set score
		winScore = WIN_SCORES[Integer.valueOf(scanner.nextLine())];
	}
	
//	private List<Moves> getMoves(Collection<Dice> dices){
//		
//	}
//	
//	private int getValueCount(Collection<Dice> dices, int value) {
//		
//	}
	
	private void doTurn() {
		Player player = getCurrentPlayer();
		
		System.out.printf("%ss turn!%n", player);
		
		rollAllDices();
		System.out.printf("You rolled: %s", getDices());
		
		rollAllDices();
		System.out.printf("You rolled: %s", getDices());
		
		rollAllDices();
		System.out.printf("You rolled: %s", getDices());
		
		rollAllDices();
		System.out.printf("You rolled: %s", getDices());
		
		rollAllDices();
		System.out.printf("You rolled: %s", getDices());
	}
	
	private void run() {
		scanner = new Scanner(System.in);
		
		gameSetup();
		doTurn();
		
	}
	
	public static void main(String[] args) {
		Farkle game = new Farkle();
		game.run();
		
	}
	
}
