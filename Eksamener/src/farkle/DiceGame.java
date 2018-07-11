package farkle;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public abstract class DiceGame implements Comparator<Integer> {
	// Fields
	private Map<Player, Integer> scores;
	private List<Player> players = new ArrayList<>();
	private List<Dice> dices = new ArrayList<>();
	private int currentPlayer;
	
	
	// Constructors
	protected DiceGame(int numOfDices, Collection<Player> players) {
		for (int i = 0; i < numOfDices; i++)
			dices.add(new Dice());
		this.scores = players.stream().collect(Collectors.toMap(e -> e, e -> 0));
		this.players.addAll(players);
	}
	
	
	// Methods
	protected Dice getDice(int index) {
		return dices.get(index);
	}
	
	protected Collection<Dice> getDices() {
		return dices;
	}
	
	protected int getPlayerCount() {
		return players.size();
	}
	
	protected Player getCurrentPlayer() {
		return players.get(currentPlayer);
	}
	
	protected void rollAllDices() {
		Dice.rollDices(dices);
	}
	
	protected void clearScoreboard() {
		scores.clear();
	}
	
	protected void addScore(Player player, int score) {
		scores.merge(player, score, Integer::sum);
	}
	
	protected void addPlayer(String name) {
		players.add(new Player(name));
	}
	
	protected Player nextPlayer() {
		return players.get(++currentPlayer);
	}
	
//	protected void addScore(Player player, int score) {
//		if (!scores.containsKey(player))
//			scores.put(player, score);
//		else {
//			Integer currentScore = scores.get(player);
//			currentScore += score;
//		}
//	}
	
}
