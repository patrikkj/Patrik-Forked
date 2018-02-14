package dump;

public class Testclassss {
	private static char char1 = 'a';
	private static char char2 = 'a';
	
	private static Character char3 = new Character('a');
	private static Character char4 = new Character('a');
	
	public static void main(String[] args) {
		System.out.println(char1 == char2);
		
		System.out.println(char3 == char4);
	}
	
	
}
