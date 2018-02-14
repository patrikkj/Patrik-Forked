package stateandbehavior;

public class Digit {

	int base, value;

	public Digit(int initBase) {
		base = initBase;
		value = 0;
	}

	public int getValue() {
		return value;
	}

	public int getBase() {
		return base;
	}

	public boolean increment() {
		value++;
		if (value == base) {
			value = 0;
			return true;
		}
		return false;
	}

	@Override
	public String toString() {
		String alphaStr = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		return Character.toString(alphaStr.charAt(value));

		// char newChar = alphaStr.charAt(value);
		// return Character.toString(newChar);
		//
		// return alphaStr.substring(value, value + 1);
		//
		// return "" + alphaStr.charAt(value);
	}

	public static void main(String[] args) {
		Digit myDig = new Digit(10);
		System.out.println(myDig.toString());
		// for (int i = 0 ; i != 12 ; i++) {
		// System.out.println(myDig.toString() + " " + myDig.increment());
		// }
	}
}
