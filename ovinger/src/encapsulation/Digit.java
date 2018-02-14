package encapsulation;

public class Digit {
	//Declarations
	private int base, value;
	
	
	//Constructor
	public Digit(int base) throws IllegalArgumentException {
		if (base <= 0) throw new IllegalArgumentException("Non-positive base.");
			
		this.base = base;
		//this.value = 0;
	}
	
	
	//Getters
	public int getBase() {return base;}
	
	public int getValue() {return value;}
	
	
	//Actions
	public boolean increment() {
		if (++value == base) {
			value = 0;
			return true;
		}
		return false;
	}
	
	
	//Others
	@Override
	public String toString() {
		String alphaStr = "0123456789ABCDEFGHIJKLMNOPQRSTUWXYZ";
		return Character.toString(alphaStr.charAt(value));
	}
	
}
