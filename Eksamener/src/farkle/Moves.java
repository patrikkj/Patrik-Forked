package farkle;

public enum Moves {
	EACH_1(100),
	EACH_5(50),
	TRIPLE_1(1000),
	TRIPLE_2(200),
	TRIPLE_3(300),
	TRIPLE_4(400),
	TRIPLE_5(500),
	TRIPLE_6(600);
	
	public final int SCORE;
	
	Moves(int score){
		this.SCORE = score;
	}
}
