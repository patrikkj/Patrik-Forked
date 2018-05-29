package dump;

public class Teeeest {
	public Teeeest() {
		System.out.println("Constructor");
	}
	{
		System.out.println("non-static block");
	}
	static {
		System.out.println("static block");
	}
	public static void main(String[] args) {
		Teeeest t = new Teeeest();
	}
}
