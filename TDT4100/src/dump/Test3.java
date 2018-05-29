package dump;

import java.util.ArrayList;
import java.util.List;

public class Test3 {
	private List<Human> humans = new ArrayList<>();
	
	public Human getHuman(int index) {
		return humans.get(index);
	}
	
	public void addHuman(Human human) {
		humans.add(human);
	}
	
	public static void main(String[] args) {
		Test3 test = new Test3();
		test.addHuman(new Man());
		Man man = new Man();
		Human human = (Human) man;
//		Human human = test.getHuman(0);
		human.method();
	}
}
